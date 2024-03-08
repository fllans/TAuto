namespace ExBinding.Tests;

using System;
using TechTalk.SpecFlow;
using TestLib;
using TestLib.Tools;

[Binding]
public sealed class TestSteps
{
    public DateTime FixtureSratrtTime { get; set; }
    public String scenarioGate = "";
    public static bool stepDeviceOk = false;
    public static string scenarioDevName = "anyDevice";
    public GeneralFunc scenarioArc1src = null;
    public GeneralFunc scenarioArc2trg = null;

    /// <summary>
    /// Проверка состояние шлюза
    /// </summary>
    /// <param name="gateName">Марка шлюза</param>
    [Given(@"Шлюзы '(.*)' в работе")]
    public void CheckServerState(string gateName)
    {
        Global.GateWork.CheckServerState(gateName);
        scenarioGate = gateName;
        FixtureSratrtTime = DateTime.UtcNow.AddMinutes(-17);
    }

    /// <summary>
    /// Подключение к архиву
    /// </summary>
    /// <param name="arcName">Марка архива</param>
    [Given(@"Соединение с Архивом '(.*)'")]
    public void ConnectingToArchiveStep(string arcName) => EstablishArchiveConnection(arcName);

    private GeneralFunc EstablishArchiveConnection(string arcName)
    {
        Global.GateWork.ArcConnect = arcName switch
        {
            "ArcWork" => Global.ArcWork,
            // "ArcReciv" => Global.ArcReciv
            // "ArcDataSrc" => Global.ArcDataSrc
            _ => Global.ArcWork,
        };

        return Global.GateWork;
    }

    /// <summary>
    /// Подключение к двум архивам
    /// </summary>
    /// <param name="devN">Номер архива</param>
    /// <param name="arcName">Марка архива</param>
    [Given(@"Соединение с (\d*) Архивом '(.*)'")]
    public void ConnectToArc(int devN, string arcName)
    {
        scenarioArc1src = devN == 1 
            ? EstablishArchiveConnection(arcName) 
            : scenarioArc1src;
        
        scenarioArc2trg = devN == 2 
            ? EstablishArchiveConnection(arcName) 
            : scenarioArc2trg;
    }

    /// <summary>
    /// Проверка связи с источником данных
    /// </summary>
    /// <param name="device">Марка источника данных</param>
    [Given("Связь с устройством '(.*)' в норме")]
    public void GivenCheckConnectDev(string device)
    {
        ATLogger.ToDo("RuntimeTest. GivenCheckConnectDev - disable");
        // Global.GateWork.CheckScenarioDevice(device);
        scenarioDevName = device;
    }

    /// <summary>
    /// Сравнение полученных со шлюза переменных с эталонными
    /// </summary>
    /// <param name="objNameReceived">Марка сравниваемого технологического объекта</param>
    /// <param name="varNameReceived">Название сравниваемого канала</param>
    /// <param name="plcNameExpected">Марка источника эталонных данных</param>
    /// <param name="objNameExpected">Марка эталонного технологического объекта</param>
    /// <param name="varNameExpected">Название эталонного канала</param>
    [Then(@"Сравниваю значение '(.*)'.'(.*)' с '(.*)'.'(.*)'.'(.*)'")]
    public void CheckTwoRuntimeValuesServer(string objNameReceived, string varNameReceived, string plcNameExpected, string objNameExpected, string varNameExpected)
    {
        varNameReceived = varNameReceived == "" ? "Значение" : varNameReceived;
        varNameExpected = varNameExpected == "" ? "Значение" : varNameExpected;

        Global.GateWork.CheckRuntimeValueServer(scenarioDevName, objNameReceived, varNameReceived, plcNameExpected, objNameExpected, varNameExpected);
    }

    /// <summary>
    /// Сравнение полученных со шлюза переменных с допустимым значением
    /// </summary>
    /// <param name="objName">Марка сравниваемого технологического объекта</param>
    /// <param name="varName">Название сравниваемого канала</param>
    /// <param name="valueExpected">Максимально допустимое значение</param>
    [Then(@"Сравниваю значение '(.*)'.'(.*)' с допустимым '(.*)'")]
    public void CheckTwoRuntimeValuesWithExpect(string objName, string varName, int valueExpected)
    {
        varName = varName == "" ? "Значение" : varName;

        if (Global.GateWork.CheckRuntimeValueWithExpect(scenarioDevName, objName, varName, valueExpected))
        {
            Global.GateWork.WriteRuntimeValue("0", scenarioDevName, objName, varName);
        }
    }

    /// <summary>
    /// Сравнение полученных архивных данных с эталонными архивными данными
    /// </summary>
    /// <param name="objName">Марка технологического объекта</param>
    /// <param name="varName">Название канала</param>
    /// <param name="ControlPlcName">Марка источника эталонных данных</param>
    /// <param name="ControlObjectName">Марка эталонного технологического объекта</param>
    /// <param name="ControlVarName">>Название эталонного канала</param>
    [Then(@"Сравнение архивных данных '(.*)'.'(.*)' с '(.*)'.'(.*)'.'(.*)'")]
    public void GetAndCopmareArcBuffer(string objName, string varName, string ControlPlcName, string ControlObjectName, string ControlVarName)
    {
        varName = varName == "" ? "Значение" : varName;
        ControlVarName = ControlVarName == "" ? "Значение" : ControlVarName;

        scenarioArc1src.ArchiveTime1 = FixtureSratrtTime;
        scenarioArc1src.GetArchiveBuffer(ControlPlcName, ControlObjectName, ControlVarName);
        scenarioArc2trg.ArchiveTime1 = FixtureSratrtTime;
        scenarioArc2trg.CompareArchiveBuffer(scenarioDevName, objName, varName);
    }
}
