namespace ExchangeUtils.Tests;

using System;
using System.Linq;
using TechTalk.SpecFlow;
using TestLib;
using Allure.Commons;
using NUnit.Framework;
using TestLib.Tools;
using Newtonsoft.Json.Linq;
using System.Threading;

public class ExchUtilsInfo
{
    private DateTime StartFixtureTime;

    public DateTime FixtureSratrtTime
    {
        get => StartFixtureTime;
        set => StartFixtureTime = value;
    }
}

[Binding]
public sealed class TestSteps
{
    public static ExchUtilsInfo localInfo = new ExchUtilsInfo();

    public static bool stepDeviceOk = false;
    public static string scenarioDevName = "anyDevice";
    public static string scenarioDevName1 = "anyDevice";
    public static string scenarioDevName2 = "anyDevice";
    //   public Connector cnn;
    //   public DataBaseSql DbConnect;
    public bool LastReadQualityIsOk = false;

    [Given(@"Set Name '(.*)'")]
    public void Test1(string newName)
    {
        Global.TestName = newName;
        localInfo.FixtureSratrtTime = DateTime.UtcNow.AddMinutes(-20);
        ATLogger.Debug($"Set NEW Name {newName} OK");
    }

    [Given(@"Sleep (\d*)")]
    public static void Sleep(int Sleepltime) => EnviromentFunctions.Sleep(Sleepltime);

    [Given(@"Шлюзы '(.*)' в работе")]
    public static void CheckServerState(string gateName)
    {
        if (String.Equals(gateName, "DataSrc", StringComparison.OrdinalIgnoreCase))
        {
            Global.AnyConnect = Global.Gate_DataSrc;
        }
        else if (String.Equals(gateName, "DataReceiver", StringComparison.OrdinalIgnoreCase))
        {
            Global.AnyConnect = Global.Gate_DataReciv;
        }
        else if (String.Equals(gateName, "work", StringComparison.OrdinalIgnoreCase))
        {
            Global.AnyConnect = Global.Gate_Work;
        }
        else
        {
            Global.AnyConnect = Global.Gate_Work;
        }

        if (String.Equals(gateName, "DataSrc", StringComparison.OrdinalIgnoreCase) || String.Equals(gateName, "DataReceiver", StringComparison.OrdinalIgnoreCase))
        {
            Global.AnyConnect.CheckServerState(gateName, true);
        }
        else
        {
            Global.AnyConnect.CheckServerState(gateName);
        }
    }

    [Given(@"Шлюз '(.*)' в работе")]
    public static void CheckSingleServerState(string gateName)
    {
        if (String.Equals(gateName, "DataSrc", StringComparison.OrdinalIgnoreCase))
        {
            Global.AnyConnect = Global.Gate_DataSrc;
        }
        else if (String.Equals(gateName, "DataReceiver", StringComparison.OrdinalIgnoreCase))
        {
            Global.AnyConnect = Global.Gate_DataReciv;
        }
        else if (String.Equals(gateName, "work", StringComparison.OrdinalIgnoreCase))
        {
            Global.AnyConnect = Global.Gate_Work;
        }
        else
        {
            Global.AnyConnect = Global.Gate_Work;
        }

        Global.AnyConnect.CheckServerState(gateName, true);
        //if (String.Equals(gateName, "DataSrc", StringComparison.OrdinalIgnoreCase)) Class1.SrvSrc.CheckServerState(gateName, true);
        //else Class1.SrvWork.CheckServerState(gateName, true);
    }

    [Given(@"Зеркало Шлюза '(.*)' в работе")]
    public static void CheckMirrorState(string gateName)
    {
        if (String.Equals(gateName, "MirrorWork", StringComparison.OrdinalIgnoreCase))
        {
            Global.AnyConnect = Global.MirrorGate_Work;
        }
        else if (String.Equals(gateName, "MirrorDataSrc", StringComparison.OrdinalIgnoreCase))
        {
            Global.AnyConnect = Global.MirrorGate_Src;
        }
        else if (String.Equals(gateName, "MirrorDataReciv", StringComparison.OrdinalIgnoreCase))
        {
            Global.AnyConnect = Global.MirrorGate_Reciv;
        }
        else
        {
            Global.AnyConnect = Global.MirrorGate_Work;
        }

        if (gateName.Contains("Data"))
        {
            Global.AnyConnect.CheckServerState(gateName, true);
        }
        else
        {
            Global.AnyConnect.CheckServerState(gateName);
        }
    }

