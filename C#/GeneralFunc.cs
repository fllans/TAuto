using Alezy.Library.Core.Utils;

namespace TestLib;

using Scada.SDK.Structs;
using Scada.Interfaces.Core;
using UnsolicitedMessage = Scada.SDK.Structs.UnsolicitedMessage;

using TestLib.Tools.Checks.Events;
using TestLib.Tools.Checks.ArchiveData;
using TestLib.Archive;
using TestLib.Tools;
using TestLib.Data;

using System;
using System.Linq;
using NUnit.Framework;
using System.Threading;
using System.Globalization;
using System.Text.RegularExpressions;
using System.Collections.Generic;
using System.Diagnostics;
using TestLib.Tools.Checks;

public class GeneralFunc
{
    public DateTime StartTime { get; set; }
    public DataBaseSql DbConnect { get; set; }// = new DataBaseSql("d:\\QA_Proj\\QA\\AutoTestDb\\SCADABD.GDB", "projectserver.ivtek");
    public Connector Connect { get; set; }
    public RuntimeRW Runtime { get; set; }
    public ArchiveData ArcConnect { get; set; }
    public Events Eventer { get; set; }
    public String Controller { get; set; }
    internal static string[] ListDeviceOk { get; private set; } = Array.Empty<string>();
    public bool IsServerConnected { get; set; } = false;
    public bool IsArchiveConnected { get; set; } = false;

    public int archiveState1 = -1;
    public int archiveState2 = -1;

    private int serverState = -1;

    private static UnsolicitedMessage[] _sysEventsMessages = Array.Empty<UnsolicitedMessage>();
    private static UnsolicitedMessage[] _tmpEventsMessages = Array.Empty<UnsolicitedMessage>();

    private UnsolicitedMessage[] _eventMessages;
    private msData4[] _archieveDataList;

    public DateTime ArchiveTime1 { get; set; }
    public DateTime TimeStartTest { get; set; }
    public DateTime TimeStopTest { get; set; }
    private static msData1[] _arcBuffSrc = Array.Empty<msData1>();
    private static msData1[] _arcBuffTrg = Array.Empty<msData1>();

    public ScadaConnectArchiveTestMethods ScadaConnectArchive { private get; set; }
    private List<TagValue> _sourceArchiveValues;
    private List<TagValue> _targetArchiveValues;

    public GeneralFunc() => Runtime = new RuntimeRW();

    public void InitTestCase()
    {
        Connect.dbConInst1 = DbConnect;
        Runtime.DbConInst1 = DbConnect;
        Runtime.Connect = Connect;
        Eventer.Connect = Connect;
        Eventer.RtRW = Runtime;
    }

    /// <summary>
    /// Получет состояние Scada-сервера, по умолчанию для резервированнного
    /// Без Assert - для получения состояния в Hook's
    /// </summary>
    /// <param name="gateName">Имя шлюза в БД</param>
    /// <param name="singleMode">Для не резервированного</param>
    /// <returns></returns>
    public void GetServertState(string gateName, bool singleMode = false)
    {
        ATLogger.Debug("CASE: GetServertState");
        try
        {
            var gateOk = false;
            var gateState = new object();
            var tagDevId = DbConnect.GetDeviceParamId(gateName, "Состояние связи");

            if (IsServerConnected)
            {
                var i = 0;
                while (i < 9000)
                {
                    //toLog.Info($"GetServertState: Try get Server State...  {i}ms");
                    // Проверка SysEvents
                    gateState = Runtime.ReadOneTag(tagDevId, 2000, true);
                    gateOk = singleMode
                        ? gateState.ToString() is "245" or "250" or "247" or "251" or "53" or "202"
                        : gateState.ToString() is "247" or "251";

                    if (gateOk)
                    {
                        ATLogger.Info($"GetServertState: Get Scada.Server '{gateName}' State '{gateState}' for {i} ms");
                        break;
                    }

                    Thread.Sleep(1000);
                    i += 1000;
                }

                if (!gateOk)
                {
                    ATLogger.Fatal($"GetServertState: Scada.Server '{gateName}' is not ready, current State {gateState}");
                }

                serverState = int.Parse(gateState.ToString().NN());

            }
            else
            {
                ATLogger.Fatal($"GetServertState: Scada.Server '{gateName}' is not connected !");
            }
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.GetServertState :{msg}");
        }
    }

    /// <summary>
    /// Проверка состояние Scada-сервера, по умолчанию для резервированнного
    /// </summary>
    /// <param name="gateName">Имя шлюза в БД</param>
    /// <param name="singleMode">Для не резервированного</param>
    /// <returns></returns>
    public void CheckServerState(string gateName, bool singleMode = false)
    {
        Assert.That(IsServerConnected, Is.EqualTo(true), $"CheckServerState: Scada.Server '{gateName}' is not connected !");
        var gateOk = singleMode
            ? serverState.ToString() is "245" or "250" or "247" or "251" or "53" or "202"
            : serverState.ToString() is "247" or "251";

        Assert.That(gateOk, Is.EqualTo(true), $"CheckServerState: Scada.Server '{gateName}' is not ready, current State {serverState}");
    }

    /// <summary>
    /// Получает состояние связи с Архивом, по умолчанию для резервированнного
    /// Без Assert - для получения состояния в Hook's
    /// </summary>
    /// <param name="gateName">Имя шлюза в БД</param>
    /// <param name="singleMode">Для не резервированного</param>
    /// <returns></returns>
    public void GetArcState(string gateName, out int arcSt, bool singleMode = false)
    {
        ATLogger.Debug("CASE: GetArcState");
        arcSt = -1;
        try
        {
            var arcOk = false;
            var tagDevId = DbConnect.GetDeviceParamId(gateName, "Состояние связи с архивом");
            var arcState = new object();
            if (IsServerConnected) // && arcConnect)
            {
                var i = 0;
                while (i < 9000)
                {
                    //toLog.Info($"GetArcState: Try get Server State...  {i}ms");
                    //Если получили null, то значит будет 0.
                    arcState = Runtime.ReadOneTag(tagDevId, 2000, true) ?? 0;

                    arcOk = singleMode
                        ? arcState.ToString() is "508" or "304" or "755" or "704" or "1008"
                        : arcState.ToString() is "1008";

                    if (arcOk)
                    {
                        break;
                    }

                    Thread.Sleep(1000);
                    i += 1000;
                }

                if (!arcOk)
                {
                    ATLogger.Fatal($"GetArcState: Archive '{gateName}' is not ready, current State {arcState}");
                }

                /*Assert.That(
                    arcState is not null,
                    "Archive status value recieved"
                );*/

                arcSt = int.Parse(arcState.ToString().NN());
            }
            else
            {
                ATLogger.Error($"GetArcState: Scada.Server '{gateName}' is not connected");
            }

            if (!IsArchiveConnected)
            {
                ATLogger.Error($"GetArcState: Scada.Archive is not connected");
            }
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.GetArcState :{msg}");
        }
    }

    /// <summary>
    /// Проверка состояние связи с Архивом, по умолчанию для резервированнного
    /// </summary>
    /// <param name="gateName">Имя шлюза в БД</param>
    /// <param name="singleMode">Для не резервированного</param>
    /// <returns></returns>
    public void CheckArcState(int archiveState, string gateName, bool singleMode = false)
    {
        Assert.That(IsArchiveConnected, Is.EqualTo(true), $"CheckArcState: Scada.Archive '{gateName}' is not connected !");
        var arcOk = singleMode
            ? archiveState.ToString() is "508" or "304" or "755" or "704" or "1008"
            : archiveState.ToString() == "1008";

        Assert.That(arcOk, Is.EqualTo(true), $"CheckArcState: Archive '{gateName}' is not ready, current State {archiveState}");
    }

    /// <summary>
    /// Проверка состояния связи со всеми устройствами
    /// </summary>
    /// <returns>Результат проверки записываются в TestGlobalData.listDeviceOk </returns>
    public void CheckAllDevices(DeviceList[] devList, bool clean = false)
    {
        try
        {
            if (clean)
            {
                ListDeviceOk = Array.Empty<string>();
            }

            if (IsServerConnected)
            {
                foreach (var dev in devList)
                {
                    if (dev.chName == "")
                    {
                        ListDeviceOk = ListDeviceOk.Append(dev.plcName).ToArray();
                    }
                    else
                    {
                        var tagDevId = DbConnect.GetDeviceParamId(dev.plcName, dev.chName);
                        object recivedVal = 0;
                        recivedVal = Runtime.ReadOneTag(tagDevId, 2000, true) ?? 0;
                        var devOk = (recivedVal.ToString() == dev.statOk.ToString());

                        if (devOk)
                        {
                            ListDeviceOk = ListDeviceOk.Append(dev.plcName).ToArray();
                        }
                        else
                        {
                            ATLogger.Error($"CheckAllDevices: Device {dev.plcName} not OnLine, SysEvents = {recivedVal}");
                        }
                    }

                }
            }
            else
            {
                ATLogger.Fatal($"CheckAllDevices: Scada.Server is not connected");
            }
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.CheckAllDevices :{msg}");
        }
    }

