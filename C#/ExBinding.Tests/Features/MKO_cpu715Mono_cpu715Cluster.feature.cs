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
    [NUnit.Framework.DescriptionAttribute("MKO_CPU715_MONO_CPU715_CLUSTER")]
    public partial class MKO_CPU715_MONO_CPU715_CLUSTERFeature
    {
        
        private TechTalk.SpecFlow.ITestRunner testRunner;
        
        private static string[] featureTags = ((string[])(null));
        
#line 1 "MKO_cpu715Mono_cpu715Cluster.feature"
#line hidden
        
        [NUnit.Framework.OneTimeSetUpAttribute()]
        public virtual void FeatureSetup()
        {
            testRunner = TechTalk.SpecFlow.TestRunnerManager.GetTestRunner();
            TechTalk.SpecFlow.FeatureInfo featureInfo = new TechTalk.SpecFlow.FeatureInfo(new System.Globalization.CultureInfo("en-US"), "Features", "MKO_CPU715_MONO_CPU715_CLUSTER", null, ProgrammingLanguage.CSharp, featureTags);
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
        [NUnit.Framework.DescriptionAttribute("MKO_cpu715Mono_cpu715Cluster_RuntimeCheak")]
        [NUnit.Framework.CategoryAttribute("EpicМКО/МРО")]
        [NUnit.Framework.CategoryAttribute("parentSuiteРасширенный_функционал_ПЛК")]
        [NUnit.Framework.CategoryAttribute("suiteМКО/МРО")]
        [NUnit.Framework.CategoryAttribute("subSuiteCPU715_MONO_CPU715_CLUSTER")]
        [NUnit.Framework.CategoryAttribute("critical")]
        public void MKO_Cpu715Mono_Cpu715Cluster_RuntimeCheak()
        {
            string[] tagsOfScenario = new string[] {
                    "EpicМКО/МРО",
                    "parentSuiteРасширенный_функционал_ПЛК",
                    "suiteМКО/МРО",
                    "subSuiteCPU715_MONO_CPU715_CLUSTER",
                    "critical"};
            System.Collections.Specialized.OrderedDictionary argumentsOfScenario = new System.Collections.Specialized.OrderedDictionary();
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("MKO_cpu715Mono_cpu715Cluster_RuntimeCheak", null, tagsOfScenario, argumentsOfScenario, featureTags);
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
 testRunner.Given("Связь с устройством \'cpu715_Cluster\' в норме", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 15
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CLUSTER_CPU715_MONO_BOOL\'.\'\' с \'cpu715_Mono\'.\'resV" +
                        "ar_BOOL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 16
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CLUSTER_CPU715_MONO_BYTE\'.\'\' с \'cpu715_Mono\'.\'resV" +
                        "ar_BYTE\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 17
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CLUSTER_CPU715_MONO_DATE\'.\'\' с \'cpu715_Mono\'.\'resV" +
                        "ar_DATE\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 18
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CLUSTER_CPU715_MONO_DINT\'.\'\' с \'cpu715_Mono\'.\'resV" +
                        "ar_DINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 19
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CLUSTER_CPU715_MONO_DWORD\'.\'\' с \'cpu715_Mono\'.\'res" +
                        "Var_DWORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 20
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CLUSTER_CPU715_MONO_INT\'.\'\' с \'cpu715_Mono\'.\'resVa" +
                        "r_INT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 21
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CLUSTER_CPU715_MONO_LINT\'.\'\' с \'cpu715_Mono\'.\'resV" +
                        "ar_LINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 22
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CLUSTER_CPU715_MONO_LREAL\'.\'\' с \'cpu715_Mono\'.\'res" +
                        "Var_LREAL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 23
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CLUSTER_CPU715_MONO_LWORD\'.\'\' с \'cpu715_Mono\'.\'res" +
                        "Var_LWORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 24
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CLUSTER_CPU715_MONO_REAL\'.\'\' с \'cpu715_Mono\'.\'resV" +
                        "ar_REAL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 25
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CLUSTER_CPU715_MONO_SINT\'.\'\' с \'cpu715_Mono\'.\'resV" +
                        "ar_SINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 26
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CLUSTER_CPU715_MONO_TIME\'.\'\' с \'cpu715_Mono\'.\'resV" +
                        "ar_TIME\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 27
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CLUSTER_CPU715_MONO_UDINT\'.\'\' с \'cpu715_Mono\'.\'res" +
                        "Var_UDINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 28
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CLUSTER_CPU715_MONO_UINT\'.\'\' с \'cpu715_Mono\'.\'resV" +
                        "ar_UINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 29
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CLUSTER_CPU715_MONO_ULINT\'.\'\' с \'cpu715_Mono\'.\'res" +
                        "Var_ULINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 30
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CLUSTER_CPU715_MONO_USINT\'.\'\' с \'cpu715_Mono\'.\'res" +
                        "Var_USINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 31
 testRunner.Then("Сравниваю значение \'MKO_CPU715_CLUSTER_CPU715_MONO_WORD\'.\'\' с \'cpu715_Mono\'.\'resV" +
                        "ar_WORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 34
 testRunner.Given("Связь с устройством \'cpu715_Mono\' в норме", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 36
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_BOOL_CPU1\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_BOOL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 37
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_BYTE_CPU1\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_BYTE\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 38
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DATE_CPU1\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_DATE\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 39
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DINT_CPU1\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_DINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 40
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DWORD_CPU1\'.\'\' с \'cpu7" +
                        "15_Mono\'.\'resVar_DWORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 41
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_INT_CPU1\'.\'\' с \'cpu715" +
                        "_Mono\'.\'resVar_INT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 42
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LINT_CPU1\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_LINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 43
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LREAL_CPU1\'.\'\' с \'cpu7" +
                        "15_Mono\'.\'resVar_LREAL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 44
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LWORD_CPU1\'.\'\' с \'cpu7" +
                        "15_Mono\'.\'resVar_LWORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 45
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_REAL_CPU1\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_REAL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 46
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_SINT_CPU1\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_SINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 47
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_TIME_CPU1\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_TIME\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 48
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_UDINT_CPU1\'.\'\' с \'cpu7" +
                        "15_Mono\'.\'resVar_UDINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 49
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_UINT_CPU1\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_UINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 50
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_ULINT_CPU1\'.\'\' с \'cpu7" +
                        "15_Mono\'.\'resVar_ULINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 51
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_USINT_CPU1\'.\'\' с \'cpu7" +
                        "15_Mono\'.\'resVar_USINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 52
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_WORD_CPU1\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_WORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 54
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_BOOL_CPU2\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_BOOL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 55
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_BYTE_CPU2\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_BYTE\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 56
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DATE_CPU2\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_DATE\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 57
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DINT_CPU2\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_DINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 58
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DWORD_CPU2\'.\'\' с \'cpu7" +
                        "15_Mono\'.\'resVar_DWORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 59
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_INT_CPU2\'.\'\' с \'cpu715" +
                        "_Mono\'.\'resVar_INT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 60
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LINT_CPU2\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_LINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 61
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LREAL_CPU2\'.\'\' с \'cpu7" +
                        "15_Mono\'.\'resVar_LREAL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 62
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LWORD_CPU2\'.\'\' с \'cpu7" +
                        "15_Mono\'.\'resVar_LWORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 63
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_REAL_CPU2\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_REAL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 64
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_SINT_CPU2\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_SINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 65
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_TIME_CPU2\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_TIME\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 66
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_UDINT_CPU2\'.\'\' с \'cpu7" +
                        "15_Mono\'.\'resVar_UDINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 67
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_UINT_CPU2\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_UINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 68
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_ULINT_CPU2\'.\'\' с \'cpu7" +
                        "15_Mono\'.\'resVar_ULINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 69
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_USINT_CPU2\'.\'\' с \'cpu7" +
                        "15_Mono\'.\'resVar_USINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 70
 testRunner.Then("Сравниваю значение \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_WORD_CPU2\'.\'\' с \'cpu71" +
                        "5_Mono\'.\'resVar_WORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
            }
            this.ScenarioCleanup();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("MKO_cpu715Mono_cpu715Cluster_ArchiveCheck")]
        [NUnit.Framework.CategoryAttribute("EpicМКО/МРО")]
        [NUnit.Framework.CategoryAttribute("parentSuiteРасширенный_функционал_ПЛК")]
        [NUnit.Framework.CategoryAttribute("suiteМКО/МРО")]
        [NUnit.Framework.CategoryAttribute("subSuiteCPU715_MONO_CPU715_CLUSTER")]
        [NUnit.Framework.CategoryAttribute("critical")]
        public void MKO_Cpu715Mono_Cpu715Cluster_ArchiveCheck()
        {
            string[] tagsOfScenario = new string[] {
                    "EpicМКО/МРО",
                    "parentSuiteРасширенный_функционал_ПЛК",
                    "suiteМКО/МРО",
                    "subSuiteCPU715_MONO_CPU715_CLUSTER",
                    "critical"};
            System.Collections.Specialized.OrderedDictionary argumentsOfScenario = new System.Collections.Specialized.OrderedDictionary();
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("MKO_cpu715Mono_cpu715Cluster_ArchiveCheck", null, tagsOfScenario, argumentsOfScenario, featureTags);
#line 78
 this.ScenarioInitialize(scenarioInfo);
#line hidden
            if ((TagHelper.ContainsIgnoreTag(tagsOfScenario) || TagHelper.ContainsIgnoreTag(featureTags)))
            {
                testRunner.SkipScenario();
            }
            else
            {
                this.ScenarioStart();
#line 81
 testRunner.Given("Шлюзы \'work\' в работе", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 82
 testRunner.Given("Связь с устройством \'cpu715_Mono\' в норме", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 83
 testRunner.Given("Соединение с 1 Архивом \'ArcWork\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 84
 testRunner.Given("Связь с устройством \'cpu715_Cluster\' в норме", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 85
 testRunner.Given("Соединение с 2 Архивом \'ArcWork\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 87
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CLUSTER_CPU715_MONO_BOOL\'.\'\' с \'cpu715_Mono" +
                        "\'.\'resVar_BOOL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 88
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CLUSTER_CPU715_MONO_BYTE\'.\'\' с \'cpu715_Mono" +
                        "\'.\'resVar_BYTE\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 89
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CLUSTER_CPU715_MONO_DATE\'.\'\' с \'cpu715_Mono" +
                        "\'.\'resVar_DATE\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 90
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CLUSTER_CPU715_MONO_DINT\'.\'\' с \'cpu715_Mono" +
                        "\'.\'resVar_DINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 91
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CLUSTER_CPU715_MONO_DWORD\'.\'\' с \'cpu715_Mon" +
                        "o\'.\'resVar_DWORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 92
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CLUSTER_CPU715_MONO_INT\'.\'\' с \'cpu715_Mono\'" +
                        ".\'resVar_INT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 93
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CLUSTER_CPU715_MONO_LINT\'.\'\' с \'cpu715_Mono" +
                        "\'.\'resVar_LINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 94
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CLUSTER_CPU715_MONO_LREAL\'.\'\' с \'cpu715_Mon" +
                        "o\'.\'resVar_LREAL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 95
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CLUSTER_CPU715_MONO_LWORD\'.\'\' с \'cpu715_Mon" +
                        "o\'.\'resVar_LWORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 96
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CLUSTER_CPU715_MONO_REAL\'.\'\' с \'cpu715_Mono" +
                        "\'.\'resVar_REAL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 97
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CLUSTER_CPU715_MONO_SINT\'.\'\' с \'cpu715_Mono" +
                        "\'.\'resVar_SINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 98
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CLUSTER_CPU715_MONO_TIME\'.\'\' с \'cpu715_Mono" +
                        "\'.\'resVar_TIME\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 99
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CLUSTER_CPU715_MONO_UDINT\'.\'\' с \'cpu715_Mon" +
                        "o\'.\'resVar_UDINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 100
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CLUSTER_CPU715_MONO_UINT\'.\'\' с \'cpu715_Mono" +
                        "\'.\'resVar_UINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 101
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CLUSTER_CPU715_MONO_ULINT\'.\'\' с \'cpu715_Mon" +
                        "o\'.\'resVar_ULINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 102
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CLUSTER_CPU715_MONO_USINT\'.\'\' с \'cpu715_Mon" +
                        "o\'.\'resVar_USINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 103
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_CLUSTER_CPU715_MONO_WORD\'.\'\' с \'cpu715_Mono" +
                        "\'.\'resVar_WORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 106
 testRunner.Given("Связь с устройством \'cpu715_Mono\' в норме", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 108
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_BOOL_CPU1\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_BOOL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 109
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_BYTE_CPU1\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_BYTE\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 110
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DATE_CPU1\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_DATE\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 111
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DINT_CPU1\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_DINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 112
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DWORD_CPU1\'.\'\' " +
                        "с \'cpu715_Mono\'.\'resVar_DWORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 113
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_INT_CPU1\'.\'\' с " +
                        "\'cpu715_Mono\'.\'resVar_INT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 114
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LINT_CPU1\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_LINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 115
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LREAL_CPU1\'.\'\' " +
                        "с \'cpu715_Mono\'.\'resVar_LREAL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 116
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LWORD_CPU1\'.\'\' " +
                        "с \'cpu715_Mono\'.\'resVar_LWORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 117
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_REAL_CPU1\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_REAL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 118
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_SINT_CPU1\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_SINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 119
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_TIME_CPU1\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_TIME\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 120
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_UDINT_CPU1\'.\'\' " +
                        "с \'cpu715_Mono\'.\'resVar_UDINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 121
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_UINT_CPU1\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_UINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 122
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_ULINT_CPU1\'.\'\' " +
                        "с \'cpu715_Mono\'.\'resVar_ULINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 123
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_USINT_CPU1\'.\'\' " +
                        "с \'cpu715_Mono\'.\'resVar_USINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 124
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_WORD_CPU1\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_WORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 126
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_BOOL_CPU2\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_BOOL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 127
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_BYTE_CPU2\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_BYTE\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 128
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DATE_CPU2\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_DATE\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 129
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DINT_CPU2\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_DINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 130
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DWORD_CPU2\'.\'\' " +
                        "с \'cpu715_Mono\'.\'resVar_DWORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 131
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_INT_CPU2\'.\'\' с " +
                        "\'cpu715_Mono\'.\'resVar_INT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 132
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LINT_CPU2\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_LINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 133
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LREAL_CPU2\'.\'\' " +
                        "с \'cpu715_Mono\'.\'resVar_LREAL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 134
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LWORD_CPU2\'.\'\' " +
                        "с \'cpu715_Mono\'.\'resVar_LWORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 135
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_REAL_CPU2\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_REAL\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 136
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_SINT_CPU2\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_SINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 137
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_TIME_CPU2\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_TIME\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 138
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_UDINT_CPU2\'.\'\' " +
                        "с \'cpu715_Mono\'.\'resVar_UDINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 139
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_UINT_CPU2\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_UINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 140
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_ULINT_CPU2\'.\'\' " +
                        "с \'cpu715_Mono\'.\'resVar_ULINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 141
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_USINT_CPU2\'.\'\' " +
                        "с \'cpu715_Mono\'.\'resVar_USINT\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
#line 142
 testRunner.Then("Сравнение архивных данных \'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_WORD_CPU2\'.\'\' с" +
                        " \'cpu715_Mono\'.\'resVar_WORD\'.\'\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
            }
            this.ScenarioCleanup();
        }
        
        [NUnit.Framework.TestAttribute()]
        [NUnit.Framework.DescriptionAttribute("MKO_cpu715Mono_cpu715Cluster_ErrorCheck")]
        [NUnit.Framework.CategoryAttribute("EpicМКО/МРО")]
        [NUnit.Framework.CategoryAttribute("parentSuiteРасширенный_функционал_ПЛК")]
        [NUnit.Framework.CategoryAttribute("suiteМКО/МРО")]
        [NUnit.Framework.CategoryAttribute("subSuiteCPU715_MONO_CPU715_CLUSTER")]
        [NUnit.Framework.CategoryAttribute("critical")]
        public void MKO_Cpu715Mono_Cpu715Cluster_ErrorCheck()
        {
            string[] tagsOfScenario = new string[] {
                    "EpicМКО/МРО",
                    "parentSuiteРасширенный_функционал_ПЛК",
                    "suiteМКО/МРО",
                    "subSuiteCPU715_MONO_CPU715_CLUSTER",
                    "critical"};
            System.Collections.Specialized.OrderedDictionary argumentsOfScenario = new System.Collections.Specialized.OrderedDictionary();
            TechTalk.SpecFlow.ScenarioInfo scenarioInfo = new TechTalk.SpecFlow.ScenarioInfo("MKO_cpu715Mono_cpu715Cluster_ErrorCheck", null, tagsOfScenario, argumentsOfScenario, featureTags);
#line 150
 this.ScenarioInitialize(scenarioInfo);
#line hidden
            if ((TagHelper.ContainsIgnoreTag(tagsOfScenario) || TagHelper.ContainsIgnoreTag(featureTags)))
            {
                testRunner.SkipScenario();
            }
            else
            {
                this.ScenarioStart();
#line 153
 testRunner.Given("Шлюзы \'work\' в работе", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 154
 testRunner.Given("Связь с устройством \'cpu715_Mono\' в норме", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Given ");
#line hidden
#line 156
 testRunner.Then("Сравниваю значение \'CPU715_MONO_CPU715_CLUSTER_ERRORCNT\'.\'\' с допустимым \'0\'", ((string)(null)), ((TechTalk.SpecFlow.Table)(null)), "Then ");
#line hidden
            }
            this.ScenarioCleanup();
        }
    }
}
#pragma warning restore
#endregion
