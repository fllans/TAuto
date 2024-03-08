@ignore
@Archive
Feature: GwE2ex_Archive
		
	@fromMirror  @fromGate
	@EpicTimeStamp		@StoryGwE2ex
	@parentSuite2_ExchUtils_GwE2ex @suiteTimeStamp
    Scenario: GwE2ex.iCore2_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'ICORE2' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx2ex_1' в норме
	When Чтение исходных архивных данных 'resVar_BOOL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iCore2_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_BYTE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iCore2_BYTE'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iCore2_WORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_DWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iCore2_DWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_LWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iCore2_LWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_SINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iCore2_SINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_INT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iCore2_INT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_DINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iCore2_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_LINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iCore2_LINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_USINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iCore2_USINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iCore2_UINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_UDINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iCore2_UDINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_ULINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iCore2_ULINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_REAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iCore2_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_LREAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iCore2_LREAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_TIME'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iCore2_TIME'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_DATE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iCore2_DATE'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicTimeStamp		@StoryGwE2ex
	@parentSuite2_ExchUtils_GwE2ex @suiteTimeStamp
    Scenario: GwE2ex.cpu715_Red_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx2ex_1' в норме
	When Чтение исходных архивных данных 'resVar_BOOL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Red_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_BYTE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Red_BYTE'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Red_WORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_DWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Red_DWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_LWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Red_LWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_SINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Red_SINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_INT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Red_INT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_DINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Red_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_LINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Red_LINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_USINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Red_USINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Red_UINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_UDINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Red_UDINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_ULINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Red_ULINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_REAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Red_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_LREAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Red_LREAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_TIME'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Red_TIME'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_DATE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Red_DATE'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicTimeStamp		@StoryGwE2ex
	@parentSuite2_ExchUtils_GwE2ex @suiteTimeStamp
    Scenario: GwE2ex.cpu715_Clust_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'cpu715_Cluster' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx2ex_1' в норме
	When Чтение исходных архивных данных 'resVar_BOOL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Cluster_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_BYTE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Cluster_BYTE'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Cluster_WORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_DWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Cluster_DWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_LWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Cluster_LWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_SINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Cluster_SINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_INT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Cluster_INT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_DINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Cluster_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_LINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Cluster_LINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_USINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Cluster_USINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Cluster_UINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_UDINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Cluster_UDINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_ULINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Cluster_ULINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_REAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Cluster_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_LREAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Cluster_LREAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_TIME'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Cluster_TIME'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_DATE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu715_Cluster_DATE'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicTimeStamp		@StoryGwE2ex
	@parentSuite2_ExchUtils_GwE2ex @suiteTimeStamp
    Scenario: GwE2ex.cpu850_Red_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'CPU850_RED' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx2ex_1' в норме
	When Чтение исходных архивных данных 'resVar_BOOL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu850_Red_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_BYTE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu850_Red_BYTE'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu850_Red_WORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_DWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu850_Red_DWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_LWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu850_Red_LWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_SINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu850_Red_SINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_INT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu850_Red_INT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_DINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu850_Red_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_LINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu850_Red_LINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_USINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu850_Red_USINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu850_Red_UINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_UDINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu850_Red_UDINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_ULINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu850_Red_ULINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_REAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu850_Red_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_LREAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu850_Red_LREAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_TIME'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu850_Red_TIME'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'resVar_DATE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'cpu850_Red_DATE'.'Значение' из 'ArcReciv'

	@fromMirror  @fromGate
	@EpicTimeStamp		@StoryGwE2ex
	@parentSuite2_ExchUtils_GwE2ex @suiteTimeStamp
    Scenario: GwE2ex.GwEx_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx2ex_1' в норме
	When Чтение исходных архивных данных 'GEv1_Var_BOOL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GEv1_Var_BYTE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_BYTE'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GEv1_Var_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_WORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GEv1_Var_DWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_DWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GEv1_Var_LWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_LWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GEv1_Var_SINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_SINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GEv1_Var_INT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_INT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GEv1_Var_DINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GEv1_Var_LINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_LINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GEv1_Var_USINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_USINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GEv1_Var_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_UINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GEv1_Var_UDINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_UDINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GEv1_Var_ULINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_ULINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GEv1_Var_REAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GEv1_Var_LREAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_LREAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GEv1_Var_TIME'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_TIME'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GEv1_Var_DATE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_DATE'.'Значение' из 'ArcReciv'
    
    @ignore @Redmine_7528
    @package_Known_Bugs_GwEx2_TransmitArcVals
    @fromMirror  @fromGate
	@EpicTimeStamp		@StoryGwE2ex
	@parentSuite2_ExchUtils_GwE2ex @suiteTimeStamp
    Scenario: GwE2ex.GwEx2_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx2ex_1' в норме
	When Чтение исходных архивных данных 'GwE2v1_Var_BOOL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GwE2v1_Var_BYTE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2_BYTE'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GwE2v1_Var_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2_WORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GwE2v1_Var_DWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2_DWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GwE2v1_Var_LWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2_LWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GwE2v1_Var_SINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2_SINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GwE2v1_Var_INT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2_INT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GwE2v1_Var_DINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GwE2v1_Var_LINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2_LINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GwE2v1_Var_USINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2_USINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GwE2v1_Var_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2_UINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GwE2v1_Var_UDINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2_UDINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GwE2v1_Var_ULINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2_ULINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GwE2v1_Var_REAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GwE2v1_Var_LREAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2_LREAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GwE2v1_Var_TIME'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2_TIME'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GwE2v1_Var_DATE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2_DATE'.'Значение' из 'ArcReciv'
    
    @fromMirror  @fromGate
	@EpicTimeStamp		@StoryGwE2ex
	@parentSuite2_ExchUtils_GwE2ex @suiteTimeStamp
    Scenario: GwE2ex.OpcDa_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'OpcDa_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx2ex_1' в норме
	When Чтение исходных архивных данных 'OpcDa_Subs_VAR_bool'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_byte'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_BYTE'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_word'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_WORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_dword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_DWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_lword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_LWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_sint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_SINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_int'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_INT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_dint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_lint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_LINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_usint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_USINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_uint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_UINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_udint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_UDINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_ulint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_ULINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_real'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_lreal'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_LREAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_time'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_TIME'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_date'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_DATE'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicTimeStamp		@StoryGwE2ex
	@parentSuite2_ExchUtils_GwE2ex @suiteTimeStamp
    Scenario: GwE2ex.OpcProxy_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx2ex_1' в норме
	When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_bool'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_byte'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_BYTE'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_word'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_WORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_dword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_DWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_lword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_LWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_sint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_SINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_int'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_INT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_dint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_lint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_LINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_usint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_USINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_uint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_UINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_udint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_UDINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_ulint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_ULINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_real'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_lreal'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_LREAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_time'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_TIME'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_date'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_DATE'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicTimeStamp		@StoryGwE2ex
	@parentSuite2_ExchUtils_GwE2ex @suiteTimeStamp
    Scenario: GwE2ex.OpcUa_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'OpcUa_ASt5000_Lin' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx2ex_1' в норме
	When Чтение исходных архивных данных 'OpcUa_PARAM_bool'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcUa_PARAM_byte'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_BYTE'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcUa_PARAM_word'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_WORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcUa_PARAM_dword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_DWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcUa_PARAM_lword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_LWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcUa_PARAM_sint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_SINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcUa_PARAM_int'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_INT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcUa_PARAM_dint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcUa_PARAM_lint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_LINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcUa_PARAM_usint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_USINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcUa_PARAM_uint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_UINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcUa_PARAM_udint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_UDINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcUa_PARAM_ulint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_ULINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcUa_PARAM_real'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcUa_PARAM_lreal'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_LREAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcUa_PARAM_time'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_TIME'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcUa_PARAM_DT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_DT'.'Значение' из 'ArcReciv'
    #When Чтение исходных архивных данных 'OpcUa_PARAM_date'.'Значение' из 'ArcWork'
    #Then Сравнение архивных данных 'OpcUa_PARAM_DATE'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicTimeStamp		@StoryGwE2ex
	@parentSuite2_ExchUtils_GwE2ex @suiteTimeStamp
    Scenario: GwE2ex.Snmp_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'Snmp_v2_NetSw28' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx2ex_1' в норме
	When Чтение исходных архивных данных 'UpTime'.'' из 'ArcWork'
    Then Сравнение архивных данных 'SnmpV2_UpTime'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Channel 09\InOctets'.'' из 'ArcWork'
    Then Сравнение архивных данных 'SnmpV2_InOctets_09'.'Значение' из 'ArcReciv'
    #When Чтение исходных архивных данных 'Channel 09\OutOctets'.'' из 'ArcWork'
    #Then Сравнение архивных данных 'SnmpV2_OutOctets_09'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Channel 10\InOctets'.'' из 'ArcWork'
    Then Сравнение архивных данных 'SnmpV2_InOctets_10'.'Значение' из 'ArcReciv'
    #When Чтение исходных архивных данных 'Channel 10\OutOctets'.'' из 'ArcWork'
    #Then Сравнение архивных данных 'SnmpV2_OutOctets_10'.'Значение' из 'ArcReciv'
