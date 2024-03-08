using Alezy.Library.Core.Utils;

namespace TestLib;

using System;
using Scada.SDK.Enums;
using NUnit.Framework;
using System.Threading;
using System.Linq;
using TestLib.Tools;
using TestLib.Data;
using System.Diagnostics;

public class RuntimeRW
{
    internal Connector Connect { get; set; }
    internal DataBaseSql DbConInst1 { get; set; } // = new DataBaseSql("d:\\QA_Proj\\QA\\AutoTestDb\\SCADABD.GDB", "projectserver.ivtek");

    /// <summary>
    /// Dafault значение тайм аута чтения, мс
    private const int ReadTimeout = 1200;

    /// <summary>
    /// Сравнивает Boolean значения.
    /// Возвращает true, если проверяемое значение равно "1" или "0" для ожидаемого true или false соответственно.
    /// </summary>
    /// <param name="actualValue">Проверяемое значение.</param>
    /// <param name="expectedValue">Ожидаемое значение.</param>
    /// <returns>Результат сравнения.</returns>
    private static bool CheckBooleanValue(string actualValue, object expectedValue)
    {
        if (expectedValue is bool booleanExpectedValue)
        {
            ATLogger.Warn($"FakeCompare tag '{booleanExpectedValue}' = '{actualValue} is not BOOL");
            return actualValue.Equals(Convert.ToInt32(booleanExpectedValue).ToString());
        }

        return false;
    }

    /// <summary>
    /// Преобразует значения из строки в нужные типы данных. Возвращает object.
    /// Ключи:
    /// 0x - HEX представление в UInt
    /// DateNow - текущая дата в сек с 1970
    /// TimeNow - время с начала суток в мсек
    /// </summary>
    /// <param name="initialValue">Исходное значение в формате строки.</param>
    /// <returns>Преобразованное значение.</returns>
    /// <exception cref="Exception">Ошибка преобразования типа.</exception>
    internal static object ParseValue(string initialValue)
    {
        if (String.Equals(initialValue, "AnyValue", StringComparison.OrdinalIgnoreCase))
        {
            initialValue = TestData.FixedAnyValue != "_"
                ? TestData.FixedAnyValue
                : DateTimeOffset.Now.TimeOfDay.Minutes.ToString();
        }

        if (initialValue.Contains("ULINT#"))
        {
            initialValue = initialValue.Replace("ULINT#", "");
            if (UInt64.TryParse(initialValue, out var valUint))
            {
                ATLogger.Debug($"TryParse force {initialValue} to UInt64 # = {valUint}");
                return valUint;
            }

            throw new Exception($"Exception in RuntimeRW.ParseValue ParseFail '{initialValue}' to UInt64");
        }
        else if (initialValue.Contains("LINT#"))
        {
            initialValue = initialValue.Replace("LINT#", "");
            if (Int64.TryParse(initialValue, out var valInt))
            {
                ATLogger.Debug($"TryParse force {initialValue} to Int64 # = {valInt}");
                return valInt;
            }

            throw new Exception($"Exception in RuntimeRW.ParseValue ParseFail '{initialValue}' Int64");
        }
        else if (UInt64.TryParse(initialValue, out var valUint))
        {
            ATLogger.Debug($"TryParse {initialValue} to UInt64 = {valUint}");
            return valUint;
        }
        else if (Int64.TryParse(initialValue, out var valInt))
        {
            ATLogger.Debug($"TryParse {initialValue} to Int64 = {valInt}");
            return valInt;
        }
        else if (Double.TryParse(initialValue, out var valDouble))
        {
            ATLogger.Debug($"TryParse {initialValue} to Double = {valDouble}");
            return valDouble;
        }
        else if (initialValue.Contains("0x"))
        {
            var parsedValue = Convert.ToUInt64(initialValue.Replace("_", ""), 16);
            ATLogger.Debug($"TryParse {initialValue} to HEX + {parsedValue}");
            return parsedValue;
        }
        else if (DateTime.TryParse(initialValue, out var OADate_))
        {
            var parsedValue = OADate_.ToOADate();
            ATLogger.Debug($"TryParse {initialValue} to OADate + {parsedValue}");
            return parsedValue;
        }
        else if (String.Equals(initialValue, "DateTimeNow", StringComparison.OrdinalIgnoreCase))
        {
            var dt_ = new DateTime(2000, 01, 01, 0, 0, 0);
            var parsedValue = TestData.FixedDTNowRuntime != dt_
                ? TestData.FixedDTNowRuntime
                : (object)DateTime.UtcNow;

            ATLogger.Debug($"TryParse {initialValue} to DateTimeNow = {parsedValue}");
            return parsedValue;
        }
        else if (String.Equals(initialValue, "DateNow", StringComparison.OrdinalIgnoreCase))
        {
            var parsedValue = TestData.FixedDateNowRuntime != 0
                ? TestData.FixedDateNowRuntime
                : (object)DateTimeOffset.Now.ToUnixTimeSeconds();

            ATLogger.Debug($"TryParse {initialValue} to DateNow = {parsedValue}");
            return parsedValue;
        }
        else if (String.Equals(initialValue, "TimeNow", StringComparison.OrdinalIgnoreCase))
        {
            var parsedValue = TestData.FixedTimeNowRuntime != 0
                ? Math.Truncate(TestData.FixedTimeNowRuntime)
                : (object)Math.Truncate(DateTimeOffset.Now.TimeOfDay.TotalMilliseconds);

            ATLogger.Debug($"TryParse {initialValue} to TimeNow = {parsedValue}");
            return parsedValue;
        }
        else if (String.Equals(initialValue, "TRUE", StringComparison.OrdinalIgnoreCase))
        {
            var parsedValue = true;
            ATLogger.Debug($"TryParse {initialValue} to TRUE = {parsedValue}");
            return parsedValue;
        }
        else if (String.Equals(initialValue, "FALSE", StringComparison.OrdinalIgnoreCase))
        {
            var parsedValue = false;
            ATLogger.Debug($"TryParse {initialValue} to FALSE = {parsedValue}");
            return parsedValue;
        }

