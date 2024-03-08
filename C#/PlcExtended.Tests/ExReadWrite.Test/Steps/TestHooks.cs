namespace ExBinding.Tests;

using Alezy.Library.Core.Utils;
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
        
        // Work
        Connector.GetServerIP("work", out ip1, out ip1r, out ip2, out ip2r);
        Global.GateWork = new GeneralFunc
        {
            StartTime = StartTestRunTime,
            DbConnect = Global.DbConnect,
            Connect = new Connector(ip1, ip1r, ip2, ip2r, out var _srvConnect),
            Eventer = new Events(),
            IsServerConnected = _srvConnect
        };
        
        Global.GateWork.InitTestCase();
        Global.GateWork.GetServertState("work");
        Global.ArcWork = new ArchiveData(ActiveArchive.First, ip1, ip1r, ip2, ip2r, out var _arcConnect);
        Global.GateWork.IsArchiveConnected = _arcConnect;
    }

    [AfterTestRun]
    public static void AfterTestRun()
    {
        ATLogger.Info($"AfterFeature {TestContext.CurrentContext.Test.ClassName.NN().Replace("DataWriteReadTest.ChekRuntimeData.Features.", "")}");
        
        Global.GateWork.Connect.CloseConnect();
        DataBaseSql.CloseConnect();
    }

#if !DEBUG
    [AfterScenario(Order = int.MinValue)]
    public void AfterScenario()
    {
        Allure.Commons.AllureLifecycle.Instance.UpdateTestCase(testCase =>
        {
            testCase.name = TestContext.CurrentContext.Test.Name.Replace(",null", "");
            testCase.historyId = TestContext.CurrentContext.Test.FullName.Replace(",null", "");
        });
    }
#endif
}