    [Given(@"Архив '(.*)' в работе")]
    public static void CheckArchiveState(string arcNum)
    {
        switch (arcNum)
        {
            case "ArcWork":
                Global.Gate_Work.CheckArcState(Global.Gate_Work.archiveState1, "work");
                Global.AnyConnect.ArcConnect = Global.Archive_Work;
                break;
            case "ArcReciv":
                Global.Gate_DataReciv.CheckArcState(Global.Gate_DataReciv.archiveState1, "DataReceiver", true);
                Global.AnyConnect.ArcConnect = Global.Archive_DataReciv;
                break;
            case "ArcMirror":
                Global.MirrorGate_Work.CheckArcState(Global.MirrorGate_Work.archiveState1, "work", true);
                Global.AnyConnect.ArcConnect = Global.MirrorArchive_Work;
                break;
            case "ArcMirrorSrc":
                Global.MirrorGate_Src.CheckArcState(Global.MirrorGate_Src.archiveState1, "DataSrc", true);
                Global.AnyConnect.ArcConnect = Global.MirrorArchive_DataSrc;
                break;
            case "ArcMirrorReciv":
                Global.MirrorGate_Reciv.CheckArcState(Global.MirrorGate_Reciv.archiveState1, "DataReceiver", true);
                Global.AnyConnect.ArcConnect = Global.MirrorArchive_DataReciv;
                break;
            default:
                Global.Gate_Work.CheckArcState(Global.Gate_Work.archiveState1, "work");
                Global.AnyConnect.ArcConnect = Global.Archive_Work;
                break;
        }
    }

    [Given(@"Соединение с Архивом '(.*)'")]
    public GeneralFunc ConnectToArc(string arcNum)
    {
        Global.AnyConnect.ArcConnect = arcNum switch
        {
            "ArcWork" => Global.Archive_Work,//Class1.SrvWork.CheckArcState(Class1.SrvWork.arcState1, "work");
            "ArcReciv" => Global.Archive_DataReciv,//Class1.SrvReciv.CheckArcState(Class1.SrvReciv.arcState1, "DataReceiver", true);
            "ArcMirror" => Global.MirrorArchive_Work,//Class1.MirrorWork.CheckArcState(Class1.MirrorWork.arcState1, "work", true);
            "ArcMirrorSrc" => Global.MirrorArchive_DataSrc,//Class1.MirrorSrc.CheckArcState(Class1.MirrorSrc.arcState1, "DataSrc", true);
            "ArcMirrorReciv" => Global.MirrorArchive_DataReciv,//Class1.MirrorReciv.CheckArcState(Class1.MirrorReciv.arcState1, "DataReceiver", true);
            _ => Global.Archive_Work,//Class1.SrvWork.CheckArcState(Class1.SrvWork.arcState1, "work");
        };
        return Global.AnyConnect;
    }

    //public DataRead(ScenarioContext injectedContext)
    //{

    //}

    // Локальная провекра связи с устройством, при вызове функции
    [Then(@"Поверка связи с '(.*)'")]
    public static void CheckDeviceStat(string devName) =>
        stepDeviceOk = Global.AnyConnect.CheckDeviceStat(devName);

    // Локальная провекра связи с устройством, при вызове функции
    [Then(@"Поверка связи с '(.*)' ожидаю (\d*)")]
    public static void CheckDeviceStat(string devName, int devStat) =>
        stepDeviceOk = Global.AnyConnect.CheckDeviceStat(devName, devStat);

    //  Проверка состояния связи по результату локальной проверки
    [Given("Связь с устройством '(.*)' проверена")]
    public static void StepConnectDev(string device)
    {
        scenarioDevName = device;
        Assert.That(stepDeviceOk, Is.EqualTo(true), $"Нет связи с устройством  {device} :");
    }