        return initialValue;
    }

    //TODO: move to general func

    /// <summary>
    /// Получение качетсва OnLine переменной
    /// </summary>
    /// <param name="devId"> ID Источника Данных</param>
    /// <param name="resN"> Номер ресурса</param>
    /// <param name="tagName"> Имя переменной @POU</param>
    /// <param name="readTimeoutMs"> Таймаут чтения, мс</param>
    /// <param name="plcNum"> Номер контроллера</param>
    /// <returns>Качество переменной</returns>
    public Quality GetOnlineQuality(int devId, int resN, string tagName, int readTimeoutMs = ReadTimeout, int plcNum = 0, bool extAssert = false)
    {
        ATLogger.Debug("RUN: RuntimeRW.GetOnlineQuality");
        try
        {
            var recivedQual = Quality.Bad;
            var commandErrorInfo = ErrorInfo.GeneralError;
            var i = 0;
            while (i < readTimeoutMs)
            {
                recivedQual = Quality.Bad;
                // Чтение в цикле
                commandErrorInfo = Connect.Server.ReadOnline3(devId, resN, tagName, out var recivedVals, out var recivedQuals, plcNum);
                // При отсутсвии ошибок
                if (commandErrorInfo == ErrorInfo.NoError)
                {
                    recivedQual = recivedQuals[0];
                    break;
                }

                ATLogger.Debug($"Reading {i}ms / {commandErrorInfo} / {recivedQual} ");
                Thread.Sleep(200);
                i += 200;
            }
            // По истечению TimeOut - проверяем ошибки выполнения и качество
            if (!extAssert)
            {
                Assert.That(
                    commandErrorInfo, Is.EqualTo(ErrorInfo.NoError),
                    $"GetOnlineQuality: commandErrorInfo for tag {tagName}"
                );
            }

            ATLogger.Debug($"GetOnlineQuality DONE ! {i}ms / {commandErrorInfo} / {recivedQual}");
            return recivedQual;
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in RuntimeRW.GetOnlineQuality ({devId}, {tagName}) : '{msg}'");
        }
    }

    //TODO: move to general func

    /// <summary>
    /// Чтение OnLine значений по именам
    /// </summary>
    /// <param name="devName"> Марка Источника Данных</param>
    /// <param name="resN"> Номер ресурса</param>
    /// <param name="tagName"> Имя переменной @POU</param>
    /// <param name="readTimeoutMs"> Таймаут чтения, мс</param>
    /// <param name="plcNum"> Номер контроллера</param>
    /// <returns>онлайн-значение переменной</returns>
    public object ReadOnline(string devName, int resN, string tagName, int readTimeoutMs = ReadTimeout, int plcNum = 0, bool extAssert = false)
    {
        var devId = DbConInst1.GetDeviceId(devName);
        return ReadOnline(devId, resN, tagName, readTimeoutMs, plcNum, extAssert);
    }