    /// <summary>
    /// Проверка устройства в списке доступных TestGlobalData.listDeviceOk
    /// </summary>
    /// <param name="device"> Марка источника данных
    /// <returns>Результат проверки записываются в TestGlobalData.listDeviceOk </returns>
    public static void CheckScenarioDevice(string device)
    {
        ATLogger.Debug("CASE: CheckScenarioDevice");
        try
        {
            var reslt = false;
            foreach (var dev in ListDeviceOk)
            {
                reslt = (dev == device);
                if (reslt)
                {
                    break;
                }
            }

            Assert.That(reslt, Is.EqualTo(true), $"CheckScenarioDevice: Device '{device}' not Online");
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.CheckScenarioDevice :{msg}");
        }
    }

    /// <summary>
    /// Проверка SysEvents конектреного ИД
    /// </summary>
    /// <param name="devName"> Марка источника данных</param>
    /// <param name="devStat"> Ожидаемый SysEvents</param>
    /// <returns>Результат проверки записываются в TestGlobalData.listDeviceOk </returns>
    public bool CheckDeviceStat(string devName, int devStat = -999)
    {
        ATLogger.Debug($"CASE: CheckDeviceStat");
        try
        {
            object recivedVal = 0;
            foreach (var dev in TestData.FeatureDevice)
            {
                if (devName == dev.plcName)
                {
                    if (devStat == -999)
                    {
                        devStat = dev.statOk;
                    }

                    var tagDevId = DbConnect.GetDeviceParamId(dev.plcName, dev.chName);
                    recivedVal = Runtime.ReadOneTagWithAssert(tagDevId);
                    ATLogger.Debug($"CheckDeviceStat {devName}, get {recivedVal} ");
                    break;
                }
            }

            var stepOk = string.Equals(devStat.ToString(), recivedVal.ToString());
            Assert.That(stepOk, $"CheckDeviceStat : Device {devName} not OnLine, SysEvents = {recivedVal}");
            return stepOk;
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.CheckDeviceStat :{msg}");
        }
    }

    /// <summary>
    /// Проверка Active IP Scada-Клиента
    /// </summary>
    /// <param name="clientName"> Марка Клиента (ОС)</param>
    /// <param name="expIp1"> Ожидаемый active Ip</param>
    /// <param name="expIp2"> Ожидаемый active Ip</param>
    /// <returns></returns>
    public bool CheckClientActiveIp(string clientName, int expIp1, int expIp2 = -1)
    {
        ATLogger.Debug($"CASE: CheckClientActiveIp");
        try
        {
            object recivedVal = 0;
            foreach (var dev in TestData.FeatureDevice)
            {
                if (clientName == dev.plcName)
                {
                    var tagDevId = DbConnect.GetDeviceParamId(dev.plcName, "Активный IP");
                    recivedVal = Runtime.ReadOneTagWithAssert(tagDevId);
                    ATLogger.Debug($"CheckClientActiveIp {clientName}, get {recivedVal} ");
                    break;
                }
            }

            var stepOk = string.Equals(expIp1.ToString(), recivedVal.ToString())
                || string.Equals(expIp2.ToString(), recivedVal.ToString());
            Assert.That(stepOk, $"CheckClientActiveIp : Client {clientName} not OnLine, ActiceIP = {recivedVal}");
            return stepOk;
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.CheckClientActiveIp :{msg}");
        }
    }

    /// <summary>
    /// Проверка качества Runtime переменной
    /// </summary>
    /// <param name="plcName"> Марка источника данных</param>
    /// <param name="objName"> Марка Тех Объекта</param>
    /// <param name="varName"> Имя канала</param>
    /// <param name="cpuNum"> ID для кластера (2,3) остальное дает обычный ID</param>
    /// <returns></returns>
    public void CheckRuntimeQuality(string plcName, string objName, string varName, string expStrQuality = "good", int cpuNum = 1)
    {
        ATLogger.Debug($"CASE: CheckRuntimeQuality");
        try
        {
            var inversFlag = expStrQuality.Contains('!');
            _ = expStrQuality.Replace("!", "").Replace(" ", "");

            // По умолчанию проверяется хорошее качество
            var expQuality = Scada.SDK.Enums.Quality.Good;
            var recQuality = Scada.SDK.Enums.Quality.Bad;
            if (String.Equals(Scada.SDK.Enums.Quality.Bad.ToString(), expStrQuality, StringComparison.OrdinalIgnoreCase))
            {
                expQuality = Scada.SDK.Enums.Quality.Bad;
            }

            if (String.Equals(Scada.SDK.Enums.Quality.NoData.ToString(), expStrQuality, StringComparison.OrdinalIgnoreCase))
            {
                expQuality = Scada.SDK.Enums.Quality.NoData;
            }

            if (String.Equals(Scada.SDK.Enums.Quality.NoTag.ToString(), expStrQuality, StringComparison.OrdinalIgnoreCase))
            {
                expQuality = Scada.SDK.Enums.Quality.NoTag;
            }

            if (String.Equals(Scada.SDK.Enums.Quality.NotLicensed.ToString(), expStrQuality, StringComparison.OrdinalIgnoreCase))
            {
                expQuality = Scada.SDK.Enums.Quality.NotLicensed;
            }

            if (String.Equals(Scada.SDK.Enums.Quality.Timeout.ToString(), expStrQuality, StringComparison.OrdinalIgnoreCase))
            {
                expQuality = Scada.SDK.Enums.Quality.Timeout;
            }

            if (String.Equals(Scada.SDK.Enums.Quality.Good.ToString(), expStrQuality, StringComparison.OrdinalIgnoreCase))
            {
                expQuality = Scada.SDK.Enums.Quality.Good;
            }

            var tagId = 0;
            var i = 0;
            while (i < 5)
            {
                if (varName.Length == 0)
                {
                    // Если не задан varName - читаем канал Источника Данных
                    tagId = DbConnect.GetDeviceParamId(plcName, objName);
                    recQuality = Runtime.GetTagQuality(tagId);
                }
                else
                {
                    // Есть все параметры - читаем канал(ы) тех объекта
                    if (objName.Contains("ALL_TYPES"))
                    {
                        // Хак для стабильных тестов
                        foreach (var typeName in TestData.ALL_TYPES)
                        {
                            var _objName = objName.Replace("ALL_TYPES", typeName);
                            tagId = DbConnect.GetParamId(plcName, _objName, varName, cpuNum);
                            recQuality = Runtime.GetTagQuality(tagId);
                        }
                    }
                    else if (varName.Contains("ALL_TYPES"))
                    {
                        // Хак для стабильных тестов
                        foreach (var typeName in TestData.ALL_TYPES)
                        {
                            var _varName = varName.Replace("ALL_TYPES", typeName);
                            tagId = DbConnect.GetParamId(plcName, objName, _varName, cpuNum);
                            recQuality = Runtime.GetTagQuality(tagId);
                        }
                    }
                    else
                    {
                        tagId = DbConnect.GetParamId(plcName, objName, varName, cpuNum);
                        recQuality = Runtime.GetTagQuality(tagId);
                    }
                }

                if (!inversFlag)
                {
                    if (recQuality == expQuality)
                    {
                        break;
                    }
                }
                else
                {
                    if (recQuality != expQuality)
                    {
                        break;
                    }
                }

                Thread.Sleep(200);
                i++;
            }

            if (!inversFlag)
            {
                Assert.That(recQuality, Is.EqualTo(expQuality), String.Format($"CheckRuntimeQuality: Get Unexpected Quality for tag {tagId}"));
            }
            else
            {
                Assert.That(recQuality, Is.EqualTo(Scada.SDK.Enums.Quality.Bad).Or.EqualTo(Scada.SDK.Enums.Quality.Timeout), String.Format($"CheckRuntimeQuality: Get Unexpected Quality for tag {tagId}"));
            }
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.ReadRuntimeValue :{msg}");
        }
    }

    /// <summary>
    /// Чтение Runtime значения канала ТО или ИД
    /// </summary>
    /// <param name="plcName"> Марка источника данных</param>
    /// <param name="objName"> Марка Тех Объекта</param>
    /// <param name="varName"> Имя канала</param>
    /// <param name="cpuNum"> ID для кластера (2,3) остальное дает обычный ID</param>
    public void ReadRuntimeValue(string plcName, string objName, string varName, int cpuNum = 1)
    {
        ATLogger.Debug($"CASE: ReadRuntimeValue");
        try
        {
            if (varName.Length == 0)
            {
                // Если не задан varName - читаем канал Источника Данных
                var tagId = DbConnect.GetDeviceParamId(plcName, objName, cpuNum);
                _ = Runtime.ReadOneTagWithAssert(tagId);
                return;
            }

            // Есть все параметры - читаем канал(ы) тех объекта
            if (objName.Contains("ALL_TYPES"))
            {
                // Хак для стабильных тестов
                foreach (var typeName in TestData.ALL_TYPES)
                {
                    _ = ReadOneTagForParams(
                        plcName,
                        objName.Replace("ALL_TYPES", typeName),
                        varName,
                        cpuNum
                    );
                }

                return;
            }

            if (varName.Contains("ALL_TYPES"))
            {
                // Хак для стабильных тестов
                foreach (var typeName in TestData.ALL_TYPES)
                {
                    _ = ReadOneTagForParams(
                        plcName,
                        objName,
                        varName.Replace("ALL_TYPES", typeName),
                        cpuNum
                    );
                }

                return;
            }

            _ = ReadOneTagForParams(plcName, objName, varName, cpuNum);

        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.ReadRuntimeValue :{msg}");
        }
    }