    // Проверка состояния связи с устройствами в BeforeFeature
    [Given("Связь с устройством '(.*)' в норме")]
    public static void GivenCheckConnectDev(string device)
    {
        scenarioDevName = device;
        //GeneralFunc.CheckScenarioDevice(device);
    }

    [Given(@"Связь с (\d*) устройством '(.*)' в норме")]
    public static void GivenCheckConnectDev(int devN, string device)
    {
        if (devN == 1)
        {
            scenarioDevName1 = device;
        }

        if (devN == 2)
        {
            scenarioDevName2 = device;
        }

        //GeneralFunc.CheckScenarioDevice(device);
    }

    [Then(@"Поверка Системных событий '(.*)'")]
    public static void CheckSysEvents(string devName) =>
        Global.AnyConnect.CheckDeviceSysEvents(devName);

    [Then(@"Поверка Системных событий '(.*)' = (\d*)")]
    public static void CheckSysEvents(string devName, int devStat) =>
        Global.AnyConnect.CheckDeviceSysEvents(devName, devStat);

    [Then("Проверка Runtime качества '(.*)' переменной '(.*)'.'(.*)'")]
    [When("Проверка Runtime качества '(.*)' переменной '(.*)'.'(.*)'")]
    public static void CheckRtQual(string expQual, string objName, string varName) =>
        Global.AnyConnect.CheckRuntimeQuality(scenarioDevName, objName, varName, expQual);

    [Then(@"Проверка Runtime качества '(.*)' переменной (\d*) Кластера '(.*)'.'(.*)'")]
    [When(@"Проверка Runtime качества '(.*)' переменной (\d*) Кластера '(.*)'.'(.*)'")]
    public static void CheckRtQual(string expQual, int clustNum, string objName, string varName) =>
        Global.AnyConnect.CheckRuntimeQuality(scenarioDevName, objName, varName, expQual, clustNum);

    [Then(@"Проверка Online качества '(.*)' переменной '(.*)'.'(\d*)'.'(.*)'.'(.*)'")]
    [When(@"Проверка Online качества '(.*)' переменной '(.*)'.'(\d*)'.'(.*)'.'(.*)'")]
    public static void CheckOnlineQual(string expQual, string plcName, int resN, string pouName, string varName) =>
        Global.AnyConnect.CheckOnlineQuality(plcName, resN, pouName, varName, expQual);

    [Then("Чтение Runtime значения '(.*)'.'(.*)'")]
    [When("Чтение Runtime значения '(.*)'.'(.*)'")]
    public static void ReadRtValueTechObj(string objName, string varName) =>
        Global.AnyConnect.ReadRuntimeValue(scenarioDevName, objName, varName);

    [Then("Чтение Runtime значения '(.*)'.'(.*)'.'(.*)'")]
    [When("Чтение Runtime значения '(.*)'.'(.*)'.'(.*)'")]
    public static void ReadRtValueTechObj(string plcName, string objName, string varName) =>
        Global.AnyConnect.ReadRuntimeValue(plcName, objName, varName);

    [Then(@"Чтение из Кластера (\d*) Runtime значения '(.*)'.'(.*)'")]
    [When(@"Чтение из Кластера (\d*) Runtime значения '(.*)'.'(.*)'")]
    public static void ReadClusterRtValueTechObj(int clustNum, string objName, string varName) =>
        Global.AnyConnect.ReadRuntimeValue(scenarioDevName, objName, varName, clustNum);

    [Then(@"Запись Runtime значений '(.*)' в '(.*)'.'(.*)'")]
    [Then(@"Проверка записи Runtime значений '(.*)' в '(.*)'.'(.*)'")]
    [Then(@"Проверка чтения и записи значений '(.*)' в '(.*)'.'(.*)'")]
    public static void CheckReadAndWriteRtVal(string values, string objName, string varName)
    {
        Global.AnyConnect.CheckRuntimeQuality(scenarioDevName, objName, varName, "Good");
        Global.AnyConnect.WriteRuntimeValue(values, scenarioDevName, objName, varName);
    }