    /// <summary>
    /// Чтение OnLine значений по именам
    /// </summary>
    /// <param name="devId"> ID Источника Данных</param>
    /// <param name="resN"> Номер ресурса</param>
    /// <param name="tagName"> Имя переменной @POU</param>
    /// <param name="readTimeoutMs"> Таймаут чтения, мс</param>
    /// <param name="plcNum"> Номер контроллера</param>
    /// <returns>онлайн-значение переменной</returns>
    private object ReadOnline(int devId, int resN, string tagName, int readTimeoutMs = ReadTimeout, int plcNum = 0, bool extAssert = false)
    {
        ATLogger.Debug("RUN: RuntimeRW.ReadOnline");
        try
        {
            object outputValue = null;
            var recivedQuality = Quality.Bad;
            var commandErrorInfo = ErrorInfo.GeneralError;
            var i = 0;
            while (i < readTimeoutMs)
            {
                recivedQuality = Quality.Bad;
                // Чтение в цикле
                commandErrorInfo = Connect.Server.ReadOnline3(devId, resN, tagName, out var recivedVals, out var recivedQuals, plcNum);
                // При отсутсвии ошибок
                if (commandErrorInfo == ErrorInfo.NoError)
                {
                    recivedQuality = recivedQuals.First();
                    // При хорошем качестве
                    if (recivedQuality == Quality.Good)
                    {
                        // Передаем полученное значение и выходим
                        outputValue = recivedVals.First();
                        break;
                    }
                }

                ATLogger.Debug($"Reading {i}ms / {commandErrorInfo} / {recivedQuality} / {outputValue} / now = {DateTime.Now.Second}.{DateTime.Now.Millisecond}");
                Thread.Sleep(200);
                i += 200;
            }
            // По истечению TimeOut - проверяем ошибки выполнения и качество
            if (!extAssert)
            {
                Assert.That(
                    commandErrorInfo, Is.EqualTo(ErrorInfo.NoError),
                    $"ReadOnline: commandErrorInfo for tag {tagName}"
                );
                Assert.That(
                    recivedQuality, Is.EqualTo(Quality.Good),
                    $"ReadOnline: Bad Quality for tag {tagName}"
                );
                Assert.That(
                    outputValue is not null,
                    $"Output value by tagId={devId} was received"
                );
            }

            ATLogger.Debug($"Reading DONE ! {i}ms / {commandErrorInfo} / {recivedQuality} / {outputValue} / now = {DateTime.Now.Second}.{DateTime.Now.Millisecond}");
            return extAssert && outputValue is null ? 0 : outputValue;
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in RuntimeRW.ReadOnline ({devId}, {tagName}) : '{msg}'");
        }
    }

    //TODO: move to general func

    /// <summary>
    /// Запись OnLine значений по именам
    /// </summary>
    /// <param name="tagValue"> Значение для записи
    /// <param name="devName"> Марка Источника Данных
    /// <param name="resN"> Номер ресурса
    /// <param name="tagName"> Имя переменной @POU
    /// <param name="quality"> Качество переменной
    /// <returns></returns>
    public void WriteOnline(object tagValue, string devName, int resN, string tagName, Quality quality = Quality.Good)
    {
        var devId = DbConInst1.GetDeviceId(devName);
        WriteOnline(tagValue, devId, resN, tagName, quality);
    }

    /// <summary>
    /// Запись OnLine значений по именам.
    /// </summary>
    /// <param name="tagValue">Значение для записи.</param>
    /// <param name="devId">ID Источника Данных.</param>
    /// <param name="resourceNumber">Номер ресурса.</param>
    /// <param name="tagName">Имя переменной @POU</param>
    /// <param name="quality">Качество переменной</param>
    /// <exception cref="Exception"></exception>
    private void WriteOnline(object tagValue, int devId, int resourceNumber, string tagName, Quality quality = Quality.Good)
    {
        ATLogger.Debug($"RUN: RuntimeRW.WriteOnline. value = {tagValue}");
        try
        {
            var value = ParseValue(tagValue.ToString());
            var commandErrorInfo = Connect.Server.WriteOnline(devId, resourceNumber, tagName, value, quality, TestData.AtMachineId, TestData.AtUserId);
            Assert.That(
                commandErrorInfo, Is.EqualTo(ErrorInfo.NoError),
                $"Error while writing {tagValue} to {devId}.{tagName} with {commandErrorInfo}"
            );
            Thread.Sleep(500);
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in RuntimeRW.WriteOnline ({devId}, {tagName}) : '{msg}'");
        }
    }