    /// <summary>
    /// Чтение Runtime значения одной переменной для указанных параметров.
    /// </summary>
    /// <param name="PlcName">Имя контроллера</param>
    /// <param name="ObjectName">Имя тех объекта</param>
    /// <param name="ChanelName">Имя канала</param>
    /// <param name="idNum">ID для кластера (2,3) остальное дает обычный ID</param>
    /// <returns></returns>
    public object ReadOneTagForParams(
        string plcName,
        string objectName,
        string chanelName,
        int idNum = 1
    ) =>
        Runtime.ReadOneTagWithAssert(
            DbConnect.GetParamId(
                plcName,
                objectName,
                chanelName,
                idNum
            )
        );


    /// <summary>
    /// Проверка прочитанного значения с ожидаемым
    /// </summary>
    /// <param name="expectValue">Ожидаемое значение</param>
    /// <param name="plcName">Марка источника данных</param>
    /// <param name="objName">Марка Тех Объекта</param>
    /// <param name="varName">Имя канала</param>
    /// <param name="plcNum">ID для кластера (2,3) остальное дает обычный ID</param>
    /// <returns>Результат сравнения</returns>
    /// <exception cref="Exception"></exception>
    public bool CheckRuntimeValue(string expectValue, string plcName, string objName, string varName, Int32 plcNum = 1, int readTimeoutMs = 1200)
    {
        ATLogger.Debug($"CASE: CheckRuntimeValue");
        try
        {
            var tagId = varName.Length == 0
                ? DbConnect.GetDeviceParamId(plcName, objName, plcNum)
                : DbConnect.GetParamId(plcName, objName, varName, plcNum);

            var result = Runtime.CompareRuntimeValue(tagId, expectValue, out var recivedVal, readTimeoutMs);
            return result;
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.CheckRuntimeValue :{msg}");
        }
    }

    /// <summary>
    /// Проверка прочитанного значения с ожидаемым
    /// </summary>
    /// <param name="plcNameReceived">Марка источника сравниваемых данных</param>
    /// <param name="objNameReceived">Марка сравниваемого технологического объекта</param>
    /// <param name="varNameReceived">Имя сравниваемого канала</param>
    /// <param name="plcNumReceived">ID для кластера (2,3), остальное даёт обычный ID</param>
    /// <param name="plcNameExpected">Марка источника эталонных данных</param>
    /// <param name="objNameExpected">Марка эталонного технологического объекта</param>
    /// <param name="varNameExpected">Имя эталонного канала</param>
    /// <param name="plcNumExpected">ID для кластера (2,3), остальное даёт обычный ID</param>
    /// <returns>Результат сравнения</returns>
    /// <exception cref="Exception"></exception>
    public bool CheckRuntimeValueServer(
        string plcNameReceived,
        string objNameReceived,
        string varNameReceived,
        string plcNameExpected,
        string objNameExpected,
        string varNameExpected,
        int plcNumReceived = 1,
        int plcNumExpected = 1,
        int readTimeoutMs = 1200
    )
    {
        ATLogger.Debug($"CASE: CheckRuntimeValueServer");

        var receivedTagId = varNameReceived.Length == 0
            ? DbConnect.GetDeviceParamId(plcNameReceived, objNameReceived, plcNumReceived)
            : DbConnect.GetParamId(plcNameReceived, objNameReceived, varNameReceived, plcNumReceived);

        var expectedTagId = varNameExpected.Length == 0
            ? DbConnect.GetDeviceParamId(plcNameExpected, objNameExpected, plcNumExpected)
            : DbConnect.GetParamId(plcNameExpected, objNameExpected, varNameExpected, plcNumExpected);

        return Runtime.CompareRuntimeValueServer(receivedTagId, expectedTagId, readTimeoutMs);
    }

    /// <summary>
    /// Сравнение прочитанного значения с допустимым
    /// </summary>
    /// <param name="plcName">Марка источника сравниваемых данных</param>
    /// <param name="objName">Марка сравниваемого технологического объекта</param>
    /// <param name="varName">Имя сравниваемого канала</param>
    /// <param name="plcNum">ID для кластера (2,3), остальное даёт обычный ID</param>
    /// <param name="valueExpected">Допустимое значение переменной/канала</param>
    /// <returns>Результат сравнения</returns>
    public bool CheckRuntimeValueWithExpect(
        string plcName,
        string objName,
        string varName,
        int valueExpected,
        int plcNum = 1,
        int readTimeoutMs = 1200
    )
    {
        ATLogger.Debug($"CASE: CheckRuntimeValueWithExpect");

        var receivedTagId = varName.Length == 0
            ? DbConnect.GetDeviceParamId(plcName, objName, plcNum)
            : DbConnect.GetParamId(plcName, objName, varName, plcNum);

        return Runtime.CompareRuntimeValueWithExpect(receivedTagId, valueExpected, readTimeoutMs);
    }

    /// <summary>
    /// Получение runtime-значения переменной
    /// </summary>
    /// <param name="plcName">Марка источника сравниваемых данных</param>
    /// <param name="objName">Марка сравниваемого технологического объекта</param>
    /// <param name="varName">Имя сравниваемого канала</param>
    /// <param name="plcNum">ID для кластера (2,3), остальное даёт обычный ID</param>
    /// <returns>Runtime-значение параметра</returns>
    public string GetRuntimeValue(string plcName, string objName, string varName, int plcNum = 1)
    {
        ATLogger.Debug($"CASE: GetRuntimeValue");

        var receivedTagId = varName.Length == 0
            ? DbConnect.GetDeviceParamId(plcName, objName, plcNum)
            : DbConnect.GetParamId(plcName, objName, varName, plcNum);

        return Runtime.ReadOneTag(receivedTagId, 1200, false).ToString();
    }

    /// <summary>
    /// Сравнение количества буфферезированных значений с заданным
    /// </summary>
    /// <param name="plcName">Марка источника данных</param>
    /// <param name="objName">Марка технологического объекта</param>
    /// <param name="varName">Имя канала</param>
    /// <param name="expectValue">Ожидаемое количество значений</param>
    /// <param name="isOrigin"> Чтение в буффер источника</param>
    /// <param name="cpuNum"> ID для кластера (2,3) остальное дает обычный ID</param>
    /// <returns></returns>
    public void CheckValueBufferDELDELDEL(string plcName, string objName, string varName, bool isOrigin = true, int cpuNum = 1)
    {
        ATLogger.Debug($"CASE: GetArchiveBuffer by parаms " +
            $"plcName= {plcName} " +
            $"objName= {objName} " +
            $"ArchiveTime1= {ArchiveTime1} " +
            $"isOrigin= {isOrigin} " +
            $"cpuNum= {cpuNum}");
        try
        {
            var tagId = 0;
            if (varName.Length == 0)
            {
                // Если не задан varName - читаем канал Источника Данных
                tagId = DbConnect.GetDeviceParamId(plcName, objName);
            }
            else
            {
                // Есть все параметры - читаем канал(ы) тех объекта
                tagId = DbConnect.GetParamId(plcName, objName, varName, cpuNum);
            }

            //ATLogger.Warn(TimeStartTest.ToString());

            var arcTime = -10000;
            var timeBegin = TimeStartTest;
            var arcCnt = -1;
            if (isOrigin)
            {
                _arcBuffSrc = Array.Empty<msData1>();
                _arcBuffTrg = Array.Empty<msData1>();
                // ATLogger.Warn(timeBegin.ToString());
                arcCnt = ArcConnect.ReadArcTagMillisecond(tagId, timeBegin, arcTime, out _arcBuffSrc);
            }
            else
            {
                arcCnt = ArcConnect.ReadArcTagMillisecond(tagId, timeBegin, arcTime, out _arcBuffTrg);
            }

            ATLogger.Debug($"{objName} get {arcCnt} archive values by {arcTime}min");
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.GetArchiveBuffer :{msg}");
        }
    }

    /// <summary>
    /// Сравнение количества буфферезированных значений с заданным
    /// </summary>
    /// <param name="plcName">Марка источника данных</param>
    /// <param name="objName">Марка технологического объекта</param>
    /// <param name="varName">Имя канала</param>
    /// <param name="durationTest">Продолжительность теста в миллисекундах</param>
    /// <returns></returns>
    public void CheckValueBuffer(string plcName, string objName, string varName, int durationTest, bool isOrigin = true, int cpuNum = 1)
    {
        ATLogger.Debug($"CASE: GetArchiveBuffer by parаms: plcName = {plcName}, objName = {objName}, TimeStartTest = {TimeStartTest}, durationTest = {durationTest}");
        try
        {
            var tagId = DbConnect.GetParamId(plcName, objName, varName, cpuNum);
            var timeBegin = TimeStartTest;
            var arcCnt = -1;
            if (isOrigin)
            {
                _arcBuffSrc = Array.Empty<msData1>();
                _arcBuffTrg = Array.Empty<msData1>();
                arcCnt = ArcConnect.ReadArcTag(tagId, timeBegin, durationTest, out _arcBuffSrc);
            }
            else
            {
                arcCnt = ArcConnect.ReadArcTag(tagId, timeBegin, durationTest, out _arcBuffTrg);
            }
            ATLogger.Warn($"{objName} get {arcCnt} archive values by {durationTest}min");
            ATLogger.Debug($"{objName} get {arcCnt} archive values by {durationTest}min");
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in GetArchiveBuffer :{msg}");
        }
    }