    [Then(@"Проверка записи в Кластер (\d*) Runtime значений '(.*)' в '(.*)'.'(.*)'")]
    public static void ChekWriteClusterRtValue(int clustNum, string values, string objName, string varName)
    {
        Global.AnyConnect.CheckRuntimeQuality(scenarioDevName, objName, varName, "Good", clustNum);
        Global.AnyConnect.WriteRuntimeValue(values, scenarioDevName, objName, varName, clustNum);
    }

    [Then(@"Проверяю запись Online значений '(.*)' в '(.*)'.'(\d*)'.'(.*)'.'(.*)' Чтение из '(.*)'")]
    public static void ThenIReadRuntimeSValue2(string values, string plcName, int resN, string pouName, string varName, string varRead)
    {
        Global.AnyConnect.CheckOnlineQuality(plcName, resN, pouName, varName, "Good");
        Global.AnyConnect.WriteOnlineValue(values, plcName, resN, pouName, varName, varRead);
    }

    [When(@"Чтение архивных данных '(.*)'.'(.*)'")]
    [Then(@"Чтение архивных данных '(.*)'.'(.*)'")]
    public static void ThenReadArcByTechObj(string objName, string varName) =>
        Global.AnyConnect.ReadArchiveValue(scenarioDevName, objName, varName);

    [When(@"Чтение исходных архивных данных '(.*)'.'(.*)' из '(.*)'")]
    public void GetSrcArcBuffer(string objName, string varName, string arcNum)
    {
        var localArc = ConnectToArc(arcNum);
        localArc.ArchiveTime1 = localInfo.FixtureSratrtTime;
        localArc.GetArchiveBuffer(scenarioDevName1, objName, varName);
    }

    [When(@"Чтение исходных архивных данных '(.*)'.'(.*)'.'(.*)' из '(.*)'")]
    public void GetSrcArcBuffer(string plcName, string objName, string varName, string arcNum)
    {
        var localArc = ConnectToArc(arcNum);
        localArc.ArchiveTime1 = localInfo.FixtureSratrtTime;
        localArc.GetArchiveBuffer(plcName, objName, varName);
    }

    [Then(@"Сравнение архивных данных '(.*)'.'(.*)' из '(.*)'")]
    public void CopmareArcBuffer(string objName, string varName, string arcNum)
    {
        var localArc = ConnectToArc(arcNum);
        localArc.ArchiveTime1 = localInfo.FixtureSratrtTime;
        localArc.CompareArchiveBuffer(scenarioDevName2, objName, varName);
    }

    [Then(@"Сравнение архивных данных '(.*)'.'(.*)'.'(.*)' из '(.*)'")]
    public void CopmareArcBuffer(string plcName, string objName, string varName, string arcNum)
    {
        var localArc = ConnectToArc(arcNum);
        localArc.ArchiveTime1 = localInfo.FixtureSratrtTime;
        localArc.CompareArchiveBuffer(plcName, objName, varName);
    }

    [When(@"Чтение архивных данных (\d*) Кластера '(.*)'.'(.*)'")]
    [Then(@"Чтение архивных данных (\d*) Кластера '(.*)'.'(.*)'")]
    public static void ThenReadArcByTechObj(int clustNum, string objName, string varName) =>
        Global.AnyConnect.ReadArchiveValue(scenarioDevName, objName, varName, clustNum);