    /// <summary>
    /// Проверка записи OnLine значений по именам
    /// </summary>
    /// <param name="stringValue"> Значение для записи
    /// <param name="devName"> Марка Источника Данных
    /// <param name="resN"> Номер ресурса
    /// <param name="tagName"> Имя переменной @POU
    /// <param name="plcNum"> Номер контроллера
    /// <returns></returns>
    public void CheckWriteOnline(string stringValue, string devName, int resN, string tagName, int plcNum = 0) =>
        CheckWriteOnline(stringValue, devName, resN, tagName, tagName, plcNum);

    /// <summary>
    /// Проверка записи OnLine значений по именам.
    /// </summary>
    /// <param name="stringValue">начение для записи.</param>
    /// <param name="devName">Марка Источника Данных.</param>
    /// <param name="resourceNumber">Номер ресурса.</param>
    /// <param name="tagWrite">Имя переменной @POU для Записи.</param>
    /// <param name="tagRead">Имя переменной @POU для Чтения.</param>
    /// <param name="plcNum">Номер контроллера.</param>
    public void CheckWriteOnline(string stringValue, string devName, int resourceNumber, string tagWrite, string tagRead, int plcNum = 0)
    {
        ATLogger.Debug($"RUN: RuntimeRW.CheckWriteOnline. '{tagWrite}'");
        var receivedValueToString = "null";
        var comparisonResult = false;

        var devId = DbConInst1.GetDeviceId(devName);
        var expectedValue = ParseValue(stringValue);
        for (var j = 0; j < 4; j++)
        {
            WriteOnline(expectedValue, devId, resourceNumber, tagWrite, Quality.Good);
            var i = 0;
            while (i < ReadTimeout)
            {
                var receivedValue = ReadOnline(devId, resourceNumber, tagRead, ReadTimeout, plcNum);
                receivedValueToString = receivedValue.ToString();
                comparisonResult = String.Equals(receivedValueToString, expectedValue.ToString(), StringComparison.OrdinalIgnoreCase);

                if (!comparisonResult)
                {
                    comparisonResult = CheckBooleanValue(receivedValueToString, expectedValue);
                }

                if (!comparisonResult)
                {
                    ATLogger.Debug($"CompareRuntimeValue no Compare {receivedValue} / {expectedValue}");
                    comparisonResult = CompareLikeDouble(tagRead, receivedValue, expectedValue);
                }

                if (comparisonResult)
                {
                    break;
                }

                i += 200;
                //! Было 200, возможно стоит вернуть
                Thread.Sleep(500);
            }

            if (comparisonResult)
            {
                break;
            }

            ATLogger.Warn($"WRITE. Retry {j + 1} Write Val <{expectedValue}> to {tagWrite} !!!!!");
            Thread.Sleep(200);
        }

        Assert.That(
            comparisonResult,
            $"CheckWriteOnline: unexpected value for tag '{tagRead}' <{receivedValueToString}>, Expect <{expectedValue}>"
        );
    }

    //TODO: move to general func

    /// <summary>
    /// Получение качетсва переменной
    /// </summary>
    /// <param name="tagId"> ID переменной / канала
    /// <param name="readTimeoutMs"> Таймаут чтения, мс
    /// <param name="extAssert"> Внешеняя проверка (откл Assert)
    /// <returns>Runtime Качество переменной</returns>
    public Quality GetTagQuality(int tagId, int readTimeoutMs = ReadTimeout, bool extAssert = false)
    {
        ATLogger.Debug($"RUN: RuntimeRW.ReadOneTag. '{tagId}'");
        try
        {
            var tagIds = new int[] { tagId };
            Quality recivedQual = 0;
            var commandErrorInfo = ErrorInfo.GeneralError;
            var count = tagIds.Length;
            var plcNum = 0;
            var i = 0;
            while (i < readTimeoutMs)
            {
                recivedQual = Quality.Bad;
                // Чтение в цикле
                commandErrorInfo = Connect.Server.GetTagValues(tagIds, out var receivedValues, out var receivedQualities, count, plcNum);
                // При отсутсвии ошибок
                if (commandErrorInfo == ErrorInfo.NoError)
                {
                    recivedQual = receivedQualities[0];
                    break;
                }

                Thread.Sleep(200);
                i += 200;
            }
            // По истечению TimeOut - проверяем ошибки выполнения и качество
            if (!extAssert)
            {
                Assert.That(
                    commandErrorInfo, Is.EqualTo(ErrorInfo.NoError),
                    $"GetTagQuality: commandErrorInfo for tag {tagId}"
                );
            }

            ATLogger.Debug($" // GetTagQuality '{tagId}' DONE ! {i}ms / {commandErrorInfo} / {recivedQual} ");
            return recivedQual;
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in RuntimeRW.GetTagQuality {tagId} : '{msg}'");
        }
    }

