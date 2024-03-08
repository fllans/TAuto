namespace ExchangeUtils.Tests;

using NUnit.Framework;
using System;
using TechTalk.SpecFlow;
using TestLib;
using TestLib.Archive;
using TestLib.Tools;

[Binding]
public sealed class TestHooks
{
    public static DateTime StartTestRunTime;

    public static string ip1 = "";
    public static string ip1r = "";
    public static string ip2 = "";
    public static string ip2r = "";

    [BeforeTestRun]
    public static void BeforeTestRun()
    {
        ATLogger.Info("Start TestRun Runtime.Tests");
        EnviromentFunctions.SetStartTestTime(true);
        StartTestRunTime = EnviromentFunctions.GetStartTestTime();

        Global.DbConnect = new DataBaseSql("d:\\QA_Proj\\QA\\AtV\\Tenix\\SCADABD.GDB", "projectserver.ivtek");

        // Шлюзы и Архивы
        ///////////////////////////////////////////
        // Work
        Connector.GetServerIP("work", out ip1, out ip1r, out ip2, out ip2r);
        Global.Gate_Work = new GeneralFunc
        {
            StartTime = StartTestRunTime,
            DbConnect = Global.DbConnect,
            Connect = new Connector(ip1, ip1r, ip2, ip2r, out bool _srvConnect),
            Eventer = new Events(),
            IsServerConnected = _srvConnect
        };
        Global.Gate_Work.InitTestCase();

        Global.Archive_Work = new ArchiveData(ActiveArchive.Any, ip1, ip1r, ip2, ip2r, out bool _arcConnect);
        Global.Gate_Work.IsArchiveConnected = _arcConnect;
        Global.Gate_Work.GetArcState("work", out Global.Gate_Work.archiveState1);

        // DataSrc
        Connector.GetServerIP("DataSrc", out ip1, out ip1r, out ip2, out ip2r);
        Global.Gate_DataSrc = new GeneralFunc
        {
            StartTime = StartTestRunTime,
            DbConnect = Global.DbConnect,
            Connect = new Connector(ip1, ip1r, ip2, ip2r, out _srvConnect),
            Eventer = new Events(),
            IsServerConnected = _srvConnect
        };
        Global.Gate_DataSrc.InitTestCase();

        Global.Archive_DataSrc = new ArchiveData(ActiveArchive.Any, ip1, ip1r, ip2, ip2r, out _arcConnect);
        Global.Gate_DataSrc.IsArchiveConnected = _arcConnect;
        Global.Gate_DataSrc.GetArcState("DataSrc", out Global.Gate_DataSrc.archiveState1, true);

        // DataReceiver
        Connector.GetServerIP("DataReceiver", out ip1, out ip1r, out ip2, out ip2r);
        Global.Gate_DataReciv = new GeneralFunc
        {
            StartTime = StartTestRunTime,
            DbConnect = Global.DbConnect,
            Connect = new Connector(ip1, ip1r, ip2, ip2r, out _srvConnect),
            Eventer = new Events(),
            IsServerConnected = _srvConnect
        };
        Global.Gate_DataReciv.InitTestCase();

        Global.Archive_DataReciv = new ArchiveData(ActiveArchive.Any, ip1, ip1r, ip2, ip2r, out _arcConnect);
        Global.Gate_DataReciv.IsArchiveConnected = _arcConnect;
        Global.Gate_DataReciv.GetArcState("DataReceiver", out Global.Gate_DataReciv.archiveState1, true);

        Global.Gate_Work.GetServertState("work");
        Global.Gate_DataSrc.GetServertState("DataSrc", true);
        Global.Gate_DataReciv.GetServertState("DataReceiver", true);

        // Зеркала
        ///////////////////////////////////////////
        ///
        /*
        // Work
        Connector.GetServerIP("MirrorWork", out ip1, out ip1r, out ip2, out ip2r);
        Global.MirrorGate_Work = new GeneralFunc
        {
            StartTime = StartTestRunTime,
            DbConnect = Global.DbConnect,
            Connect = new Connector(ip1, ip1r, ip2, ip2r, out _srvConnect),
            Eventer = new Events(),
            IsServerConnected = Global.Gate_Work.IsServerConnected && _srvConnect
        };
        Global.MirrorGate_Work.InitTestCase();

        Global.MirrorArchive_Work = new ArchiveData(ActiveArchive.Any, ip1, ip1r, ip2, ip2r, out _arcConnect);
        Global.MirrorGate_Work.IsArchiveConnected = _arcConnect;
        Global.MirrorGate_Work.GetArcState("Work", out Global.Gate_Work.archiveState1);

        // DataSrc
        Connector.GetServerIP("MirrorSrc", out ip1, out ip1r, out ip2, out ip2r);
        Global.MirrorGate_Src = new GeneralFunc
        {
            StartTime = StartTestRunTime,
            DbConnect = Global.DbConnect,
            Connect = new Connector(ip1, ip1r, ip2, ip2r, out _srvConnect),

            Eventer = new Events(),
            IsServerConnected = Global.Gate_DataSrc.IsServerConnected && _srvConnect
        };
        Global.MirrorGate_Src.InitTestCase();

        Connector.GetServerIP("MirrorArcSrc", out ip1, out ip1r, out ip2, out ip2r);
        Global.MirrorArchive_DataSrc = new ArchiveData(ActiveArchive.Any, ip1, ip1r, ip2, ip2r, out _arcConnect);

        Global.MirrorGate_Src.IsArchiveConnected = _arcConnect;
        Global.MirrorGate_Src.GetArcState("DataSrc", out Global.Gate_DataSrc.archiveState1, true);

        //  DataReceiver
        Connector.GetServerIP("MirrorReceiver", out ip1, out ip1r, out ip2, out ip2r);
        Global.MirrorGate_Reciv = new GeneralFunc
        {
            StartTime = StartTestRunTime,
            DbConnect = Global.DbConnect,
            Connect = new Connector(ip1, ip1r, ip2, ip2r, out _srvConnect),
            Eventer = new Events(),
            IsServerConnected = Global.Gate_DataReciv.IsServerConnected && _srvConnect
        };
        Global.MirrorGate_Reciv.InitTestCase();

        Connector.GetServerIP("MirrorArcReceiver", out ip1, out ip1r, out ip2, out ip2r);
        Global.MirrorArchive_DataReciv = new ArchiveData(ActiveArchive.Any, ip1, ip1r, ip2, ip2r, out _arcConnect);
        Global.MirrorGate_Reciv.IsArchiveConnected = _arcConnect;
        Global.MirrorGate_Reciv.GetArcState("DataReceiver", out Global.Gate_DataSrc.archiveState1, true);
        */

        Global.AnyConnect = new GeneralFunc { }; 
    }

    [AfterTestRun]
    public static void AfterTestRun()
    {
        ATLogger.Info($"AfterFeature {TestContext.CurrentContext.Test.ClassName.Replace("DataWriteReadTest.ChekRuntimeData.Features.", "")}");
        Global.Gate_Work.Connect.CloseConnect();
        Global.Gate_DataSrc.Connect.CloseConnect();
        Global.Gate_DataReciv.Connect.CloseConnect();
        Global.MirrorGate_Work.Connect.CloseConnect();
        Global.MirrorGate_Src.Connect.CloseConnect();
        Global.MirrorGate_Reciv.Connect.CloseConnect();
        DataBaseSql.CloseConnect();

    }

#if !DEBUG
    [AfterScenario(Order = int.MinValue)]
    public void AfterScenario()
    {
        //Меняем имя теста на уникальное, так как AllureReport неправильно обрабатывает результаты одного теста с разными наборами исходных данных.
        Allure.Commons.AllureLifecycle.Instance.UpdateTestCase(testCase =>
        {
            testCase.name = TestContext.CurrentContext.Test.Name.Replace(",null", "");
            testCase.historyId = TestContext.CurrentContext.Test.FullName.Replace(",null", "");
        });
    }
#endif
}