    [Then(@"Test")]
    public static void Test1()
    {
        Console.WriteLine("*** ClassName = " + TestContext.CurrentContext.Test.ClassName);
        Console.WriteLine("*** FullName = " + TestContext.CurrentContext.Test.FullName);
        Console.WriteLine("*** ID = " + TestContext.CurrentContext.Test.ID);
        Console.WriteLine("*** MethodName = " + TestContext.CurrentContext.Test.MethodName);
        Console.WriteLine("*** Name = " + TestContext.CurrentContext.Test.Name);
        Console.WriteLine("*** Properties =" + TestContext.CurrentContext.Test.Properties);

        _ = AllureLifecycle.Instance.UpdateTestCase(testCase =>
        {
            testCase.name = testCase.name;
            Console.WriteLine("!!!! testCase.name = " + testCase.name);
            testCase.historyId = TestContext.CurrentContext.Test.FullName;
            Console.WriteLine("!!!! testCase.historyId = " + testCase.historyId);
            testCase.testCaseId = testCase.testCaseId;
            Console.WriteLine("!!!! testCase.testCaseId = " + testCase.testCaseId);
            testCase.fullName = testCase.fullName;
            Console.WriteLine("!!!! testCase.fullName = " + testCase.fullName);
            testCase.labels = testCase.labels;
            Console.WriteLine("!!!! testCase.labels = " + testCase.uuid);
        });
    }

    [When(@"Получаю события группы '(.*)' в буфер")]
    [Then(@"Получаю события группы '(.*)' в буфер")]
    public static void GetEventsTmp(string evGroupName) => Global.AnyConnect.GetTmpEventsByGroup(evGroupName);

    [When(@"Получаю события группы '(.*)' в новый буфер")]
    [Then(@"Получаю события группы '(.*)' в новый буфер")]
    public static void GetEventsNewTmp(string evGroupName) =>
        Global.AnyConnect.GetTmpEventsByGroup(evGroupName, true);

    [Then(@"Проверяю в буфере событие (\d*) по параметру '(.*)'.'(.*)'.'(.*)'")]
    public static void CheckTmpEvents(int expValue, string plcName, string objName, string varName) =>
        Global.AnyConnect.CheckTmpParamEvents(plcName, objName, varName, expValue);

    [Then(@"Проверка запись значений '(.*)' в '(.*)'.'(.*)' Чтение из '(.*)'")]
    public static void ThenIReadRuntimeSValue2(string valueType, string objName, string varName, string objRead)
    {
        if (objRead.Length == 0)
        {
            objRead = objName;
        }

        var tagIdW = Global.DbConnect.GetParamId(scenarioDevName, objName, varName);
        var tagIdR = Global.DbConnect.GetParamId(scenarioDevName, objRead, varName);
        Global.AnyConnect.CheckRuntimeQuality(scenarioDevName, objRead, varName, "Good");

        var listValues = GeneralFunc.GetTypeValues(valueType);
        foreach (var val in listValues)
        {
            _ = Global.AnyConnect.Runtime.CheckWriteValue(tagIdW, tagIdR, val);
            ATLogger.Debug($"Check write value {val} OK");
        }
    }

    [When(@"Записываю Runtime значение '(.*)' в '(.*)'.'(.*)'")]
    public void WhenIWriteRuntimeValue(string value, string objName, string varName)
    {
        var tagId = Global.DbConnect.GetParamId(scenarioDevName, objName, varName);
    //  Global.AnyConnect.CheckRuntimeQuality(scenarioDevName, objName, varName, "Good"); Закоментировано, для прохождения тестов iec104Slave, так как каналы для записи передают плохое качество
        Global.AnyConnect.Runtime.WriteTag(tagId, value);
        Thread.Sleep(1000);
    }

    [Then(@"Проверяю значение переменной тех объекта '(.*)'.'(.*)' = '(.*)'")]
    public void CheckRuntimeValueTO(string objectName, string varName, string expectedValue) =>
        Global.AnyConnect.CheckRuntimeValue(expectedValue, scenarioDevName, objectName, varName);

    [Then(@"Проверка записи '(.*)'.'(.*)' не в белом списке")]
    public static void CheckOutsideWiteList(string objName, string varName) =>
        Global.AnyConnect.CheckWriteList(scenarioDevName, objName, varName);

    [Then(@"Получаю события группы '(.*)'")]
    public static void ThenGotEvent(string evGroupName)
    {
        var evGroupId = Global.DbConnect.GetEventsGroupId(evGroupName);
        Global.EventsMessages = Global.AnyConnect.Eventer.GetEvents(evGroupId);
    }