    /// <summary>
    /// Чтение Runtime значения одной переменной.
    /// </summary>
    /// <param name="tagId">ID переменной/канала.</param>
    /// <param name="readTimeoutMs">Таймаут чтения.</param>
    /// <param name="extAssert">Внешеняя проверка (откл Assert).</param>
    /// <returns>Runtime значение при отсутсвии ошибок.</returns>
    /// <exception cref="Exception"></exception>
    internal object ReadOneTag(int tagId, int readTimeoutMs, bool extAssert)
    {
        ATLogger.Debug($"RUN: RuntimeRW.ReadOneTag. '{tagId}'");
        try
        {
            var tagIds = new int[] { tagId };
            object outputValue = null;
            Quality recivedQuality = 0;
            var commandErrorInfo = ErrorInfo.GeneralError;
            var plcNum = 0;
            var i = 0;
            while (i < readTimeoutMs)
            {
                recivedQuality = Quality.Bad;
                // Чтение в цикле
                commandErrorInfo = Connect.Server.GetTagValues(
                    tagIds,
                    tagValues: out var receivedValues,
                    qualities: out var receivedQualities,
                    count: tagIds.Length,
                    plcNum
                );

                // При отсутсвии ошибок
                if (commandErrorInfo == ErrorInfo.NoError)
                {
                    recivedQuality = receivedQualities.First();
                    // При хорошем качестве
                    if (recivedQuality == Quality.Good)
                    {
                        // Передаем полученное значение и выходим
                        outputValue = receivedValues.First();
                        break;
                    }
                }

                ATLogger.Debug($"Reading {i}ms / {commandErrorInfo} / {recivedQuality} / {outputValue}");
                Thread.Sleep(200);
                i += 200;
            }
            // По истечению TimeOut - проверяем ошибки выполнения и качество
            if (!extAssert)
            {
                Assert.That(
                    commandErrorInfo, Is.EqualTo(ErrorInfo.NoError),
                    $"ReadOneTag: commandErrorInfo for tag {tagId}"
                );

                Assert.That(
                    recivedQuality, Is.EqualTo(Quality.Good),
                    $"ReadOneTag: Bad Quality for tag {tagId}"
                );

                Assert.That(
                    outputValue is not null,
                    $"Output value by tagId={tagId} was received"
                );
            }

            ATLogger.Debug($" // Reading '{tagId}' DONE ! {i}ms / {commandErrorInfo} / {recivedQuality} / {outputValue}");
            return extAssert && outputValue is null ? 0 : outputValue;
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in RuntimeRW.ReadOneTag {tagId} : '{msg}'");
        }
    }

    //TODO: move to general func