    /// <summary>
    /// Провекра разрешения записи из внешних источников.
    /// Проверка, что переменной НЕТ в белом списке, т.е. запись запрещена
    /// </summary>
    /// <param name="plcName"> Марка источника данных
    /// <param name="objName"> Марка Тех Объекта
    /// <param name="varName"> Имя канала
    /// <returns></returns>
    public void CheckWriteList(string plcName, string objName, string varName)
    {
        ATLogger.Debug($"CASE: WriteRuntimeValue");
        try
        {
            var tagId = -99;
            tagId = DbConnect.GetParamId(plcName, objName, varName);
            // tagId1 = dbConnect.GetParamId(plcName, objName, varName, 1);
            // tagId2 = dbConnect.GetParamId(plcName, objName, varName, 2);

            var val = "AnyValue";
            var startValue = Runtime.ReadOneTagWithAssert(tagId).ToString();
            TestData.FixedTimeNowRuntime = DateTimeOffset.Now.TimeOfDay.TotalMilliseconds;
            TestData.FixedDateNowRuntime = DateTimeOffset.Now.ToUnixTimeSeconds();
            TestData.FixedDTNowRuntime = DateTime.UtcNow;
            TestData.FixedAnyValue = DateTimeOffset.Now.TimeOfDay.Minutes.ToString();
            Runtime.WriteTag(tagId, val);
            Thread.Sleep(500);
            _ = Runtime.CompareRuntimeValue(tagId, startValue, out var tmp1);
            TestData.FixedTimeNowRuntime = 0;
            TestData.FixedDateNowRuntime = 0;
            TestData.FixedDTNowRuntime = new DateTime(2000, 01, 01, 0, 0, 0);
            TestData.FixedAnyValue = "_";
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.WriteRuntimeValue :{msg}");
        }
    }

    /// <summary>
    /// Проверка качества Online переменной
    /// </summary>
    /// <param name="values"> Строка данных для записи Runtime значений</param>
    /// <param name="plcName"> Марка источника данных</param>
    /// <param name="resN"> Номер ресурса</param>
    /// <param name="pouName"> Название POU</param>
    /// <param name="varName"> Имя переменной для записи</param>
    /// <returns></returns>
    public void CheckOnlineQuality(string plcName, int resN, string pouName, string varName, string expStrQuality = "good")
    {
        ATLogger.Debug($"CASE: WriteOnlineValue");
        try
        {
            // По умолчанию проверяется хорошее качество
            var expQuality = Scada.SDK.Enums.Quality.Good;
            var recQuality = Scada.SDK.Enums.Quality.Bad;
            if (String.Equals(Scada.SDK.Enums.Quality.Bad.ToString(), expStrQuality, StringComparison.OrdinalIgnoreCase))
            {
                expQuality = Scada.SDK.Enums.Quality.Bad;
            }

            if (String.Equals(Scada.SDK.Enums.Quality.NoData.ToString(), expStrQuality, StringComparison.OrdinalIgnoreCase))
            {
                expQuality = Scada.SDK.Enums.Quality.NoData;
            }

            if (String.Equals(Scada.SDK.Enums.Quality.NoTag.ToString(), expStrQuality, StringComparison.OrdinalIgnoreCase))
            {
                expQuality = Scada.SDK.Enums.Quality.NoTag;
            }

            if (String.Equals(Scada.SDK.Enums.Quality.NotLicensed.ToString(), expStrQuality, StringComparison.OrdinalIgnoreCase))
            {
                expQuality = Scada.SDK.Enums.Quality.NotLicensed;
            }

            if (String.Equals(Scada.SDK.Enums.Quality.Timeout.ToString(), expStrQuality, StringComparison.OrdinalIgnoreCase))
            {
                expQuality = Scada.SDK.Enums.Quality.Timeout;
            }

            if (String.Equals(Scada.SDK.Enums.Quality.Good.ToString(), expStrQuality, StringComparison.OrdinalIgnoreCase))
            {
                expQuality = Scada.SDK.Enums.Quality.Good;
            }

            if (pouName.Length > 1)
            {
                // Если указан POU - работаем с локальными переменными LOCAL_%varName%_R/W
                varName = "LOCAL_" + varName + "_R@" + pouName.ToUpper();
            }

            var plcId = DbConnect.GetDeviceId(plcName);
            var i = 0;
            while (i < 5)
            {
                recQuality = Runtime.GetOnlineQuality(plcId, resN, varName, 1200);
                if (recQuality == expQuality)
                {
                    break;
                }

                Thread.Sleep(200);
                i++;
            }

            Assert.That(recQuality, Is.EqualTo(expQuality), String.Format($"CheckOnlineQuality: Get Unexpected Quality for var {plcName}.@({pouName}).{varName}"));
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.CheckOnlineQuality :{msg}");
        }
    }

