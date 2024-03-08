﻿// ------------------------------------------------------------------------------
//  <auto-generated>
//      This code was generated by SpecFlow (https://www.specflow.org/).
//      SpecFlow Version:3.9.0.0
//      SpecFlow Generator Version:3.9.0.0
// 
//      Changes to this file may cause incorrect behavior and will be lost if
//      the code is regenerated.
//  </auto-generated>
// ------------------------------------------------------------------------------
#region Designer generated code
#pragma warning disable
namespace ExBinding.Tests.Features
{
    using TechTalk.SpecFlow;
    using System;
    using System.Linq;
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("TechTalk.SpecFlow", "3.9.0.0")]
    [System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [NUnit.Framework.TestFixtureAttribute()]
    [NUnit.Framework.DescriptionAttribute("MKO_CPU715i_CPU715")]
    public partial class MKO_CPU715I_CPU715Feature
    {
        
        private TechTalk.SpecFlow.ITestRunner testRunner;
        
        private static string[] featureTags = ((string[])(null));
        
#line 1 "MKO_cpu715Li_cpu715Red.feature"
#line hidden
        
        [NUnit.Framework.OneTimeSetUpAttribute()]
        public virtual void FeatureSetup()
        {
            testRunner = TechTalk.SpecFlow.TestRunnerManager.GetTestRunner();
            TechTalk.SpecFlow.FeatureInfo featureInfo = new TechTalk.SpecFlow.FeatureInfo(new System.Globalization.CultureInfo("en-US"), "Features", "MKO_CPU715i_CPU715", null, ProgrammingLanguage.CSharp, featureTags);
            testRunner.OnFeatureStart(featureInfo);
        }
        
        [NUnit.Framework.OneTimeTearDownAttribute()]
        public virtual void FeatureTearDown()
        {
            testRunner.OnFeatureEnd();
            testRunner = null;
        }
        
        [NUnit.Framework.SetUpAttribute()]
        public void TestInitialize()
        {
        }
        
        [NUnit.Framework.TearDownAttribute()]
        public void TestTearDown()
        {
            testRunner.OnScenarioEnd();
        }
        
        public void ScenarioInitialize(TechTalk.SpecFlow.ScenarioInfo scenarioInfo)
        {
            testRunner.OnScenarioInitialize(scenarioInfo);
            testRunner.ScenarioContext.ScenarioContainer.RegisterInstanceAs<NUnit.Framework.TestContext>(NUnit.Framework.TestContext.CurrentContext);
        }
        
        public void ScenarioStart()
        {
            testRunner.OnScenarioStart();
        }
        
        public void ScenarioCleanup()
        {
            testRunner.CollectScenarioErrors();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("MKO_cpu715Li_cpu715Red_RuntimeCheak")]
        [NUnit.Framework.CategoryAttribute("EpicМКО/МРО")]
        [NUnit.Framework.CategoryAttribute("parentSuiteРасширенный_функционал_ПЛК")]
        [NUnit.Framework.CategoryAttribute("suiteМКО/МРО")]
        [NUnit.Framework.CategoryAttribute("subSuiteCPU715i_CPU715")]
        [NUnit.Framework.CategoryAttribute("critical")]
        public void MKO_Cpu715Li_Cpu715Red_RuntimeCheak()
        {
            string[] tagsOfScenario = new string[] {
                    "EpicМКО/МРО",
                    "parentSuiteРасширенный_функционал_ПЛК",
                    "suiteМКО/МРО",
                    "subSuiteCPU715i_CPU715",
                    "critical"};
            System.Collections.Specialized.OrderedDictionary argumentsOfScenario = new System.Collections.Specialized.OrderedDictionary();
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("MKO_cpu715Li_cpu715Red_RuntimeCheak", null, tagsOfScenario, argumentsOfScenario, featureTags);
#line 9
 this.ScenarioInitialize(scenarioInfo);
#line hidden
            if ((TagHelper.ContainsIgnoreTag(tagsOfScenario) || TagHelper.ContainsIgnoreTag(featureTags)))
            {
                testRunner.SkipScenario();
            }
            else
            {
                this.ScenarioStart();
#line 12
 testRunner.Given("Шлюзы \'work\' в работе", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 13
 testRunner.Given("Связь с устройством \'cpu715_Red\' в норме", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 15
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CPU715i_BOOL\'.\'\' с \'cpu715_LI_Red\'.\'resVar_BOOL\'.\'" +
                        "\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 16
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CPU715i_BYTE\'.\'\' с \'cpu715_LI_Red\'.\'resVar_BYTE\'.\'" +
                        "\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 17
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CPU715i_DATE\'.\'\' с \'cpu715_LI_Red\'.\'resVar_DATE\'.\'" +
                        "\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 18
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CPU715i_DINT\'.\'\' с \'cpu715_LI_Red\'.\'resVar_DINT\'.\'" +
                        "\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 19
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CPU715i_DWORD\'.\'\' с \'cpu715_LI_Red\'.\'resVar_DWORD\'" +
                        ".\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 20
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CPU715i_INT\'.\'\' с \'cpu715_LI_Red\'.\'resVar_INT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 21
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CPU715i_LINT\'.\'\' с \'cpu715_LI_Red\'.\'resVar_LINT\'.\'" +
                        "\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 22
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CPU715i_LREAL\'.\'\' с \'cpu715_LI_Red\'.\'resVar_LREAL\'" +
                        ".\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 23
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CPU715i_LWORD\'.\'\' с \'cpu715_LI_Red\'.\'resVar_LWORD\'" +
                        ".\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 24
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CPU715i_REAL\'.\'\' с \'cpu715_LI_Red\'.\'resVar_REAL\'.\'" +
                        "\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 25
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CPU715i_SINT\'.\'\' с \'cpu715_LI_Red\'.\'resVar_SINT\'.\'" +
                        "\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 26
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CPU715i_TIME\'.\'\' с \'cpu715_LI_Red\'.\'resVar_TIME\'.\'" +
                        "\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 27
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CPU715i_UDINT\'.\'\' с \'cpu715_LI_Red\'.\'resVar_UDINT\'" +
                        ".\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 28
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CPU715i_UINT\'.\'\' с \'cpu715_LI_Red\'.\'resVar_UINT\'.\'" +
                        "\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 29
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CPU715i_ULINT\'.\'\' с \'cpu715_LI_Red\'.\'resVar_ULINT\'" +
                        ".\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 30
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CPU715i_USINT\'.\'\' с \'cpu715_LI_Red\'.\'resVar_USINT\'" +
                        ".\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 31
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CPU715i_WORD\'.\'\' с \'cpu715_LI_Red\'.\'resVar_WORD\'.\'" +
                        "\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 34
 testRunner.Given("Связь с устройством \'cpu715_LI_Red\' в норме", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 36
 testRunner.Then("Сравниваю значение \'MKO_CPU715i_CPU715_CONTROL_BOOL\'.\'\' с \'cpu715_LI_Red\'.\'resVar" +
                        "_BOOL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 37
 testRunner.Then("Сравниваю значение \'MKO_CPU715i_CPU715_CONTROL_BYTE\'.\'\' с \'cpu715_LI_Red\'.\'resVar" +
                        "_BYTE\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 38
 testRunner.Then("Сравниваю значение \'MKO_CPU715i_CPU715_CONTROL_DATE\'.\'\' с \'cpu715_LI_Red\'.\'resVar" +
                        "_DATE\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 39
 testRunner.Then("Сравниваю значение \'MKO_CPU715i_CPU715_CONTROL_DINT\'.\'\' с \'cpu715_LI_Red\'.\'resVar" +
                        "_DINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 40
 testRunner.Then("Сравниваю значение \'MKO_CPU715i_CPU715_CONTROL_DWORD\'.\'\' с \'cpu715_LI_Red\'.\'resVa" +
                        "r_DWORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 41
 testRunner.Then("Сравниваю значение \'MKO_CPU715i_CPU715_CONTROL_INT\'.\'\' с \'cpu715_LI_Red\'.\'resVar_" +
                        "INT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 42
 testRunner.Then("Сравниваю значение \'MKO_CPU715i_CPU715_CONTROL_LINT\'.\'\' с \'cpu715_LI_Red\'.\'resVar" +
                        "_LINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 43
 testRunner.Then("Сравниваю значение \'MKO_CPU715i_CPU715_CONTROL_LREAL\'.\'\' с \'cpu715_LI_Red\'.\'resVa" +
                        "r_LREAL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 44
 testRunner.Then("Сравниваю значение \'MKO_CPU715i_CPU715_CONTROL_LWORD\'.\'\' с \'cpu715_LI_Red\'.\'resVa" +
                        "r_LWORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 45
 testRunner.Then("Сравниваю значение \'MKO_CPU715i_CPU715_CONTROL_REAL\'.\'\' с \'cpu715_LI_Red\'.\'resVar" +
                        "_REAL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 46
 testRunner.Then("Сравниваю значение \'MKO_CPU715i_CPU715_CONTROL_SINT\'.\'\' с \'cpu715_LI_Red\'.\'resVar" +
                        "_SINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 47
 testRunner.Then("Сравниваю значение \'MKO_CPU715i_CPU715_CONTROL_TIME\'.\'\' с \'cpu715_LI_Red\'.\'resVar" +
                        "_TIME\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 48
 testRunner.Then("Сравниваю значение \'MKO_CPU715i_CPU715_CONTROL_UDINT\'.\'\' с \'cpu715_LI_Red\'.\'resVa" +
                        "r_UDINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 49
 testRunner.Then("Сравниваю значение \'MKO_CPU715i_CPU715_CONTROL_UINT\'.\'\' с \'cpu715_LI_Red\'.\'resVar" +
                        "_UINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 50
 testRunner.Then("Сравниваю значение \'MKO_CPU715i_CPU715_CONTROL_ULINT\'.\'\' с \'cpu715_LI_Red\'.\'resVa" +
                        "r_ULINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 51
 testRunner.Then("Сравниваю значение \'MKO_CPU715i_CPU715_CONTROL_USINT\'.\'\' с \'cpu715_LI_Red\'.\'resVa" +
                        "r_USINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 52
 testRunner.Then("Сравниваю значение \'MKO_CPU715i_CPU715_CONTROL_WORD\'.\'\' с \'cpu715_LI_Red\'.\'resVar" +
                        "_WORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
            }
            this.ScenarioCleanup();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("MKO_cpu715Li_cpu715Red_ArchiveCheck")]
        [NUnit.Framework.CategoryAttribute("EpicМКО/МРО")]
        [NUnit.Framework.CategoryAttribute("parentSuiteРасширенный_функционал_ПЛК")]
        [NUnit.Framework.CategoryAttribute("suiteМКО/МРО")]
        [NUnit.Framework.CategoryAttribute("subSuiteCPU715i_CPU715")]
        [NUnit.Framework.CategoryAttribute("critical")]
        public void MKO_Cpu715Li_Cpu715Red_ArchiveCheck()
        {
            string[] tagsOfScenario = new string[] {
                    "EpicМКО/МРО",
                    "parentSuiteРасширенный_функционал_ПЛК",
                    "suiteМКО/МРО",
                    "subSuiteCPU715i_CPU715",
                    "critical"};
            System.Collections.Specialized.OrderedDictionary argumentsOfScenario = new System.Collections.Specialized.OrderedDictionary();
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("MKO_cpu715Li_cpu715Red_ArchiveCheck", null, tagsOfScenario, argumentsOfScenario, featureTags);
#line 60
 this.ScenarioInitialize(scenarioInfo);
#line hidden
            if ((TagHelper.ContainsIgnoreTag(tagsOfScenario) || TagHelper.ContainsIgnoreTag(featureTags)))
            {
                testRunner.SkipScenario();
            }
            else
            {
                this.ScenarioStart();
#line 63
 testRunner.Given("Шлюзы \'work\' в работе", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 64
 testRunner.Given("Связь с устройством \'cpu715_LI_Red\' в норме", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 65
 testRunner.Given("Соединение с 1 Архивом \'ArcWork\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 66
 testRunner.Given("Связь с устройством \'cpu715_Red\' в норме", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 67
 testRunner.Given("Соединение с 2 Архивом \'ArcWork\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 69
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CPU715i_BOOL\'.\'\' с \'cpu715_LI_Red\'.\'resVar_" +
                        "BOOL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 70
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CPU715i_BYTE\'.\'\' с \'cpu715_LI_Red\'.\'resVar_" +
                        "BYTE\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 71
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CPU715i_DATE\'.\'\' с \'cpu715_LI_Red\'.\'resVar_" +
                        "DATE\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 72
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CPU715i_DINT\'.\'\' с \'cpu715_LI_Red\'.\'resVar_" +
                        "DINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 73
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CPU715i_DWORD\'.\'\' с \'cpu715_LI_Red\'.\'resVar" +
                        "_DWORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 74
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CPU715i_INT\'.\'\' с \'cpu715_LI_Red\'.\'resVar_I" +
                        "NT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 75
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CPU715i_LINT\'.\'\' с \'cpu715_LI_Red\'.\'resVar_" +
                        "LINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 76
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CPU715i_LREAL\'.\'\' с \'cpu715_LI_Red\'.\'resVar" +
                        "_LREAL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 77
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CPU715i_LWORD\'.\'\' с \'cpu715_LI_Red\'.\'resVar" +
                        "_LWORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 78
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CPU715i_REAL\'.\'\' с \'cpu715_LI_Red\'.\'resVar_" +
                        "REAL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 79
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CPU715i_SINT\'.\'\' с \'cpu715_LI_Red\'.\'resVar_" +
                        "SINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 80
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CPU715i_TIME\'.\'\' с \'cpu715_LI_Red\'.\'resVar_" +
                        "TIME\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 81
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CPU715i_UDINT\'.\'\' с \'cpu715_LI_Red\'.\'resVar" +
                        "_UDINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 82
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CPU715i_UINT\'.\'\' с \'cpu715_LI_Red\'.\'resVar_" +
                        "UINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 83
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CPU715i_ULINT\'.\'\' с \'cpu715_LI_Red\'.\'resVar" +
                        "_ULINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 84
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CPU715i_USINT\'.\'\' с \'cpu715_LI_Red\'.\'resVar" +
                        "_USINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 85
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CPU715i_WORD\'.\'\' с \'cpu715_LI_Red\'.\'resVar_" +
                        "WORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 88
 testRunner.Given("Связь с устройством \'cpu715_LI_Red\' в норме", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 90
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715i_CPU715_CONTROL_BOOL\'.\'\' с \'cpu715_LI_Red\'." +
                        "\'resVar_BOOL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 91
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715i_CPU715_CONTROL_BYTE\'.\'\' с \'cpu715_LI_Red\'." +
                        "\'resVar_BYTE\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 92
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715i_CPU715_CONTROL_DATE\'.\'\' с \'cpu715_LI_Red\'." +
                        "\'resVar_DATE\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 93
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715i_CPU715_CONTROL_DINT\'.\'\' с \'cpu715_LI_Red\'." +
                        "\'resVar_DINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 94
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715i_CPU715_CONTROL_DWORD\'.\'\' с \'cpu715_LI_Red\'" +
                        ".\'resVar_DWORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 95
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715i_CPU715_CONTROL_INT\'.\'\' с \'cpu715_LI_Red\'.\'" +
                        "resVar_INT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 96
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715i_CPU715_CONTROL_LINT\'.\'\' с \'cpu715_LI_Red\'." +
                        "\'resVar_LINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 97
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715i_CPU715_CONTROL_LREAL\'.\'\' с \'cpu715_LI_Red\'" +
                        ".\'resVar_LREAL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 98
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715i_CPU715_CONTROL_LWORD\'.\'\' с \'cpu715_LI_Red\'" +
                        ".\'resVar_LWORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 99
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715i_CPU715_CONTROL_REAL\'.\'\' с \'cpu715_LI_Red\'." +
                        "\'resVar_REAL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 100
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715i_CPU715_CONTROL_SINT\'.\'\' с \'cpu715_LI_Red\'." +
                        "\'resVar_SINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 101
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715i_CPU715_CONTROL_TIME\'.\'\' с \'cpu715_LI_Red\'." +
                        "\'resVar_TIME\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 102
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715i_CPU715_CONTROL_UDINT\'.\'\' с \'cpu715_LI_Red\'" +
                        ".\'resVar_UDINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 103
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715i_CPU715_CONTROL_UINT\'.\'\' с \'cpu715_LI_Red\'." +
                        "\'resVar_UINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 104
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715i_CPU715_CONTROL_ULINT\'.\'\' с \'cpu715_LI_Red\'" +
                        ".\'resVar_ULINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 105
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715i_CPU715_CONTROL_USINT\'.\'\' с \'cpu715_LI_Red\'" +
                        ".\'resVar_USINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 106
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715i_CPU715_CONTROL_WORD\'.\'\' с \'cpu715_LI_Red\'." +
                        "\'resVar_WORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
            }
            this.ScenarioCleanup();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("MKO_cpu715Li_cpu715Red_ErrorCheck")]
        [NUnit.Framework.CategoryAttribute("EpicМКО/МРО")]
        [NUnit.Framework.CategoryAttribute("parentSuiteРасширенный_функционал_ПЛК")]
        [NUnit.Framework.CategoryAttribute("suiteМКО/МРО")]
        [NUnit.Framework.CategoryAttribute("subSuiteCPU715i_CPU715")]
        [NUnit.Framework.CategoryAttribute("critical")]
        public void MKO_Cpu715Li_Cpu715Red_ErrorCheck()
        {
            string[] tagsOfScenario = new string[] {
                    "EpicМКО/МРО",
                    "parentSuiteРасширенный_функционал_ПЛК",
                    "suiteМКО/МРО",
                    "subSuiteCPU715i_CPU715",
                    "critical"};
            System.Collections.Specialized.OrderedDictionary argumentsOfScenario = new System.Collections.Specialized.OrderedDictionary();
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("MKO_cpu715Li_cpu715Red_ErrorCheck", null, tagsOfScenario, argumentsOfScenario, featureTags);
#line 114
 this.ScenarioInitialize(scenarioInfo);
#line hidden
            if ((TagHelper.ContainsIgnoreTag(tagsOfScenario) || TagHelper.ContainsIgnoreTag(featureTags)))
            {
                testRunner.SkipScenario();
            }
            else
            {
                this.ScenarioStart();
#line 117
 testRunner.Given("Шлюзы \'work\' в работе", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 118
 testRunner.Given("Связь с устройством \'cpu715_LI_Red\' в норме", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 120
 testRunner.Then("Сравниваю значение \'CPU715i_CPU715_ERRORCNT\'.\'\' с допустимым \'0\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
            }
            this.ScenarioCleanup();
        }
    }
}
#pragma warning restore
#endregion