    /// <summary>
    /// Чтение Runtime значения одной переменной.
    /// </summary>
    /// <param name="tagId">ID переменной/канала.</param>
    /// <param name="readTimeoutMs">Таймаут чтения.</param>
    /// <returns>Runtime значение при отсутсвии ошибок.</returns>
    /// <exception cref="Exception"></exception>
    public object ReadOneTagWithAssert(int tagId, int readTimeoutMs = ReadTimeout)
    {
        ATLogger.Debug($"RUN: RuntimeRW.ReadOneTag. '{tagId}'");
        try
        {
            var tagIds = new int[] { tagId };
            object outputValue = null;
            Quality recivedQuality = 0;
            var commandErrorInfo = ErrorInfo.GeneralError;
            var plcNum = 0;
            var i = 0;
            while (i < readTimeoutMs)
            {
                recivedQuality = Quality.Bad;
                // Чтение в цикле
                commandErrorInfo = Connect.Server.GetTagValues(
                    tagIds,
                    tagValues: out var receivedValues,
                    qualities: out var receivedQualities,
                    count: tagIds.Length,
                    plcNum
                );

                // При отсутсвии ошибок
                if (commandErrorInfo == ErrorInfo.NoError)
                {
                    recivedQuality = receivedQualities.First();
                    // При хорошем качестве
                    if (recivedQuality == Quality.Good)
                    {
                        // Передаем полученное значение и выходим
                        outputValue = receivedValues.First();
                        break;
                    }
                }

                ATLogger.Debug($"Reading {i}ms / {commandErrorInfo} / {recivedQuality} / {outputValue}");
                Thread.Sleep(200);
                i += 200;
            }
            // По истечению TimeOut - проверяем ошибки выполнения и качество
            Assert.That(
                    commandErrorInfo, Is.EqualTo(ErrorInfo.NoError),
                    $"ReadOneTag: commandErrorInfo for tag {tagId}"
                );

            Assert.That(
                recivedQuality, Is.EqualTo(Quality.Good),
                $"ReadOneTag: Bad Quality for tag {tagId}"
            );

            Assert.That(
                outputValue is not null,
                $"Output value by tagId={tagId} was received"
            );

            ATLogger.Debug($" // Reading '{tagId}' DONE ! {i}ms / {commandErrorInfo} / {recivedQuality} / {outputValue}");
            return outputValue;
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in RuntimeRW.ReadOneTag {tagId} : '{msg}'");
        }
    }

    /// <summary>
    /// Сравнение полученного Runtime значения с ожидаемым.
    /// </summary>
    /// <param name="tagId">ID переменной/канала.</param>
    /// <param name="expectedValueString">Ожидаемое значение в формате строки.</param>
    /// <param name="receivedValueString">Полученние по ID переменной/канала значение в формате строки.</param>
    /// <param name="readTimeoutMs">Таймаут сравнения.</param>
    /// <param name="extAssert"></param>
    /// <returns>Результат сравнения.</returns>
    /// <exception cref="Exception"></exception>
    internal bool CompareRuntimeValue(
        int tagId,
        string expectedValueString,
        out string receivedValueString,
        int readTimeoutMs = ReadTimeout,
        bool extAssert = false
    )
    {
        ATLogger.Debug("RUN: RuntimeRW.CompareRuntimeValue");
        try
        {
            var comparisonResult = false;
            var receivedValueToString = "null";
            var expectedValue = ParseValue(expectedValueString);
            object receivedValue = null;
            var i = 0;
            while (i < readTimeoutMs)
            {
                receivedValue = ReadOneTag(tagId, readTimeoutMs, extAssert);
                receivedValueToString = receivedValue.ToString();
                comparisonResult = String.Equals(receivedValue.ToString(), expectedValue.ToString(), StringComparison.OrdinalIgnoreCase);

                if (!comparisonResult)
                {
                    comparisonResult = CheckBooleanValue(receivedValueToString, expectedValue);
                }

                if (!comparisonResult)
                {
                    ATLogger.Debug($"CompareRuntimeValue no Compare {receivedValue} / {expectedValue}");
                    comparisonResult = CompareLikeDouble(tagId, receivedValue, expectedValue);
                }

                if (comparisonResult)
                {
                    break;
                }

                Thread.Sleep(200);
                i += 200;
            }

            if (!extAssert)
            {
                Assert.That(
                    comparisonResult,
                    $"CompareRuntimeValue: Unexpected value for tag '{tagId}' {receivedValue} , expect {expectedValue}"
                );

                Assert.That(
                    receivedValue is not null,
                    $"Value was received by tagId = {tagId}"
                );
            }

            receivedValueString = receivedValue.ToString();
            return comparisonResult;
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in RuntimeRW.CompareRuntimeValue {tagId} : '{msg}'");
        }
    }