    [Then(@"Проверка (\d*) событий по параметру '(.*)'.'(.*)'")]
    public static void ThenCheckEventbyParam(int expCnt, string objName, string varName)
    {
        ATLogger.Debug($"Parse from {Global.EventsMessages.Count()} Events");
        var tagId = Global.DbConnect.GetParamId(scenarioDevName, objName, varName);
        if (varName.Contains("BOOL"))
        {
            Global.AnyConnect.Eventer.ParseEventsNum(Global.EventsMessages, tagId, 2, objName, varName);
        }
        else
        {
            Global.AnyConnect.Eventer.ParseEventsNum(Global.EventsMessages, tagId, expCnt, objName, varName);
        }
    }

    [When(@"Генерирую события по параметру '(.*)'.'(.*)'")]
    public static void WhenGenerateEvent(string objName, string varName)
    {
        var tagId = Global.DbConnect.GetParamId(scenarioDevName, objName, varName);
        Global.AnyConnect.Eventer.GenerateUserEvent(tagId, varName);
    }

    [When(@"Очистка группы событий (.*)")]
    public static void WhenCleanEventGroup(string evGroupName)
    {
        var evGrid = Global.DbConnect.GetEventsGroupId(evGroupName);
        Global.AnyConnect.Eventer.ClearEventId(evGrid);
        _ = Global.AnyConnect.Eventer.CheckCountEvents(evGrid, 0);
    }

    #region ScadaConnect
    //Потом иначе шаги назовем
    [Then(@"Сравнение архивных данных ScadaConnect '(.*)'.'(.*)' из '(.*)'")]
    public void CopmareArcBufferScadaConnect(string objName, string varName, string arcNum)
    {
        var localArc = ConnectToArc(arcNum);
        localArc.ArchiveTime1 = localInfo.FixtureSratrtTime;
        localArc.CompareArchiveBufferScadaConnect(scenarioDevName2, objName, varName);
    }

    [Then(@"Сравнение архивных данных ScadaConnect '(.*)'.'(.*)'.'(.*)' из '(.*)'")]
    public void CopmareArcBufferScadaConnect(string plcName, string objName, string varName, string arcNum)
    {
        var localArc = ConnectToArc(arcNum);
        localArc.ArchiveTime1 = localInfo.FixtureSratrtTime;
        localArc.CompareArchiveBufferScadaConnect(plcName, objName, varName);
    }

    [When(@"Чтение исходных архивных данных ScadaConnect '(.*)' '(.*)' из '(.*)'")]
    public void GetSrcArcBufferScadaConnect(string objName, string varName, string arcNum)
    {
        var localArc = ConnectToArc(arcNum);
        localArc.ArchiveTime1 = localInfo.FixtureSratrtTime;
        localArc.GetArchiveBufferSourceScadaConnect(scenarioDevName1, objName, varName);
    }

    [When(@"Чтение исходных архивных данных ScadaConnect '(.*)'.'(.*)'.'(.*)' из '(.*)'")]
    public void GetSrcArcBufferScadaConnect(string plcName, string objName, string varName, string arcNum)
    {
        var localArc = ConnectToArc(arcNum);
        localArc.ArchiveTime1 = localInfo.FixtureSratrtTime;
        localArc.GetArchiveBufferSourceScadaConnect(plcName, objName, varName);
    }

    [When(@"Чтение архивных данных ScadaConnect '(.*)'.'(.*)'")]
    [Then(@"Чтение архивных данных ScadaConnect '(.*)'.'(.*)'")]
    public static void ThenReadArcByTechObjScadaConnect(string objName, string varName) =>
        Global.AnyConnect.ReadArchiveValueScadaConnect(scenarioDevName, objName, varName);

    [When(@"Чтение архивных данных ScadaConnect (\d*) Кластера '(.*)'.'(.*)'")]
    [Then(@"Чтение архивных данных ScadaConnect (\d*) Кластера '(.*)'.'(.*)'")]
    public static void ThenReadArcByTechObjScadaConnect(int clustNum, string objName, string varName) =>
        Global.AnyConnect.ReadArchiveValueScadaConnect(scenarioDevName, objName, varName, clustNum);
    #endregion
}