    /// <summary>
    /// Сравнение полученных архивных данных с данными из буфера
    /// </summary>
    /// <param name="plcName"> Марка источника данных</param>
    /// <param name="objName"> Марка Тех Объекта</param>
    /// <param name="varName"> Имя канала</param>
    /// <param name="cpuNum"> ID для кластера (2,3) остальное дает обычный ID</param>
    /// <returns></returns>
    public void CompareArchiveBuffer(string plcName, string objName, string varName, int cpuNum = 1)
    {
        ATLogger.Debug($"CASE: CompareArchiveBuffer");
        try
        {
            GetArchiveBuffer(plcName, objName, varName, false);
            Assert.That(_arcBuffTrg.Length, Is.EqualTo(_arcBuffSrc.Length), $"Buffer Length NotEqual");
            ATLogger.Debug($"Copmare {_arcBuffSrc.Length} arc vals from {ArchiveTime1}");
            for (var i = 0; i < _arcBuffSrc.Length; i++)
            {
                if (!(_arcBuffSrc[i].ufTime.Equals(_arcBuffTrg[i].ufTime)))
                {
                    //arcBuffSrc[i].ufTime.ToString("O");
                    ATLogger.Warn($"Different TimeStamp in the buffer[{i}] \nsrc: {_arcBuffSrc[i].ufTime:O} \ntrg: {_arcBuffTrg[i].ufTime:O}");
                    ATLogger.Warn("Copmare Within 1ms");
                    Assert.That(
                        _arcBuffSrc[i].ufTime, Is.EqualTo(_arcBuffTrg[i].ufTime).Within(TimeSpan.FromMilliseconds(500)),
                        $"Different TimeStamp in the buffer[{i}]"
                    );
                }

                //Assert.AreEqual(arcBuffSrc[i].ufTime, arcBuffTrg[i].ufTime, $"Different TimeStamp in the buffer[{i}]");
                Assert.That(_arcBuffTrg[i].dValue, Is.EqualTo(_arcBuffSrc[i].dValue), $"Different Value in the buffer[{i}]");
            }
        }

        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.CompareArchiveBuffer :{msg}");
        }
    }

    /// <summary>
    /// Получение Архивных данных в буффер для сравения
    /// </summary>
    /// <param name="plcName"> Марка источника данных</param>
    /// <param name="objName"> Марка Тех Объекта</param>
    /// <param name="varName"> Имя канала</param>
    /// <param name="isOrigin"> Чтение в буффер источника</param>
    /// <param name="cpuNum"> ID для кластера (2,3) остальное дает обычный ID</param>
    /// <returns></returns>
    public void GetArchiveBuffer(string plcName, string objName, string varName, bool isOrigin = true, int cpuNum = 1)
    {
        ATLogger.Debug($"CASE: GetArchiveBuffer by parаms " +
            $"plcName= {plcName} " +
            $"objName= {objName} " +
            $"ArchiveTime1= {ArchiveTime1} " +
            $"isOrigin= {isOrigin} " +
            $"cpuNum= {cpuNum}");
        try
        {
            var tagId = 0;
            if (varName.Length == 0)
            {
                // Если не задан varName - читаем канал Источника Данных
                tagId = DbConnect.GetDeviceParamId(plcName, objName);
            }
            else
            {
                // Есть все параметры - читаем канал(ы) тех объекта
                tagId = DbConnect.GetParamId(plcName, objName, varName, cpuNum);
            }

            var arcTime = 15;
            var timeBegin = ArchiveTime1;
            var arcCnt = -1;
            if (isOrigin)
            {
                _arcBuffSrc = Array.Empty<msData1>();
                _arcBuffTrg = Array.Empty<msData1>();
                arcCnt = ArcConnect.ReadArcTag(tagId, timeBegin, arcTime, out _arcBuffSrc);
            }
            else
            {
                arcCnt = ArcConnect.ReadArcTag(tagId, timeBegin, arcTime, out _arcBuffTrg);
            }

            ATLogger.Debug($"{objName} get {arcCnt} archive values by {arcTime}min");
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.GetArchiveBuffer :{msg}");
        }
    }

    /// <summary>
    /// Принудительный сброс на 0 переменных, связаныых с внешними
    /// </summary>
    /// <returns></returns>
    public void InitExVar()
    {
        var values = "TRUE; FALSE";
        var separator = new string[] { "; " };
        var listValues = values.Split(separator, StringSplitOptions.RemoveEmptyEntries);
        string[] varNames = { "_RES1_RST_CNT", "_RES1_AUTO_MODE" };
        foreach (var val in listValues)
        {
            foreach (var varName in varNames)
            {
                Runtime.WriteOnline(val, "ICORE2", 1, varName);
                var i = 0;
                while (i < 10)
                {
                    var recVal = Runtime.ReadOnline("ICORE2", 1, varName, 1200, 0, true);
                    if (String.Equals(recVal.ToString(), val.ToString(), StringComparison.OrdinalIgnoreCase))
                    {
                        break;
                    }

                    Thread.Sleep(200);
                    i++;
                }
            }
        }
    }

    /// <summary>
    /// Переключение активности на Сервер #
    /// </summary>
    /// <param name="gateName">Марка шлюза в БД</param>
    /// <param name="activeNum">Номер шлюза на который переключить активность</param>
    /// <returns></returns>
    public void ChangeActivityToServer(string gateName, int activeNum)
    {
        ATLogger.Debug($"CASE: ChangeActivityToServer");
        try
        {
            var tagId = DbConnect.GetDeviceParamId(gateName, "ACTIVESERVER");
            Runtime.WriteTag(tagId, activeNum);
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            Assert.Fail($"Exception in TestCaseFunc.ChangeActivityToServer :{msg}");
        }
    }

    /// <summary>
    /// Внутренняя диагностика активного шлюза
    /// </summary>
    /// <param name="activeNum">Номер шлюза, который должен быть активным</param>
    /// <returns></returns>
    public void CheckActiveServerNumber(int activeNum)
    {
        ATLogger.Debug($"CASE: CheckActiveServerNumber");
        try
        {
            var activeServerIp = false;
            _ = Connect.Server.Ping();
            var ActiveServerNumb = Connect.Server.ActiveServerNumber;
            switch (activeNum)
            {
                case 1:
                    activeServerIp = ActiveServerNumb is 1 or 2;
                    break;
                case 2:
                    activeServerIp = ActiveServerNumb is 3 or 4;
                    break;
                default:
                    break;
            }

            Assert.That(activeServerIp, Is.EqualTo(true), $"CheckActiveServerNumber : Get ActiveServerNumber = {ActiveServerNumb}, exp = {activeNum}");
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.CheckActiveServerNumber :{msg}");
        }
    }

    /// <summary>
    /// Проверка значения канала ACTIVESERVER
    /// </summary>
    /// <param name="gateName">Марка шлюза в БД</param>
    /// <param name="activeNum">Номер шлюза, который должен быть активным</param>
    /// <returns></returns>
    public void CheсkActiveServerChanal(string gateName, int activeNum)
    {
        ATLogger.Debug($"CASE: CheсkActiveServerChanal");
        try
        {
            var tagId = DbConnect.GetDeviceParamId(gateName, "ACTIVESERVER");
            var getActSrv = Runtime.ReadOneTagWithAssert(tagId);
            Assert.That(activeNum, Is.EqualTo(getActSrv), $"CheсkActiveServerChanal : Get ACTIVESERVER = {getActSrv}, exp = {activeNum}.");
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.CheсkActiveServerChanal :{msg}");
        }
    }

    /// <summary>
    /// Получение событий SysEvents в буфер
    /// </summary>
    /// <param name="evGroupName"> Имя группы событий
    /// <returns></returns>
    public void GetSysEvents(string evGroupName, bool clear = false)
    {
        var evGroupId = DbConnect.GetEventsGroupId(evGroupName);
        _sysEventsMessages = _sysEventsMessages.Concat(Eventer.GetEvents(evGroupId, 20)).ToArray();
        if (clear)
        {
            Eventer.ClearEventId(evGroupId);
        }
    }

    /// <summary>
    /// Получение событий Группы в буфер
    /// </summary>
    /// <param name="evGroupName"> Имя группы событий
    /// <returns></returns>
    public UnsolicitedMessage[] GetTmpEventsByGroup(string evGroupName, bool clear = false)
    {
        if (clear)
        {
            _tmpEventsMessages = Array.Empty<UnsolicitedMessage>();
        }

        var evGroupId = DbConnect.GetEventsGroupId(evGroupName);
        _tmpEventsMessages = _tmpEventsMessages.Concat(Eventer.GetEvents(evGroupId, 20)).ToArray();
        ATLogger.Info($"Total Events in Temp = {_tmpEventsMessages.Length}");
        return _tmpEventsMessages;
    }

    /// <summary>
    /// Провекра Событий SysEvents
    /// </summary>
    /// <param name="devName"> Марка источника данных</param>
    /// <param name="devStat"> Ожидаемый SysEvents</param>
    /// <returns></returns>
    public void CheckDeviceSysEvents(string devName, int devStat = -999)
    {
        ATLogger.Debug($"CASE: CheckDeviceSysEvents");
        try
        {
            var MsgValue = 0;
            var MsgTime = new DateTime { };
            foreach (var dev in TestData.FeatureDevice)
            {
                if (devName == dev.plcName)
                {
                    if (devStat == -999)
                    {
                        devStat = dev.statOk;
                    }

                    var tagDevId = DbConnect.GetDeviceParamId(dev.plcName, dev.chName);
                    var LastMsg = Events.GetLastParamEvent(_tmpEventsMessages, tagDevId);
                    MsgValue = Convert.ToInt32(LastMsg.Value) >= 10000
                        ? Convert.ToInt32(LastMsg.Value) - 10000
                        : Convert.ToInt32(LastMsg.Value);

                    MsgTime = LastMsg.Time;
                    break;
                }
            }

            Assert.That(MsgValue, Is.EqualTo(devStat), $"CheckDeviceSysEvents : Get event Value '{MsgValue}' : '{MsgTime.ToLocalTime():yyyy-MM-dd HH:mm:ss.fff  (UTC zzz)}' for {devName}");
            Assert.That(MsgTime, Is.GreaterThan(StartTime.AddMinutes(-20)), $"CheckDeviceSysEvents : Get event Time {MsgTime.ToLocalTime():yyyy-MM-dd HH:mm:ss.fff  (UTC zzz)} for {devName}");
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.CheckDeviceSysEvents :{msg}");
        }
    }

    /// <summary>
    /// Провекра Событий SysEvents
    /// </summary>
    /// <param name="devName"> Марка источника данных</param>
    /// <param name="devStat"> Ожидаемый SysEvents</param>
    /// <returns></returns>
    public void CheckTmpParamEvents(string plcName, string objName, string varName, int expValue)
    {
        ATLogger.Debug($"CASE: CheckTmpParamEvents");
        try
        {
            var tagId = 0;
            if (varName.Length == 0)
            {
                // Если не задан varName - читаем канал Источника Данных
                tagId = DbConnect.GetDeviceParamId(plcName, objName);
            }
            else
            {
                tagId = DbConnect.GetParamId(plcName, objName, varName);
            }

            var res = false;
            foreach (var singleMsg in Events.FilterEvents(_tmpEventsMessages, tagId, StartTime.AddMinutes(-20)))
            {
                var singleMsgValue = -9999;
                if (singleMsg.Value is object[] objectArray)
                {
                    singleMsgValue = Convert.ToInt32(objectArray[0]);
                }
                else if (singleMsg.Value is not null)
                {
                    singleMsgValue = Convert.ToInt32(singleMsg.Value);
                }

                if (singleMsgValue == expValue)
                {
                    res = true;
                    //toLog.Info($" CheckTmpParamEvents : Check OK : {singleMsg.ParamId} = {singleMsg.Value} / {singleMsg.Time} / {singleMsg.Quality} / {singleMsg.GroupId}");
                    break;
                }
            }

            Assert.That(res, $"CheckTmpParamEvents : Not found message value {expValue} by paramId {tagId} from {StartTime.ToLocalTime():yyyy-MM-dd HH:mm:ss.fff  (UTC zzz)}");

        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.CheckParamEvents :{msg}");
        }
    }

    /// <summary>
    /// Проверка количества полученных архивных данных
    /// </summary>
    /// <param name="tagId">Id параметра</param>
    /// <param name="byMinutes">Кол-во минут</param>
    /// <param name="expCount">ожидаемое кол-во</param>
    /// <param name="delta">доверительный диапазон</param>
    /// <returns>
    /// Количество полученных архивных значений
    /// </returns>
    public int ChekArcCount(int tagId, DateTime timeBegin, int byMinutes, int expCount, int delta = 0)
    {
        var getArcCount = ArcConnect.ReadArcTag(tagId, timeBegin, byMinutes, out var msData1ss);
        Assert.That(getArcCount, Is.GreaterThanOrEqualTo(expCount - delta), $"Получено меньше значений из Архива за {byMinutes}мин по TagId {tagId}");
        Assert.That(getArcCount, Is.LessThanOrEqualTo(expCount + delta), $"Получено больше значений из Архива за {byMinutes}мин по TagId {tagId}");
        return getArcCount;
    }

    public void ChekSampleCount()
    {

    }

    public void ChekSampleValues()
    { }

    public void ChekSampleTimeStamp()
    { }

    /// <summary>
    /// Проверяет количество и значения отфильтрованных событий, а так же дату последнего события.
    /// </summary>
    /// <param name="unfilteredUnsolicitedMessages">Нефильтрованные события.</param>
    /// <param name="tagId">Id параметра Tex объекта.</param>
    /// <param name="expectedType">Ожидаемый тип событий.</param>
    public void CheckEventsByParameters(
        String objectName,
        Int32 cpuNum = 1
    )
    {
        ATLogger.Debug($"Parse from {_eventMessages.Length} Events");
        var tagId = DbConnect.GetParamId(Controller, objectName, "Значение", cpuNum);
        //Берем интервал: текущее время минус определенное количество минут
        //По идее получаться должно событие в минуту, следовательно значения должны быть равны
        //секунды вычитаются для попадания в определенный лаг генерации. В противном случае можно недосчитаться одного события.
        var beginTime = Eventer.EventPickTime.AddMinutes(-15).AddSeconds(-35);
        //TODO: replace with linq
        Assert.That(_eventMessages, Is.Not.Empty, "Events list");
        var filteredEvents = Events.FilterEvents(_eventMessages, tagId, beginTime);
        Assert.That(filteredEvents, Is.Not.Empty, $"Events list, filtered by tag = {tagId} and begin time {beginTime}");
        #region events check
        var lastMessageTime = filteredEvents.MaxBy(e => e.Time)
            .Time;

        LastEventTimeCheck.SetUp()
            .SetTimeLimit(Eventer.EventPickTime.AddSeconds(-65))
            .SetMessageTime(lastMessageTime)
            .Execute();

        EventsCountCheck.SetUp()
            .SetExpectedCount(15).UpTo(16)
            .SetActualCount(filteredEvents.Count())
            .Execute();

        ValuesCheck.SetUp()
            .SetExpectedType(objectName)
            .SetCheckedValues(filteredEvents)
            .Execute();
        #endregion
    }

    /// <summary>
    /// Создает событие для определенных параметров.
    /// </summary>
    /// <param name="controllerName">Контроллер, на котором будет создано событие.</param>
    /// <param name="objectName">Имя объекта.</param>
    /// <param name="variableName">Имя переменной.</param>
    public void GenerateEvent(
        String controllerName,
        String objectName,
        String variableName
    )
    {
        var tagId = DbConnect.GetParamId(controllerName, objectName, variableName);
        Eventer.GenerateUserEvent(tagId, variableName);
    }

    /// <summary>
    /// Получает группу событий из архива по имени группы.
    /// </summary>
    /// <param name="groupName">Имя группы событий.</param>
    public void GetGroupEventsFromArchive(string groupName)
    {
        var eventGroupId = DbConnect.GetEventsGroupId(groupName);
        _archieveDataList = GetArchiveEvents(eventGroupId);
    }

    /// <summary>
    /// Получает группу событий по названию параметра из архива.
    /// </summary>
    /// <param name="eventGroupId">Имя группы событий.</param>
    /// <returns>Группа событий.</returns>
    private msData4[] GetArchiveEvents(Int32 eventGroupId)
    {
        var arcTime = 15; // Бизне-значение времени выборки из архива
        Eventer.EventPickTime = DateTime.UtcNow;
        var beginTime = Eventer.EventPickTime.AddMinutes(-arcTime).AddSeconds(-10); //смещение на 10сек, чтобы от всех источников влезали 15 событий, а не все могут RealTime
        //0 - все типы событий
        var valueType = 0;
        arcTime += 2; //По факут выборка деалется чуть больше, в будущее (чтобы попали только-что пришедшие значения, и не влияло -10сек)

        _ = ArcConnect.ReadMsData4Values(
            timeBegin: beginTime,
            byMinutes: arcTime,
            groupId: eventGroupId,
            valueType: valueType,
            out var archiveDataList
        );

        return archiveDataList;
    }

    /// <summary>
    /// Проверяет события по указанным параметрам.
    /// </summary>
    /// <param name="expectedCount">Ожидаемое количество событий.</param>
    /// <param name="controllerName">Контроллер, с которого будут получены события.</param>
    /// <param name="objectName">Имя объекта.</param>
    /// <param name="variableName">Имя переменной.</param>
    public void CheckEventsByParameters(
        Int32 expectedCount,
        String controllerName,
        String objectName,
        String variableName
    )
    {
        ATLogger.Debug($"Parse from {_eventMessages.Length} Events");
        var tagId = DbConnect.GetParamId(controllerName, objectName, variableName);
        Eventer.ParseEventsNum(
            unsolicitedMessages: _eventMessages,
            tagId: tagId,
            expEventNum: expectedCount,
            eventType: objectName,
            dataType: variableName
        );
    }

    /// <summary>
    /// Проверяет события определенной группы по указанным параметрам.
    /// </summary>
    /// <param name="groupName">Название группы событий.</param>
    /// <param name="expectedCount">Ожидаемое количество событий.</param>
    /// <param name="controllerName">Контроллер, с которого будут получены события.</param>
    /// <param name="objectName">Имя объекта.</param>
    /// <param name="variableName">Имя переменной.</param>
    public void CheckEventsByParameters(
        String groupName,
        Int32 expectedCount,
        String controllerName,
        String objectName,
        String variableName
    )
    {
        GetGroupEvents(groupName);
        ATLogger.Debug($"Parse from {_eventMessages.Length} Events");
        var tagId = DbConnect.GetParamId(controllerName, objectName, variableName);
        Eventer.ParseEventsNum(
            unsolicitedMessages: _eventMessages,
            tagId: tagId,
            expEventNum: variableName.Contains("BOOL") ? 2 : expectedCount,
            eventType: objectName,
            dataType: variableName
        );
    }

    /// <summary>
    /// Получает группу событий по имени группы.
    /// </summary>
    /// <param name="groupName">Название группы событий.</param>
    public void GetGroupEvents(String groupName)
    {
        var eventGroupId = DbConnect.GetEventsGroupId(groupName);
        _eventMessages = Eventer.GetEvents(eventGroupId);
    }

    /// <summary>
    /// Очищает указанную группу событий.
    /// </summary>
    /// <param name="groupName">Название группы событий.</param>
    public void CleanEventsGroup(String groupName)
    {
        var eventGroupId = DbConnect.GetEventsGroupId(groupName);
        Eventer.ClearEventId(eventGroupId);
        _ = Eventer.CheckCountEvents(eventGroupId, 0);
    }

    /// <summary>
    /// Записывает группу событий по указанным параметрам.
    /// </summary>
    /// <param name="valuesString">Набор событий в виде строки.</param>
    /// <param name="controllerName">Контроллер, куда будут записаны события.</param>
    /// <param name="objectName">Имя объекта.</param>
    /// <param name="variableName">Имя переменной.</param>
    public void WriteRuntimeValues(
        String valuesString,
        String controllerName,
        String objectName,
        String variableName
    )
    {
        var tagId = DbConnect.GetParamId(controllerName, objectName, variableName);
        var valuesList =
            valuesString.Split(new String[] { "; " }, StringSplitOptions.RemoveEmptyEntries);

        foreach (var value in valuesList)
        {
            _ = Runtime.CheckWriteValue(tagId, value);
            ATLogger.Debug($"Check write value {value} OK");
        }
    }

    public void CheckArchieveEvents(String plcName, String expectedType, String varName)
    {
        var tagId = DbConnect.GetParamId(plcName, expectedType, varName);
        Assert.That(_archieveDataList, Is.Not.Empty, "Archive data list");
        var filteredArchieveDataList = _archieveDataList.Where(e => e.uiObjID == tagId);
        //ATLogger.Proof(filteredArchieveDataList.PrintCollectionProperties($"msData4 values with tagId = {tagId}"));
        Assert.That(filteredArchieveDataList, Is.Not.Empty, $"Archive data list for tagId = {tagId}");
        #region archiveEventsCheck
        var lastMessageTime = filteredArchieveDataList.MaxBy(e => e.ufTime)
            .ufTime;

        LastEventTimeCheck.SetUp()
            .SetTimeLimit(Eventer.EventPickTime.AddSeconds(-70)) // 60 - переиод генерации, 10 сек на передачу в, и чтение из  Архива
            .SetMessageTime(lastMessageTime)
            .Execute();

        EventsCountCheck.SetUp()
            .SetExpectedCount(15).UpTo(16)
            .SetActualCount(filteredArchieveDataList.Count())
            .Execute();

        ValuesCheck.SetUp()
            .SetExpectedType(expectedType)
            .SetCheckedValues(filteredArchieveDataList)
            .Execute();
        #endregion
    }

    private void ExperimentalArchDataChecker(msData1[] msDataList)
    {
        ArchiveDataChecker archiveDataChecker = new(msDataList);
        _ = archiveDataChecker.CheckValue().WithValueDispersion(1)
            .CheckTime().WithTimeDispersion(1)
            .Execute();
    }

    /// <summary>
    /// Получение Архивных данных
    /// </summary>
    /// <param name="plcName"> Марка источника данных</param>
    /// <param name="objName"> Марка Тех Объекта</param>
    /// <param name="varName"> Имя канала</param>
    /// <param name="cpuNum"> ID для кластера (2,3) остальное дает обычный ID</param>
    /// <returns></returns>
    public msData1[] ReadArchiveValue(string plcName, string objName, string varName, int cpuNum = 1, int arcTime = 15)
    {
        //Параметр по умолчанию arcTime
        ATLogger.Debug($"CASE: ReadArchiveValue");
        try
        {
            var curTime = DateTime.UtcNow;
            var tagId = 0;
            if (varName.Length == 0)
            {
                // Если не задан varName - читаем канал Источника Данных
                tagId = DbConnect.GetDeviceParamId(plcName, objName);
            }
            else
            {
                // Есть все параметры - читаем канал(ы) тех объекта
                tagId = DbConnect.GetParamId(plcName, objName, varName, cpuNum);
            }

            var timeBegin = curTime.AddMinutes(-arcTime);
            var arcCnt = ArcConnect.ReadArcTag(tagId, timeBegin, arcTime, out var msDataList);
            ATLogger.Warn($"{arcCnt}");
            return msDataList;
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.ReadArchiveValue :{msg}");
        }
    }

    private static String ParseMsData1Type(msData1 msDataObject, String typeName) =>
    !msDataObject.IsInteger
        ? RuntimeRW.ParseValue(msDataObject.fValue.ToString(CultureInfo.InvariantCulture)).ToString()
        : Regex.IsMatch(typeName, @"^U(.)*INT") || typeName.Contains("WORD") || typeName.Contains("BYTE")
            ? msDataObject.uiValue.ToString()
            : msDataObject.iValue.ToString();

    //private void CheckArchiveValues(msData1[] archiveValues, String typeName) =>
    //    new ArchiveDataValuesChecker(archiveValues)
    //        .WithType(typeName)
    //        .CheckArchiveDataValues();

    #region ScadaConnect archive methods
    /*private String ParseTagValue(TagValue tagValue, String typeName) =>
        !tagValue.IsInteger
            ? RuntimeRW.ParseValue(tagValue.fValue.ToString(CultureInfo.InvariantCulture)).ToString()
            : Regex.IsMatch(typeName, @"^U(.)*INT") || typeName.Contains("WORD") || typeName.Contains("BYTE")
                ? tagValue.uiValue.ToString()
                : tagValue.iValue.ToString();*/

    /// <summary>
    /// Провекра Записи Runtime значений канала ТО или ИД
    /// </summary>
    /// <param name="values"> Строка данных для записи Runtime значений
    /// <param name="plcName"> Марка источника данных
    /// <param name="objName"> Марка Тех Объекта
    /// <param name="varName"> Имя канала
    /// <returns></returns>
    public void WriteRuntimeValue(string valueType, string plcName, string objName, string varName)
    {
        ATLogger.Debug($"CASE: WriteRuntimeValue");
        try
        {
            var tagId = -99;
            if (varName.Length == 0)
            {
                // Если не задан varName - читаем канал Источника Данных
                tagId = DbConnect.GetDeviceParamId(plcName, objName);
            }
            else
            {
                // Есть все параметры - читаем канал(ы) тех объекта
                tagId = DbConnect.GetParamId(plcName, objName, varName);
            }

            var listValues = GetTypeValues(valueType);

            foreach (var val in listValues)
            {
                _ = Runtime.CheckWriteValue(tagId, val);
                ATLogger.Debug($"Check write value {val} OK");
            }
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.WriteRuntimeValue :{msg}");
        }
    }

    /// <summary>
    /// Провекра Записи в КЛАСТЕР Runtime значений канала ТО или ИД
    /// </summary>
    /// <param name="values"> Строка данных для записи Runtime значений
    /// <param name="plcName"> Марка источника данных
    /// <param name="objName"> Марка Тех Объекта
    /// <param name="varName"> Имя канала
    /// <param name="cpuNum"> ID для кластера (2,3) остальное дает обычный ID</param>
    /// <returns></returns>
    public void WriteRuntimeValue(string valueType, string plcName, string objName, string varName, int cpuNum = 1)
    {
        ATLogger.Debug($"CASE: WriteRuntimeValue");
        try
        {
            var tagId = -99;
            var tagId1 = -99;
            var tagId2 = -99;
            tagId = DbConnect.GetParamId(plcName, objName, varName, cpuNum);
            tagId1 = DbConnect.GetParamId(plcName, objName, varName, 1);
            tagId2 = DbConnect.GetParamId(plcName, objName, varName, 2);
            var listValues = GetTypeValues(valueType);

            foreach (var val in listValues)
            {
                TestData.FixedTimeNowRuntime = DateTimeOffset.Now.TimeOfDay.TotalMilliseconds;
                TestData.FixedDateNowRuntime = DateTimeOffset.Now.ToUnixTimeSeconds();
                TestData.FixedDTNowRuntime = DateTime.UtcNow;
                TestData.FixedAnyValue = DateTimeOffset.Now.TimeOfDay.Minutes.ToString();
                Runtime.WriteTag(tagId, val);
                Thread.Sleep(500);
                _ = Runtime.CompareRuntimeValue(tagId1, val, out var tmp1);
                _ = Runtime.CompareRuntimeValue(tagId2, val, out var tmp2);
                TestData.FixedTimeNowRuntime = 0;
                TestData.FixedDateNowRuntime = 0;
                TestData.FixedDTNowRuntime = new DateTime(2000, 01, 01, 0, 0, 0);
                TestData.FixedAnyValue = "_";
                ATLogger.Debug($"Check write value {val} OK");
            }
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.WriteRuntimeValue :{msg}");
        }
    }

    /// <summary>
    /// Провекра Записи OnLine значений
    /// </summary>
    /// <param name="values"> Строка данных для записи Runtime значений</param>
    /// <param name="plcName"> Марка источника данных</param>
    /// <param name="resN"> Номер ресурса</param>
    /// <param name="pouName"> Название POU</param>
    /// <param name="varName"> Имя переменной для записи</param>
    /// <param name="varRead"> Имя переменной для чтения</param>
    /// <returns></returns>
    public void WriteOnlineValue(string valueType, string plcName, int resN, string pouName, string varName, string varRead)
    {
        ATLogger.Debug($"CASE: WriteOnlineValue");
        try
        {
            if (varRead.Length == 0)
            {
                varRead = varName;
            }

            if (pouName.Length > 1)
            {
                // Если указан POU - работаем с локальными переменными LOCAL_%varName%_R/W
                varRead = "LOCAL_" + varRead + "_R@" + pouName.ToUpper();
                varName = "LOCAL_" + varName + "_W@" + pouName.ToUpper();
            }

            var tmpVarName = varName;
            if (varName.Contains('|'))
            {
                var v = varName.IndexOf("|", StringComparison.Ordinal);
                tmpVarName = varName.Remove(0, v + 1);
            }

            _ = Runtime.ReadOnline(plcName, resN, varRead, 5000);
            _ = Runtime.ReadOnline(plcName, resN, tmpVarName, 5000);
            var listValues = GetTypeValues(valueType);
            foreach (var val in listValues)
            {
                Runtime.CheckWriteOnline(val, plcName, resN, varName, varRead, 0);
                ATLogger.Debug($"Check Online value {val} OK");
            }
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.CheckScenarioDevice :{msg}");
        }
    }

    /// <summary>
    /// Проверка соответсвия записанных данных и тех, что полученны из архива
    /// </summary>
    /// <param name="tagId">Id параметра</param>
    /// <param name="byMinutes">Кол-во минут</param>
    /// <param name="values">строка проверяемых (записанных)  значений</param>
    /// <returns>
    /// Сравнение архивных данных прошло без ошибок
    /// </returns>
    public bool CompareArcData(int tagId, DateTime timeBegin, int byMinutes, string valueType)
    {
        var msData1ss = ArcConnect.GetArcTags(tagId, timeBegin, byMinutes, out var cnt);
        var listValues = GetTypeValues(valueType);

        //msData1ss - массив
        //listValues - массив
        //int ix = 0;
        // колво значений прочитанных из архива должно совпадать с тем что записывали
        //for {
        //    Assert.Equals(msData1ss[ix].fValue.ToString(), listValues[ix]);
        //}

        return false;
    }

    /// <summary>
    /// Проверка соответсвия записанных данных и тех, что полученны из архива c проверкой метки времени
    /// </summary>
    /// <param name="tagId">Id параметра</param>
    /// <param name="byMinutes">Кол-во минут</param>
    /// <param name="values">строка проверяемых (записанных) значений</param>
    /// <param name="dTimeStamp">ожидаемая разница между метками времени</param>
    /// <returns>
    /// Сравнение архивных данных прошло без ошибок
    /// </returns>
    public bool CompareArcData(int tagId, DateTime timeBegin, int byMinutes, string valueType, DateTime dTimeStamp)
    {
        var msData1ss = ArcConnect.GetArcTags(tagId, timeBegin, byMinutes, out var cnt);
        var listValues = GetTypeValues(valueType);

        //msData1ss - массив
        //listValues - массив
        //int ix = 0;
        // колво значений прочитанных из архива должно совпадать с тем что записывали
        //for {
        //    Assert.Equals(msData1ss[ix].fValue.ToString(), listValues[ix]);
        //}
        //
        // msData1ss[ix].ufTime == msData1ss[ix+1].ufTime
        return false;
    }

    public void ReadArchiveValuesAndCheck(string plcName, string objName, string varName, string typeName)
    {
        var archiveValues =
            GetArchiveValues(
                plcName,
                objName,
                varName,
                typeName,
                ReadArchiveValue
            );

        var expectedValues = GetTypeValues(typeName)
            .Select(e => BooleanStringParser(e));
        var archiveValuesConverted = archiveValues
            .Select(e => ParseMsData1Type(e, typeName));

        CompareStringCollections(archiveValuesConverted, expectedValues);
    }

    public void ReadArchiveValuesAndCheckScadaConnect(string plcName, string objName, string varName, string typeName)
    {
        var archiveValues =
            GetArchiveValues(
                plcName,
                objName,
                varName,
                typeName,
                ReadArchiveValueScadaConnect
            );

        var archiveValuesConverted = archiveValues
            .Select(e => e.Value.ToString())
            .Select(e => BooleanStringParser(e));

        var expectedValues = GetTypeValues(typeName)
            .Select(e => BooleanStringParser(e));

        CompareStringCollections(archiveValuesConverted, expectedValues);
    }

    private static void CompareStringCollections(IEnumerable<string> actualValues, IEnumerable<string> expectedValues)
    {
        var comparer = new CollectionsComparer
        {
            FirstHeader = "Прочитано",
            SecondHeader = "Эталон"
        };

        if (comparer.Compare(actualValues, expectedValues))
        {
            return;
        }

        Assert.Fail(
            "Ожидалось, что прочитанные из архива значения будут равны эталонным.\n" +
            $"{comparer.GetLastComparisonOutput()}"
        );
    }

    private static IEnumerable<T> GetArchiveValues<T>(
        string plcName,
        string objName,
        string varName,
        string typeName,
        Func<string, string, string, int, int, IEnumerable<T>> readFunction,
        int cpuNumber = 1,
        int pickInterval = 2
    )
    {
        var archiveValues = Enumerable.Empty<T>();
        var previousWasSet = false;
        var stopwatch = new Stopwatch();
        stopwatch.Start();
        var previousValuesCount = -1;
        while (stopwatch.Elapsed < TimeSpan.FromSeconds(60))
        {
            try
            {
                archiveValues =
                    readFunction(plcName, objName, varName, cpuNumber, pickInterval);
            }
            catch (AssertionException)
            {
                Thread.Sleep(TimeSpan.FromSeconds(10));
                continue;
            }

            if (
                archiveValues.Count() == GetTypeValues(typeName).Length
                || (
                    previousWasSet
                    && archiveValues.Count() == previousValuesCount
                )
            )
            {
                break;
            }

            previousValuesCount = archiveValues.Count();
            previousWasSet = true;
            Thread.Sleep(TimeSpan.FromSeconds(10));
        }

        return archiveValues;
    }

    /// <summary>
    /// Получает коллекцию значений по переданному типу данных или строке со значениями.
    /// </summary>
    /// <param name="inputValue">Тип данных или строка со значениями.</param>
    /// <returns>Набор значений.</returns>
    public static String[] GetTypeValues(String inputValue)
    {
        String unsplittedValues =
            TestData.TypeValues.TryGetValue(inputValue, out unsplittedValues)
                ? unsplittedValues
                : inputValue;

        return unsplittedValues
            .Split(new String[] { "; " }, StringSplitOptions.RemoveEmptyEntries);
    }

    private static String BooleanStringParser(String inputString) =>
        RuntimeRW.ParseValue(
            inputString switch
            {
                { } str when String.Equals(str, "true", StringComparison.OrdinalIgnoreCase) => "1",
                { } str when String.Equals(str, "false", StringComparison.OrdinalIgnoreCase) => "0",
                _ => inputString
            }
        )
        .ToString();

    /// <summary>
    /// Получение Архивных данных
    /// </summary>
    /// <param name="plcName"> Марка источника данных</param>
    /// <param name="objName"> Марка Тех Объекта</param>
    /// <param name="varName"> Имя канала</param>
    /// <param name="cpuNum"> ID для кластера (2,3) остальное дает обычный ID</param>
    /// /// <param name="pickInterval">Количество минут, за которые будет подобраны архивные данные.</param>
    /// <returns></returns>
    public IEnumerable<TagValue> ReadArchiveValueScadaConnect(
        string plcName,
        string objName,
        string varName,
        int cpuNum = 1,
        int pickInterval = 15
    )
    {
        //Параметр по умолчанию arcTime
        ATLogger.Debug($"CASE: ReadArchiveValue");
        try
        {
            var currentTime = DateTime.UtcNow;
            var tagId = varName.Length == 0
                ? DbConnect.GetDeviceParamId(plcName, objName)
                : DbConnect.GetParamId(plcName, objName, varName, cpuNum);

            var timeBegin = currentTime.AddMinutes(-pickInterval);
            return ScadaConnectArchive.ReadArchiveValues(tagId, timeBegin, pickInterval);
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.ReadArchiveValue :{msg}");
        }
    }

    /// <summary>
    /// Получение Архивных данных в буффер для сравения
    /// </summary>
    /// <param name="plcName"> Марка источника данных</param>
    /// <param name="objName"> Марка Тех Объекта</param>
    /// <param name="varName"> Имя канала</param>
    /// <param name="cpuNum"> ID для кластера (2,3) остальное дает обычный ID</param>
    /// <returns></returns>
    public void GetArchiveBufferSourceScadaConnect(string plcName, string objName, string varName, int cpuNum = 1)
    {
        ATLogger.Debug($"CASE: GetArchiveBuffer");
        try
        {
            var tagId = varName.Length == 0
                ? DbConnect.GetDeviceParamId(plcName, objName)
                : DbConnect.GetParamId(plcName, objName, varName, cpuNum);

            var pickInterval = 15;
            var timeBegin = ArchiveTime1;
            var arcCnt = -1;

            _sourceArchiveValues.Clear();
            _targetArchiveValues.Clear();
            _sourceArchiveValues = ScadaConnectArchive.ReadArchiveValues(tagId, timeBegin, pickInterval);
            arcCnt = _sourceArchiveValues.Count;
            ATLogger.Debug($"{objName} get {arcCnt} archive values by {pickInterval}min");
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.GetArchiveBuffer :{msg}");
        }
    }

    /// <summary>
    /// Проверка количества полученных архивных данных
    /// </summary>
    /// <param name="tagId">Id параметра</param>
    /// <param name="pickInterval">Кол-во минут</param>
    /// <param name="expectedCount">ожидаемое кол-во</param>
    /// <param name="delta">доверительный диапазон</param>
    /// <returns>
    /// Количество полученных архивных значений
    /// </returns>
    public int ChekArcCountScadaConnect(int tagId, DateTime timeBegin, int pickInterval, int expectedCount, int delta = 0)
    {
        var archiveValuesCount = ScadaConnectArchive.ReadArchiveValues(tagId, timeBegin, pickInterval).Count;
        Assert.That(
            archiveValuesCount, Is.InRange(expectedCount - delta, expectedCount + delta),
            $"Количество значений, полученных из архива по tagId={tagId} за {pickInterval} минут вне пределов ожидаемого."
        );

        return archiveValuesCount;
    }

    /// <summary>
    /// Сравнение полученных архивных данных с данными из буфера
    /// </summary>
    /// <param name="plcName"> Марка источника данных</param>
    /// <param name="objName"> Марка Тех Объекта</param>
    /// <param name="varName"> Имя канала</param>
    /// <param name="cpuNum"> ID для кластера (2,3) остальное дает обычный ID</param>
    /// <returns></returns>
    public void CompareArchiveBufferScadaConnect(string plcName, string objName, string varName, int cpuNum = 1)
    {
        ATLogger.Debug($"CASE: CompareArchiveBuffer");
        try
        {
            GetArchiveBufferTargetScadaConnect(plcName, objName, varName);
            Assert.That(
                _targetArchiveValues, Has.Count.EqualTo(_sourceArchiveValues.Count),
                $"Buffer Length NotEqual"
            );
            ATLogger.Debug($"Copmare {_sourceArchiveValues.Count} arc vals from {ArchiveTime1}");
            for (var i = 0; i < _sourceArchiveValues.Count; i++)
            {
                if (!(_sourceArchiveValues[i].TimeStamp.Equals(_targetArchiveValues[i].TimeStamp)))
                {
                    //arcBuffSrc[i].ufTime.ToString("O");
                    ATLogger.Warn(
                        $"Different TimeStamp in the buffer[{i}]" +
                        $"\nsrc: {_sourceArchiveValues[i].TimeStamp:O}" +
                        $"\ntrg: {_targetArchiveValues[i].TimeStamp:O}"
                    );

                    ATLogger.Warn("Copmare Within 1ms");
                    Assert.That(
                        _sourceArchiveValues[i].TimeStamp,
                        Is.EqualTo(_targetArchiveValues[i].TimeStamp).Within(TimeSpan.FromMilliseconds(1)),
                        $"Different TimeStamp in the buffer[{i}]"
                    );
                }

                //Assert.AreEqual(_sourceArchiveValues[i].ufTime, _targetArchiveValues[i].ufTime, $"Different TimeStamp in the buffer[{i}]");
                Assert.That(
                    _sourceArchiveValues[i].ValueAsDouble(),
                    Is.EqualTo(_targetArchiveValues[i].ValueAsDouble()),
                    $"Different Value in the buffer[{i}]"
                );
            }
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.CompareArchiveBuffer :{msg}");
        }
    }

    /// <summary>
    /// Получение Архивных данных в буффер для сравения
    /// </summary>
    /// <param name="plcName"> Марка источника данных</param>
    /// <param name="objName"> Марка Тех Объекта</param>
    /// <param name="varName"> Имя канала</param>
    /// <param name="cpuNum"> ID для кластера (2,3) остальное дает обычный ID</param>
    /// <returns></returns>
    private void GetArchiveBufferTargetScadaConnect(string plcName, string objName, string varName, int cpuNum = 1)
    {
        ATLogger.Debug($"CASE: GetArchiveBuffer");
        try
        {
            var tagId = varName.Length == 0
                ? DbConnect.GetDeviceParamId(plcName, objName)
                : DbConnect.GetParamId(plcName, objName, varName, cpuNum);

            var pickInterval = 15;
            var timeBegin = ArchiveTime1;
            var arcCnt = -1;

            _targetArchiveValues = ScadaConnectArchive.ReadArchiveValues(tagId, timeBegin, pickInterval);
            arcCnt = _targetArchiveValues.Count;
            ATLogger.Debug($"{objName} get {arcCnt} archive values by {pickInterval}min");
        }
        catch (AssertionException)
        {
            throw;
        }
        catch (Exception msg)
        {
            throw new Exception($"Exception in TestCaseFunc.GetArchiveBuffer :{msg}");
        }
    }
    #endregion
}