    /// <summary>
    /// Сравнение полученного Runtime-значения с ожидаемым.
    /// </summary>
    /// <param name="receivedTagId">ID сравниваемой переменной/канала.</param>
    /// <param name="expectedTagId">ID ожидаемой переменной/канала.</param>
    /// <param name="readTimeoutMs">Таймаут сравнения.</param>
    /// <returns>Результат сравнения.</returns>
    internal bool CompareRuntimeValueServer(int receivedTagId, int expectedTagId, int readTimeoutMs = ReadTimeout)
    {
        ATLogger.Debug("RUN: RuntimeRW.CompareRuntimeValueServer");

        var stopCycle = new Stopwatch();
        stopCycle.Start();

        var receivedValue = "null";
        var expectedValue = "null";
        var extAssert = false;

        while (stopCycle.Elapsed.TotalMilliseconds < readTimeoutMs)
        {
            receivedValue = ReadOneTag(receivedTagId, readTimeoutMs, extAssert).ToString();
            expectedValue = ReadOneTag(expectedTagId, readTimeoutMs, extAssert).ToString();

            if (String.Equals(receivedValue, expectedValue, StringComparison.OrdinalIgnoreCase))
            {
                return true;
            }

            Thread.Sleep(200);
        }

        Assert.Fail($"CompareRuntimeValueServer: Unexpected value for tag '{receivedTagId}' {receivedValue} , expect {expectedValue}");
        Assert.That(receivedValue is not null, $"Value was received by tagId = {receivedTagId}");

        return false;
    }

    /// <summary>
    /// Сравнение полученного значения с допустимым
    /// </summary>
    /// <param name="receivedTagId">ID сравниваемой переменной/канала</param>
    /// <param name="valueExpected">Допустимое значение переменной/канала</param>
    /// <param name="readTimeoutMs">Таймаут чтения</param>
    /// <returns>Результат сравнения.</returns>
    internal bool CompareRuntimeValueWithExpect(int receivedTagId, int valueExpected, int readTimeoutMs = ReadTimeout)
    {
        ATLogger.Debug("RUN: RuntimeRW.CompareRuntimeValueWithExpect");

        var extAssert = false;
        var receivedValue = Convert.ToInt32(ReadOneTag(receivedTagId, readTimeoutMs, extAssert));
        var comparisonResult = receivedValue <= valueExpected;

        Assert.That(comparisonResult, $"CompareRuntimeValueWithExpect: Unexpected value for tag '{receivedTagId}' {receivedValue} , expect value {valueExpected}");
        Assert.That(valueExpected.ToString() is not null, $"Value was received by tagId = {receivedTagId}");

        ATLogger.Info($"Current value error counter: {receivedValue}. The value will be reset");

        return comparisonResult;
    }

    /// <summary>
    /// Сравнение значений, приведенных в Double.
    /// </summary>
    /// <param name="tagId">ID/имя переменной/канала.</param>
    /// <param name="actualValue">Сравниваемое значение.</param>
    /// <param name="expectedValue">Ожидаемое значение.</param>
    /// <returns>Результат сравнения.</returns>
    /// <exception cref="Exception"></exception>
    private static bool CompareLikeDouble(object tagId, object actualValue, object expectedValue)
    {
        ATLogger.Debug("RUN: RuntimeRW.CompareLikeDouble");
        try
        {
            var maxMinValue = false;
            /// Исключаем double.MaxValue и double.MinValue
            /// см https://github.com/dotnet/runtime/issues/8816

            if (expectedValue.ToString().Equals("TRUE", StringComparison.OrdinalIgnoreCase) || expectedValue.ToString().Equals("FALSE", StringComparison.OrdinalIgnoreCase))
            {
                maxMinValue = true;
                // expValue = double.MaxValue.ToString("G17");
                ATLogger.Warn($"CompareLikeDouble: '{tagId}': Skipped Boolean");
            }

            if (expectedValue.ToString() == "1.79769313486232E+308" || actualValue.ToString() == "1.79769313486232E+308")
            {
                maxMinValue = true;
                // expValue = double.MaxValue.ToString("G17");
                ATLogger.Warn($"CompareLikeDouble: '{tagId}': Skipped double.MaxValue");
            }

            if (expectedValue.ToString() == "-4.94065645841247E-324" || actualValue.ToString() == "-4.94065645841247E-324")
            {
                maxMinValue = true;
                // expValue = double.MaxValue.ToString("G17");
                ATLogger.Warn($"CompareLikeDouble: '{tagId}': Skipped double.MinValue");
            }

            var comparisonResult = false;
            if (!maxMinValue && ((actualValue is double) || (actualValue.ToString().NN().Contains("E+"))))
            {
                var ds = "";
                Assert.DoesNotThrow(
                    () => Double.Parse(actualValue.ToString().NN()),
                    $"\nUnable to parse actual value [{actualValue}] to double"
                );

                Assert.DoesNotThrow(
                    () => Double.Parse(expectedValue.ToString().NN()),
                    $"\nUnable to parse expected value [{expectedValue}] to double"
                );

                var delta = Math.Abs(Double.Parse(actualValue.ToString().NN()) - Double.Parse(expectedValue.ToString().NN()));
                ATLogger.Debug($"Double Delta = {delta}");
                comparisonResult = (delta) < 0.00000001;
                if (!comparisonResult)
                {
                    delta /= (Double.Parse(expectedValue.ToString().NN()));
                    // toLog.Debug($"Double Delta = {delta} %%");
                    comparisonResult = Math.Abs(delta) < 0.0000001;
                    ds = "%%";
                }

                ATLogger.Warn($"CompareLikeDouble: '{tagId}': {actualValue} / {expectedValue}, delta = {delta} {ds}");
            }

            return comparisonResult;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in RuntimeRW.CompareLikeDouble {tagId} : '{msg}'");
        }
    }

    /// <summary>
    /// Запись Runtime значений
    /// </summary>
    /// <param name="tagIdWrite"> ID переменной для Записи
    /// <param name="tagValue"> Значение для записи
    /// <param name="quality"> Качество переменной
    /// <returns></returns>
    public void WriteTag(int tagIdWrite, object tagValue, Quality quality = Quality.Good)
    {
        ATLogger.Debug($"RUN: RuntimeRW.WriteTag. value = {tagValue}");
        try
        {
            var value = ParseValue(tagValue.ToString());
            var commandErrorInfo = Connect.Server.WriteTagValue(tagIdWrite, value, quality, TestData.AtUserId, TestData.AtMachineId);
            Assert.That(
                commandErrorInfo, Is.EqualTo(ErrorInfo.NoError),
                $"WriteTag: commandErrorInfo write {value} to {tagIdWrite}"
            );
            // Thread.Sleep(500);
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in RuntimeRW.WriteTag {tagIdWrite}, val {tagValue} : '{msg}'");
        }
    }

    /// <summary>
    /// Проверка записи Runtime значений
    /// </summary>
    /// <param name="tagIdWrite">ID переменной для Записи</param>
    /// <param name="tagIdRead">ID переменной для Чтения</param>
    /// <param name="stringValue">Значение для записи</param>
    /// <returns></returns>
    /// <exception cref="Exception"></exception>
    public bool CheckWriteValue(int tagIdWrite, int tagIdRead, string stringValue)
    {
        // toLog.Debug("RUN: RuntimeRW.CheckWriteValue");
        try
        {
            var quality = Quality.Good;
            var resCompare = false;
            var commandErrorInfo = ErrorInfo.GeneralError;

            var value = ParseValue(stringValue);
            var recValue = "null";
            ATLogger.Debug($"RUN: RuntimeRW.CheckWriteValue. '{tagIdWrite}' val = {value}");
            for (var i = 0; i < 3; i++)
            {
                // Запись runtime-значения
                commandErrorInfo = Connect.Server.WriteTagValue(
                    tagId: tagIdWrite,
                    tagValue: value,
                    quality,
                    userId: TestData.AtUserId,
                    machineId: TestData.AtMachineId
                );

                Thread.Sleep(500);
                // Чтение и сравенние с ожидаемым(записанным) значением
                resCompare = CompareRuntimeValue(tagIdRead, value.ToString(), out recValue, ReadTimeout, true);
                // При отсутсвии ошибок записи
                if (commandErrorInfo == ErrorInfo.NoError && resCompare)
                {
                    break;
                }

                ATLogger.Warn($"WRITE. Retry {i + 1} Write Val <{value}> to '{tagIdWrite}' !!!!!");
                Thread.Sleep(500);
            }

            Assert.That(
                commandErrorInfo, Is.EqualTo(ErrorInfo.NoError),
                $"CheckWriteValue: commandErrorInfo write <{value}> to '{tagIdWrite}'"
            );

            Assert.That(
                resCompare,
                $"CheckWriteValue: Unexpected value <{recValue}> for tag '{tagIdRead}' , expect {stringValue}"
            );

            return resCompare;
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in RuntimeRW.CheckWriteValue {tagIdWrite}, val {stringValue} : '{msg}'");
        }
    }

    //TODO: move to general func
    public bool CheckWriteValue(int tagId, string stringValue) =>
        CheckWriteValue(tagId, tagId, stringValue);
}
