@ignore
@Archive
Feature: DataMirrorArcive
	
	@fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteЧтение_Архивных_Данных
	Scenario: iCore2_ReadArcVal
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Соединение с Архивом 'ArcMirror'
    Given Связь с устройством 'ICORE2' в норме
	When Чтение архивных данных 'resVar_BOOL'.'Значение'
	When Чтение архивных данных 'resVar_BYTE'.'Значение'
	When Чтение архивных данных 'resVar_WORD'.'Значение'
	When Чтение архивных данных 'resVar_DWORD'.'Значение'
	When Чтение архивных данных 'resVar_LWORD'.'Значение'
	When Чтение архивных данных 'resVar_SINT'.'Значение'
	When Чтение архивных данных 'resVar_INT'.'Значение'
	When Чтение архивных данных 'resVar_DINT'.'Значение'
	When Чтение архивных данных 'resVar_LINT'.'Значение'
	When Чтение архивных данных 'resVar_USINT'.'Значение'
	When Чтение архивных данных 'resVar_UINT'.'Значение'
	When Чтение архивных данных 'resVar_UDINT'.'Значение'
	When Чтение архивных данных 'resVar_ULINT'.'Значение'
	When Чтение архивных данных 'resVar_REAL'.'Значение'
	When Чтение архивных данных 'resVar_LREAL'.'Значение'
	When Чтение архивных данных 'resVar_TIME'.'Значение'
	When Чтение архивных данных 'resVar_DATE'.'Значение'

    @fromMirror
	@EpicTimeStamp		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteTimeStamp
	Scenario: iCore2_TimeStamp
    Given Зеркало Шлюза 'MirrorWork' в работе
    Given Связь с 1 устройством 'ICORE2' в норме
    Given Связь с 2 устройством 'ICORE2' в норме
    When Чтение исходных архивных данных 'resVar_BOOL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_BOOL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_BYTE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_BYTE'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_WORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_DWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_DWORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_LWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_LWORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_SINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_SINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_INT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_INT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_DINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_DINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_LINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_LINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_USINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_USINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_UINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_UDINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_UDINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_ULINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_ULINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_REAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_REAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_LREAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_LREAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_TIME'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_TIME'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_DATE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_DATE'.'Значение' из 'ArcMirror'

    @fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteЧтение_Архивных_Данных
	Scenario: Cpu715_Red_ReadArcVal
    Given Зеркало Шлюза 'MirrorWork' в работе
	Given Соединение с Архивом 'ArcMirror'
    Given Связь с устройством 'cpu715_Red' в норме
    Then Чтение архивных данных 'resVar_BOOL'.'Значение' 
    Then Чтение архивных данных 'resVar_BYTE'.'Значение' 
    Then Чтение архивных данных 'resVar_WORD'.'Значение' 
    Then Чтение архивных данных 'resVar_DWORD'.'Значение' 
    Then Чтение архивных данных 'resVar_LWORD'.'Значение' 
    Then Чтение архивных данных 'resVar_SINT'.'Значение' 
    Then Чтение архивных данных 'resVar_INT'.'Значение' 
    Then Чтение архивных данных 'resVar_DINT'.'Значение' 
    Then Чтение архивных данных 'resVar_LINT'.'Значение' 
    Then Чтение архивных данных 'resVar_USINT'.'Значение'
 	Then Чтение архивных данных 'resVar_UINT'.'Значение' 
    Then Чтение архивных данных 'resVar_UDINT'.'Значение' 
    Then Чтение архивных данных 'resVar_ULINT'.'Значение' 
    Then Чтение архивных данных 'resVar_REAL'.'Значение' 
    Then Чтение архивных данных 'resVar_LREAL'.'Значение' 
    Then Чтение архивных данных 'resVar_TIME'.'Значение' 
	Then Чтение архивных данных 'resVar_DATE'.'Значение'

    @fromMirror
	@EpicTimeStamp		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteTimeStamp
	Scenario: Cpu715_Red_TimeStamp
    Given Зеркало Шлюза 'MirrorWork' в работе
    Given Связь с 1 устройством 'cpu715_Red' в норме
    Given Связь с 2 устройством 'cpu715_Red' в норме
    When Чтение исходных архивных данных 'resVar_BOOL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_BOOL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_BYTE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_BYTE'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_WORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_DWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_DWORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_LWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_LWORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_SINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_SINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_INT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_INT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_DINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_DINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_LINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_LINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_USINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_USINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_UINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_UDINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_UDINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_ULINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_ULINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_REAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_REAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_LREAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_LREAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_TIME'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_TIME'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_DATE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_DATE'.'Значение' из 'ArcMirror'

	@fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteЧтение_Архивных_Данных
	Scenario: Cpu715_Clust_ReadArcVal
    Given Зеркало Шлюза 'MirrorWork' в работе
	Given Соединение с Архивом 'ArcMirror'
    Given Связь с устройством 'cpu715_Cluster' в норме
    Then Чтение архивных данных 1 Кластера 'resVar_BOOL'.'Значение' 
    Then Чтение архивных данных 1 Кластера 'resVar_BYTE'.'Значение' 
    Then Чтение архивных данных 1 Кластера 'resVar_WORD'.'Значение' 
    Then Чтение архивных данных 1 Кластера 'resVar_DWORD'.'Значение' 
    Then Чтение архивных данных 1 Кластера 'resVar_LWORD'.'Значение' 
    Then Чтение архивных данных 1 Кластера 'resVar_SINT'.'Значение' 
    Then Чтение архивных данных 1 Кластера 'resVar_INT'.'Значение' 
    Then Чтение архивных данных 1 Кластера 'resVar_DINT'.'Значение' 
    Then Чтение архивных данных 1 Кластера 'resVar_LINT'.'Значение' 
    Then Чтение архивных данных 1 Кластера 'resVar_USINT'.'Значение'
 	Then Чтение архивных данных 1 Кластера 'resVar_UINT'.'Значение' 
    Then Чтение архивных данных 1 Кластера 'resVar_UDINT'.'Значение' 
    Then Чтение архивных данных 1 Кластера 'resVar_ULINT'.'Значение' 
    Then Чтение архивных данных 1 Кластера 'resVar_REAL'.'Значение' 
    Then Чтение архивных данных 1 Кластера 'resVar_LREAL'.'Значение' 
    Then Чтение архивных данных 1 Кластера 'resVar_TIME'.'Значение' 
	Then Чтение архивных данных 1 Кластера 'resVar_DATE'.'Значение'

	Then Чтение архивных данных 2 Кластера 'resVar_BOOL'.'Значение' 
    Then Чтение архивных данных 2 Кластера 'resVar_BYTE'.'Значение' 
    Then Чтение архивных данных 2 Кластера 'resVar_WORD'.'Значение' 
    Then Чтение архивных данных 2 Кластера 'resVar_DWORD'.'Значение' 
    Then Чтение архивных данных 2 Кластера 'resVar_LWORD'.'Значение' 
    Then Чтение архивных данных 2 Кластера 'resVar_SINT'.'Значение' 
    Then Чтение архивных данных 2 Кластера 'resVar_INT'.'Значение' 
    Then Чтение архивных данных 2 Кластера 'resVar_DINT'.'Значение' 
    Then Чтение архивных данных 2 Кластера 'resVar_LINT'.'Значение' 
    Then Чтение архивных данных 2 Кластера 'resVar_USINT'.'Значение'
 	Then Чтение архивных данных 2 Кластера 'resVar_UINT'.'Значение' 
    Then Чтение архивных данных 2 Кластера 'resVar_UDINT'.'Значение' 
    Then Чтение архивных данных 2 Кластера 'resVar_ULINT'.'Значение' 
    Then Чтение архивных данных 2 Кластера 'resVar_REAL'.'Значение' 
    Then Чтение архивных данных 2 Кластера 'resVar_LREAL'.'Значение' 
    Then Чтение архивных данных 2 Кластера 'resVar_TIME'.'Значение' 
	Then Чтение архивных данных 2 Кластера 'resVar_DATE'.'Значение'

    @fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteЧтение_Архивных_Данных
	Scenario: cpu850_Red_ReadArcVal
    Given Зеркало Шлюза 'MirrorWork' в работе
	Given Соединение с Архивом 'ArcMirror'
    Given Связь с устройством 'CPU850_RED' в норме
    Then Чтение архивных данных 'resVar_BOOL'.'Значение' 
    Then Чтение архивных данных 'resVar_BYTE'.'Значение' 
    Then Чтение архивных данных 'resVar_WORD'.'Значение' 
    Then Чтение архивных данных 'resVar_DWORD'.'Значение' 
    Then Чтение архивных данных 'resVar_LWORD'.'Значение' 
    Then Чтение архивных данных 'resVar_SINT'.'Значение' 
    Then Чтение архивных данных 'resVar_INT'.'Значение' 
    Then Чтение архивных данных 'resVar_DINT'.'Значение' 
    Then Чтение архивных данных 'resVar_LINT'.'Значение' 
    Then Чтение архивных данных 'resVar_USINT'.'Значение'
 	Then Чтение архивных данных 'resVar_UINT'.'Значение' 
    Then Чтение архивных данных 'resVar_UDINT'.'Значение' 
    Then Чтение архивных данных 'resVar_ULINT'.'Значение' 
    Then Чтение архивных данных 'resVar_REAL'.'Значение' 
    Then Чтение архивных данных 'resVar_LREAL'.'Значение' 
    Then Чтение архивных данных 'resVar_TIME'.'Значение' 
	Then Чтение архивных данных 'resVar_DATE'.'Значение'

    @fromMirror
	@EpicTimeStamp		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteTimeStamp
	Scenario: cpu850_Red_TimeStamp
    Given Зеркало Шлюза 'MirrorWork' в работе
    Given Связь с 1 устройством 'CPU850_RED' в норме
    Given Связь с 2 устройством 'CPU850_RED' в норме
    When Чтение исходных архивных данных 'resVar_BOOL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_BOOL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_BYTE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_BYTE'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_WORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_DWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_DWORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_LWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_LWORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_SINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_SINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_INT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_INT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_DINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_DINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_LINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_LINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_USINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_USINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_UINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_UDINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_UDINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_ULINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_ULINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_REAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_REAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_LREAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_LREAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_TIME'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_TIME'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_DATE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_DATE'.'Значение' из 'ArcMirror'
    	
    @fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteЧтение_Архивных_Данных
	Scenario: GwEv1_ReadArcVal
    Given Зеркало Шлюза 'MirrorWork' в работе
	Given Соединение с Архивом 'ArcMirror'
    Given Связь с устройством 'GwExch_v1' в норме
	Then Чтение архивных данных 'GEv1_Var_BOOL'.'Значение' 
    Then Чтение архивных данных 'GEv1_Var_BYTE'.'Значение' 
    Then Чтение архивных данных 'GEv1_Var_WORD'.'Значение' 
    Then Чтение архивных данных 'GEv1_Var_DWORD'.'Значение' 
    Then Чтение архивных данных 'GEv1_Var_LWORD'.'Значение' 
    Then Чтение архивных данных 'GEv1_Var_SINT'.'Значение' 
    Then Чтение архивных данных 'GEv1_Var_INT'.'Значение' 
    Then Чтение архивных данных 'GEv1_Var_DINT'.'Значение' 
    Then Чтение архивных данных 'GEv1_Var_LINT'.'Значение' 
    Then Чтение архивных данных 'GEv1_Var_USINT'.'Значение' 
    Then Чтение архивных данных 'GEv1_Var_UINT'.'Значение' 
    Then Чтение архивных данных 'GEv1_Var_UDINT'.'Значение' 
    Then Чтение архивных данных 'GEv1_Var_ULINT'.'Значение' 
    Then Чтение архивных данных 'GEv1_Var_REAL'.'Значение' 
    Then Чтение архивных данных 'GEv1_Var_LREAL'.'Значение' 
    Then Чтение архивных данных 'GEv1_Var_TIME'.'Значение' 
    Then Чтение архивных данных 'GEv1_Var_DATE'.'Значение'

    @fromMirror
	@EpicTimeStamp		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteTimeStamp
	Scenario: GwEv1_TimeStamp
    Given Зеркало Шлюза 'MirrorWork' в работе
    Given Связь с 1 устройством 'GwExch_v1' в норме
    Given Связь с 2 устройством 'GwExch_v1' в норме
    When Чтение исходных архивных данных 'GEv1_Var_BOOL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GEv1_Var_BOOL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GEv1_Var_BYTE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GEv1_Var_BYTE'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GEv1_Var_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GEv1_Var_WORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GEv1_Var_DWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GEv1_Var_DWORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GEv1_Var_LWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GEv1_Var_LWORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GEv1_Var_SINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GEv1_Var_SINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GEv1_Var_INT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GEv1_Var_INT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GEv1_Var_DINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GEv1_Var_DINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GEv1_Var_LINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GEv1_Var_LINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GEv1_Var_USINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GEv1_Var_USINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GEv1_Var_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GEv1_Var_UINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GEv1_Var_UDINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GEv1_Var_UDINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GEv1_Var_ULINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GEv1_Var_ULINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GEv1_Var_REAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GEv1_Var_REAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GEv1_Var_LREAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GEv1_Var_LREAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GEv1_Var_TIME'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GEv1_Var_TIME'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GEv1_Var_DATE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GEv1_Var_DATE'.'Значение' из 'ArcMirror'

    @fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteЧтение_Архивных_Данных
	Scenario: GwE2v1_ReadArcVal
    Given Зеркало Шлюза 'MirrorWork' в работе
	Given Соединение с Архивом 'ArcMirror'
    Given Связь с устройством 'GwExch_2_v1' в норме
    Then Чтение архивных данных 'GwE2v1_Var_BOOL'.'Значение' 
    Then Чтение архивных данных 'GwE2v1_Var_BYTE'.'Значение' 
    Then Чтение архивных данных 'GwE2v1_Var_WORD'.'Значение' 
    Then Чтение архивных данных 'GwE2v1_Var_DWORD'.'Значение' 
    Then Чтение архивных данных 'GwE2v1_Var_LWORD'.'Значение' 
    Then Чтение архивных данных 'GwE2v1_Var_SINT'.'Значение' 
    Then Чтение архивных данных 'GwE2v1_Var_INT'.'Значение' 
    Then Чтение архивных данных 'GwE2v1_Var_DINT'.'Значение' 
    Then Чтение архивных данных 'GwE2v1_Var_LINT'.'Значение' 
    Then Чтение архивных данных 'GwE2v1_Var_USINT'.'Значение' 
    Then Чтение архивных данных 'GwE2v1_Var_UINT'.'Значение' 
    Then Чтение архивных данных 'GwE2v1_Var_UDINT'.'Значение' 
    Then Чтение архивных данных 'GwE2v1_Var_ULINT'.'Значение' 
    Then Чтение архивных данных 'GwE2v1_Var_REAL'.'Значение' 
    Then Чтение архивных данных 'GwE2v1_Var_LREAL'.'Значение' 
    Then Чтение архивных данных 'GwE2v1_Var_TIME'.'Значение' 
    Then Чтение архивных данных 'GwE2v1_Var_DATE'.'Значение' 

    @fromMirror
	@EpicTimeStamp		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteTimeStamp
	Scenario: GwE2v1_TimeStamp
    Given Зеркало Шлюза 'MirrorWork' в работе
    Given Связь с 1 устройством 'GwExch_2_v1' в норме
    Given Связь с 2 устройством 'GwExch_2_v1' в норме
    When Чтение исходных архивных данных 'GwE2v1_Var_BOOL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2v1_Var_BOOL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GwE2v1_Var_BYTE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2v1_Var_BYTE'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GwE2v1_Var_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2v1_Var_WORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GwE2v1_Var_DWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2v1_Var_DWORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GwE2v1_Var_LWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2v1_Var_LWORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GwE2v1_Var_SINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2v1_Var_SINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GwE2v1_Var_INT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2v1_Var_INT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GwE2v1_Var_DINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2v1_Var_DINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GwE2v1_Var_LINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2v1_Var_LINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GwE2v1_Var_USINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2v1_Var_USINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GwE2v1_Var_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2v1_Var_UINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GwE2v1_Var_UDINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2v1_Var_UDINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GwE2v1_Var_ULINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2v1_Var_ULINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GwE2v1_Var_REAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2v1_Var_REAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GwE2v1_Var_LREAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2v1_Var_LREAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GwE2v1_Var_TIME'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2v1_Var_TIME'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'GwE2v1_Var_DATE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE2v1_Var_DATE'.'Значение' из 'ArcMirror'

    @fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteЧтение_Архивных_Данных
	Scenario: VerProxy_GE_v1_ReadArcVal
    Given Зеркало Шлюза 'MirrorWork' в работе
	Given Соединение с Архивом 'ArcMirror'
    Given Связь с устройством 'VerProxy52_GE_v1' в норме
	Then Чтение архивных данных 'Var_BOOL'.'Значение' 
    Then Чтение архивных данных 'Var_BYTE'.'Значение' 
    Then Чтение архивных данных 'Var_WORD'.'Значение' 
    Then Чтение архивных данных 'Var_DWORD'.'Значение' 
    Then Чтение архивных данных 'Var_LWORD'.'Значение' 
    Then Чтение архивных данных 'Var_SINT'.'Значение' 
    Then Чтение архивных данных 'Var_INT'.'Значение' 
    Then Чтение архивных данных 'Var_DINT'.'Значение' 
    Then Чтение архивных данных 'Var_LINT'.'Значение' 
    Then Чтение архивных данных 'Var_USINT'.'Значение' 
    Then Чтение архивных данных 'Var_UINT'.'Значение' 
    Then Чтение архивных данных 'Var_UDINT'.'Значение' 
    Then Чтение архивных данных 'Var_ULINT'.'Значение' 
    Then Чтение архивных данных 'Var_REAL'.'Значение' 
    Then Чтение архивных данных 'Var_LREAL'.'Значение' 
    Then Чтение архивных данных 'Var_TIME'.'Значение' 
    Then Чтение архивных данных 'Var_DATE'.'Значение'

    @fromMirror
	@EpicTimeStamp		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteTimeStamp
	Scenario: VerProxy_GE_v1__TimeStamp
    Given Зеркало Шлюза 'MirrorWork' в работе
    Given Связь с 1 устройством 'VerProxy52_GE_v1' в норме
    Given Связь с 2 устройством 'VerProxy52_GE_v1' в норме
    When Чтение исходных архивных данных 'Var_BOOL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_BOOL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_BYTE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_BYTE'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_WORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_DWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_DWORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_LWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_LWORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_SINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_SINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_INT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_INT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_DINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_DINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_LINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_LINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_USINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_USINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_UINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_UDINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_UDINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_ULINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_ULINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_REAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_REAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_LREAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_LREAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_TIME'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_TIME'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_DATE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_DATE'.'Значение' из 'ArcMirror'

    @fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteЧтение_Архивных_Данных
	Scenario: VerProxy_GE_2_v1_ReadArcVal
    Given Зеркало Шлюза 'MirrorWork' в работе
	Given Соединение с Архивом 'ArcMirror'
    Given Связь с устройством 'VerProxy52_GE_2_v1' в норме
	Then Чтение архивных данных 'Var_BOOL'.'Значение' 
    Then Чтение архивных данных 'Var_BYTE'.'Значение' 
    Then Чтение архивных данных 'Var_WORD'.'Значение' 
    Then Чтение архивных данных 'Var_DWORD'.'Значение' 
    Then Чтение архивных данных 'Var_LWORD'.'Значение' 
    Then Чтение архивных данных 'Var_SINT'.'Значение' 
    Then Чтение архивных данных 'Var_INT'.'Значение' 
    Then Чтение архивных данных 'Var_DINT'.'Значение' 
    Then Чтение архивных данных 'Var_LINT'.'Значение' 
    Then Чтение архивных данных 'Var_USINT'.'Значение' 
    Then Чтение архивных данных 'Var_UINT'.'Значение' 
    Then Чтение архивных данных 'Var_UDINT'.'Значение' 
    Then Чтение архивных данных 'Var_ULINT'.'Значение' 
    Then Чтение архивных данных 'Var_REAL'.'Значение' 
    Then Чтение архивных данных 'Var_LREAL'.'Значение' 
    Then Чтение архивных данных 'Var_TIME'.'Значение' 
    Then Чтение архивных данных 'Var_DATE'.'Значение'

    @fromMirror
	@EpicTimeStamp		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteTimeStamp
	Scenario: VerProxy_GE_2_v1_TimeStamp
    Given Зеркало Шлюза 'MirrorWork' в работе
    Given Связь с 1 устройством 'VerProxy52_GE_2_v1' в норме
    Given Связь с 2 устройством 'VerProxy52_GE_2_v1' в норме
    When Чтение исходных архивных данных 'Var_BOOL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_BOOL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_BYTE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_BYTE'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_WORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_DWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_DWORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_LWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_LWORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_SINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_SINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_INT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_INT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_DINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_DINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_LINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_LINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_USINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_USINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_UINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_UDINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_UDINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_ULINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_ULINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_REAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_REAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_LREAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_LREAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_TIME'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_TIME'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Var_DATE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Var_DATE'.'Значение' из 'ArcMirror'

    @fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteЧтение_Архивных_Данных
	Scenario: UDP_to_UDP_ReadArcVal
    Given Зеркало Шлюза 'MirrorWork' в работе
	Given Соединение с Архивом 'ArcMirror'
    Given Связь с устройством 'UDP_receiver_1' в норме
	Then Чтение архивных данных 'resVar_BOOL'.'Значение' 
    Then Чтение архивных данных 'resVar_BYTE'.'Значение' 
    Then Чтение архивных данных 'resVar_WORD'.'Значение' 
    Then Чтение архивных данных 'resVar_DWORD'.'Значение' 
    Then Чтение архивных данных 'resVar_LWORD'.'Значение' 
    Then Чтение архивных данных 'resVar_SINT'.'Значение' 
    Then Чтение архивных данных 'resVar_INT'.'Значение' 
    Then Чтение архивных данных 'resVar_DINT'.'Значение' 
    Then Чтение архивных данных 'resVar_LINT'.'Значение' 
    Then Чтение архивных данных 'resVar_USINT'.'Значение' 
    Then Чтение архивных данных 'resVar_UINT'.'Значение' 
    Then Чтение архивных данных 'resVar_UDINT'.'Значение' 
    Then Чтение архивных данных 'resVar_ULINT'.'Значение' 
    Then Чтение архивных данных 'resVar_REAL'.'Значение' 
    Then Чтение архивных данных 'resVar_LREAL'.'Значение' 
    Then Чтение архивных данных 'resVar_TIME'.'Значение' 
    Then Чтение архивных данных 'resVar_DATE'.'Значение'

    @fromMirror
	@EpicTimeStamp		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteTimeStamp
	Scenario: UDP_to_UDP_TimeStamp
    Given Зеркало Шлюза 'MirrorWork' в работе
    Given Связь с 1 устройством 'UDP_receiver_1' в норме
    Given Связь с 2 устройством 'UDP_receiver_1' в норме
    When Чтение исходных архивных данных 'resVar_BOOL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_BOOL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_BYTE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_BYTE'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_WORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_DWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_DWORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_LWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_LWORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_SINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_SINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_INT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_INT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_DINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_DINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_LINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_LINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_USINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_USINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_UINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_UDINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_UDINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_ULINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_ULINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_REAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_REAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_LREAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_LREAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_TIME'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_TIME'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'resVar_DATE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'resVar_DATE'.'Значение' из 'ArcMirror'

    @fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteЧтение_Архивных_Данных
	Scenario: Iec104_SlaveSp_ReadArcVal
    Given Зеркало Шлюза 'MirrorWork' в работе
	Given Соединение с Архивом 'ArcMirror'
    Given Связь с устройством 'iec104_sporadic' в норме
    Then Чтение архивных данных 'Iec104_VAR_bool'.'Значение' 
    Then Чтение архивных данных 'Iec104_VAR_byte'.'Значение' 
    Then Чтение архивных данных 'Iec104_VAR_word'.'Значение' 
    Then Чтение архивных данных 'Iec104_VAR_dword'.'Значение' 
    Then Чтение архивных данных 'Iec104_VAR_lword'.'Значение' 
    Then Чтение архивных данных 'Iec104_VAR_sint'.'Значение' 
    Then Чтение архивных данных 'Iec104_VAR_int'.'Значение' 
    Then Чтение архивных данных 'Iec104_VAR_dint'.'Значение' 
    Then Чтение архивных данных 'Iec104_VAR_lint'.'Значение' 
    Then Чтение архивных данных 'Iec104_VAR_usint'.'Значение' 
    Then Чтение архивных данных 'Iec104_VAR_uint'.'Значение' 
    Then Чтение архивных данных 'Iec104_VAR_udint'.'Значение' 
    Then Чтение архивных данных 'Iec104_VAR_ulint'.'Значение' 
    Then Чтение архивных данных 'Iec104_VAR_real'.'Значение' 
    Then Чтение архивных данных 'Iec104_VAR_lreal'.'Значение' 
    Then Чтение архивных данных 'Iec104_VAR_time'.'Значение' 
    Then Чтение архивных данных 'Iec104_VAR_date'.'Значение' 

    @fromMirror
	@EpicTimeStamp		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteTimeStamp
	Scenario: Iec104_SlaveSp_TimeStamp
    Given Зеркало Шлюза 'MirrorWork' в работе
    Given Связь с 1 устройством 'iec104_sporadic' в норме
    Given Связь с 2 устройством 'iec104_sporadic' в норме
    When Чтение исходных архивных данных 'Iec104_VAR_bool'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Iec104_VAR_bool'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Iec104_VAR_byte'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Iec104_VAR_byte'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Iec104_VAR_word'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Iec104_VAR_word'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Iec104_VAR_dword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Iec104_VAR_dword'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Iec104_VAR_lword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Iec104_VAR_lword'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Iec104_VAR_sint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Iec104_VAR_sint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Iec104_VAR_int'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Iec104_VAR_int'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Iec104_VAR_dint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Iec104_VAR_dint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Iec104_VAR_lint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Iec104_VAR_lint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Iec104_VAR_usint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Iec104_VAR_usint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Iec104_VAR_uint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Iec104_VAR_uint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Iec104_VAR_udint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Iec104_VAR_udint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Iec104_VAR_ulint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Iec104_VAR_ulint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Iec104_VAR_real'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Iec104_VAR_real'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Iec104_VAR_lreal'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Iec104_VAR_lreal'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Iec104_VAR_time'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Iec104_VAR_time'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Iec104_VAR_date'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Iec104_VAR_date'.'Значение' из 'ArcMirror'

    @fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteЧтение_Архивных_Данных
	Scenario: OpcDa_Subs_ReadArcVal
    Given Зеркало Шлюза 'MirrorWork' в работе
	Given Соединение с Архивом 'ArcMirror'
    Given Связь с устройством 'OpcDa_Subs' в норме
    Then Чтение архивных данных 'OpcDa_Subs_VAR_bool'.'Значение' 
    Then Чтение архивных данных 'OpcDa_Subs_VAR_byte'.'Значение' 
    Then Чтение архивных данных 'OpcDa_Subs_VAR_word'.'Значение' 
    Then Чтение архивных данных 'OpcDa_Subs_VAR_dword'.'Значение' 
    Then Чтение архивных данных 'OpcDa_Subs_VAR_lword'.'Значение' 
    Then Чтение архивных данных 'OpcDa_Subs_VAR_sint'.'Значение' 
    Then Чтение архивных данных 'OpcDa_Subs_VAR_int'.'Значение' 
    Then Чтение архивных данных 'OpcDa_Subs_VAR_dint'.'Значение' 
    Then Чтение архивных данных 'OpcDa_Subs_VAR_lint'.'Значение' 
    Then Чтение архивных данных 'OpcDa_Subs_VAR_usint'.'Значение' 
    Then Чтение архивных данных 'OpcDa_Subs_VAR_uint'.'Значение' 
    Then Чтение архивных данных 'OpcDa_Subs_VAR_udint'.'Значение' 
    Then Чтение архивных данных 'OpcDa_Subs_VAR_ulint'.'Значение' 
    Then Чтение архивных данных 'OpcDa_Subs_VAR_real'.'Значение' 
    Then Чтение архивных данных 'OpcDa_Subs_VAR_lreal'.'Значение' 
    Then Чтение архивных данных 'OpcDa_Subs_VAR_time'.'Значение' 
    Then Чтение архивных данных 'OpcDa_Subs_VAR_date'.'Значение'

    @fromMirror
	@EpicTimeStamp		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteTimeStamp
	Scenario: OpcDa_Subs_TimeStamp
    Given Зеркало Шлюза 'MirrorWork' в работе
    Given Связь с 1 устройством 'OpcDa_Subs' в норме
    Given Связь с 2 устройством 'OpcDa_Subs' в норме
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_bool'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_Subs_VAR_bool'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_byte'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_Subs_VAR_byte'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_word'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_Subs_VAR_word'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_dword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_Subs_VAR_dword'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_lword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_Subs_VAR_lword'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_sint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_Subs_VAR_sint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_int'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_Subs_VAR_int'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_dint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_Subs_VAR_dint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_lint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_Subs_VAR_lint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_usint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_Subs_VAR_usint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_uint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_Subs_VAR_uint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_udint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_Subs_VAR_udint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_ulint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_Subs_VAR_ulint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_real'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_Subs_VAR_real'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_lreal'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_Subs_VAR_lreal'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_time'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_Subs_VAR_time'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcDa_Subs_VAR_date'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcDa_Subs_VAR_date'.'Значение' из 'ArcMirror'

    @fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteЧтение_Архивных_Данных
	Scenario: OpcDaProxy_Subs_ReadArcVal
    Given Зеркало Шлюза 'MirrorWork' в работе
	Given Соединение с Архивом 'ArcMirror'
    Given Связь с устройством 'OpcDaProxy_Subs' в норме
    Then Чтение архивных данных 'OpcProxy_Subs_VAR_bool'.'Значение' 
    Then Чтение архивных данных 'OpcProxy_Subs_VAR_byte'.'Значение' 
    Then Чтение архивных данных 'OpcProxy_Subs_VAR_word'.'Значение' 
    Then Чтение архивных данных 'OpcProxy_Subs_VAR_dword'.'Значение' 
    Then Чтение архивных данных 'OpcProxy_Subs_VAR_lword'.'Значение' 
    Then Чтение архивных данных 'OpcProxy_Subs_VAR_sint'.'Значение' 
    Then Чтение архивных данных 'OpcProxy_Subs_VAR_int'.'Значение' 
    Then Чтение архивных данных 'OpcProxy_Subs_VAR_dint'.'Значение' 
    Then Чтение архивных данных 'OpcProxy_Subs_VAR_lint'.'Значение' 
    Then Чтение архивных данных 'OpcProxy_Subs_VAR_usint'.'Значение' 
    Then Чтение архивных данных 'OpcProxy_Subs_VAR_uint'.'Значение' 
    Then Чтение архивных данных 'OpcProxy_Subs_VAR_udint'.'Значение' 
    Then Чтение архивных данных 'OpcProxy_Subs_VAR_ulint'.'Значение' 
    Then Чтение архивных данных 'OpcProxy_Subs_VAR_real'.'Значение' 
    Then Чтение архивных данных 'OpcProxy_Subs_VAR_lreal'.'Значение' 
    Then Чтение архивных данных 'OpcProxy_Subs_VAR_time'.'Значение' 
    Then Чтение архивных данных 'OpcProxy_Subs_VAR_date'.'Значение' 

    @fromMirror
	@EpicTimeStamp		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteTimeStamp
	Scenario: OpcDaProxy_Subs_TimeStamp
    Given Зеркало Шлюза 'MirrorWork' в работе
    Given Связь с 1 устройством 'OpcDaProxy_Subs' в норме
    Given Связь с 2 устройством 'OpcDaProxy_Subs' в норме
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_bool'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_Subs_VAR_bool'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_byte'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_Subs_VAR_byte'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_word'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_Subs_VAR_word'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_dword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_Subs_VAR_dword'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_lword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_Subs_VAR_lword'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_sint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_Subs_VAR_sint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_int'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_Subs_VAR_int'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_dint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_Subs_VAR_dint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_lint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_Subs_VAR_lint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_usint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_Subs_VAR_usint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_uint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_Subs_VAR_uint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_udint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_Subs_VAR_udint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_ulint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_Subs_VAR_ulint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_real'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_Subs_VAR_real'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_lreal'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_Subs_VAR_lreal'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_time'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_Subs_VAR_time'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_date'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_Subs_VAR_date'.'Значение' из 'ArcMirror'

    @fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteЧтение_Архивных_Данных
	Scenario: Modbus_TCP_502_ReadArcVal
    Given Зеркало Шлюза 'MirrorWork' в работе
	Given Соединение с Архивом 'ArcMirror'
    Given Связь с устройством 'Mb_Tcp502_1' в норме
    Then Чтение архивных данных 'F01_Ch00'.''
	Then Чтение архивных данных 'F01_Ch01'.'' 
	Then Чтение архивных данных 'F02_Ch00'.'' 
	Then Чтение архивных данных 'F02_Ch01'.'' 
	Then Чтение архивных данных 'F03_0_INT'.'' 
	Then Чтение архивных данных 'F03_1_UINT'.'' 
	Then Чтение архивных данных 'F03_2_WORD'.'' 
	Then Чтение архивных данных 'F03_3_INT'.'' 
	Then Чтение архивных данных 'F03_20_DINT'.'' 
	Then Чтение архивных данных 'F03_100_REAL'.'' 
	Then Чтение архивных данных 'F03_102_REAL'.'' 
	Then Чтение архивных данных 'F03_120_LREAL'.'' 
	Then Чтение архивных данных 'F04_0_INT'.'' 
	Then Чтение архивных данных 'F04_1_UINT'.'' 
	Then Чтение архивных данных 'F04_2_WORD'.'' 
	Then Чтение архивных данных 'F04_3_INT'.'' 
    Then Чтение архивных данных 'MbTcp502_1_01_06_bool'.'Значение' 
    Then Чтение архивных данных 'MbTcp502_1_01_07_bool'.'Значение' 
    Then Чтение архивных данных 'MbTcp502_1_02_06_bool'.'Значение' 
    Then Чтение архивных данных 'MbTcp502_1_02_07_bool'.'Значение' 
    Then Чтение архивных данных 'MbTcp502_1_03_06_UINT'.'Значение' 
    Then Чтение архивных данных 'MbTcp502_1_03_07_WORD'.'Значение' 
    Then Чтение архивных данных 'MbTcp502_1_03_08_INT'.'Значение' 
    Then Чтение архивных данных 'MbTcp502_1_03_28_DINT'.'Значение' 
    Then Чтение архивных данных 'MbTcp502_1_03_30_DWORD'.'Значение' 
    Then Чтение архивных данных 'MbTcp502_1_03_108_REAL'.'Значение' 
    Then Чтение архивных данных 'MbTcp502_1_03_132_LREAL'.'Значение' 
    Then Чтение архивных данных 'MbTcp502_1_04_06_UINT'.'Значение' 
    Then Чтение архивных данных 'MbTcp502_1_04_07_WORD'.'Значение' 
    Then Чтение архивных данных 'MbTcp502_1_04_08_INT'.'Значение' 

    @fromMirror
	@EpicTimeStamp		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteTimeStamp
	Scenario: Modbus_TCP_502_TimeStamp
    Given Зеркало Шлюза 'MirrorWork' в работе
    Given Связь с 1 устройством 'Mb_Tcp502_1' в норме
    Given Связь с 2 устройством 'Mb_Tcp502_1' в норме
    When Чтение исходных архивных данных 'F01_Ch00'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F01_Ch00'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F02_Ch00'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F02_Ch00'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F03_0_INT'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F03_0_INT'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F03_1_UINT'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F03_1_UINT'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F03_2_WORD'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F03_2_WORD'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F03_20_DINT'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F03_20_DINT'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F03_100_REAL'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F03_100_REAL'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F03_120_LREAL'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F03_120_LREAL'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F04_0_INT'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F04_0_INT'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F04_1_UINT'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F04_1_UINT'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F04_2_WORD'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F04_2_WORD'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'MbTcp502_1_01_06_bool'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'MbTcp502_1_01_06_bool'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'MbTcp502_1_02_06_bool'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'MbTcp502_1_02_06_bool'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'MbTcp502_1_03_06_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'MbTcp502_1_03_06_UINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'MbTcp502_1_03_07_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'MbTcp502_1_03_07_WORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'MbTcp502_1_03_28_DINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'MbTcp502_1_03_28_DINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'MbTcp502_1_03_30_DWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'MbTcp502_1_03_30_DWORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'MbTcp502_1_03_108_REAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'MbTcp502_1_03_108_REAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'MbTcp502_1_03_132_LREAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'MbTcp502_1_03_132_LREAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'MbTcp502_1_04_06_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'MbTcp502_1_04_06_UINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'MbTcp502_1_04_07_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'MbTcp502_1_04_07_WORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'MbTcp502_1_04_08_INT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'MbTcp502_1_04_08_INT'.'Значение' из 'ArcMirror'

    @fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteЧтение_Архивных_Данных
	Scenario: Modbus_2_TCP_522_ReadArcVal
    Given Зеркало Шлюза 'MirrorWork' в работе
	Given Соединение с Архивом 'ArcMirror'
    Given Связь с устройством 'Mb2_Tcp522_1' в норме
    Then Чтение архивных данных 'F01_Ch00'.''
	Then Чтение архивных данных 'F01_Ch01'.'' 
	Then Чтение архивных данных 'F02_Ch00'.'' 
	Then Чтение архивных данных 'F02_Ch01'.'' 
	Then Чтение архивных данных 'F03_0_INT'.'' 
	Then Чтение архивных данных 'F03_1_UINT'.'' 
	Then Чтение архивных данных 'F03_2_WORD'.'' 
	Then Чтение архивных данных 'F03_3_INT'.'' 
	Then Чтение архивных данных 'F03_20_DINT'.'' 
	Then Чтение архивных данных 'F03_100_REAL'.'' 
	Then Чтение архивных данных 'F03_102_REAL'.'' 
	Then Чтение архивных данных 'F03_120_LREAL'.'' 
	Then Чтение архивных данных 'F04_0_INT'.'' 
	Then Чтение архивных данных 'F04_1_UINT'.'' 
	Then Чтение архивных данных 'F04_2_WORD'.'' 
	Then Чтение архивных данных 'F04_3_INT'.'' 
    Then Чтение архивных данных 'Mb2_Tcp522_1_01_06_bool'.'Значение' 
    Then Чтение архивных данных 'Mb2_Tcp522_1_01_07_bool'.'Значение' 
    Then Чтение архивных данных 'Mb2_Tcp522_1_02_06_bool'.'Значение' 
    Then Чтение архивных данных 'Mb2_Tcp522_1_02_07_bool'.'Значение' 
    Then Чтение архивных данных 'Mb2_Tcp522_1_03_06_UINT'.'Значение' 
    Then Чтение архивных данных 'Mb2_Tcp522_1_03_07_WORD'.'Значение' 
    Then Чтение архивных данных 'Mb2_Tcp522_1_03_08_INT'.'Значение' 
    Then Чтение архивных данных 'Mb2_Tcp522_1_03_28_DINT'.'Значение' 
    Then Чтение архивных данных 'Mb2_Tcp522_1_03_30_DWORD'.'Значение' 
    Then Чтение архивных данных 'Mb2_Tcp522_1_03_108_REAL'.'Значение' 
    Then Чтение архивных данных 'Mb2_Tcp522_1_03_132_LREAL'.'Значение' 
    Then Чтение архивных данных 'Mb2_Tcp522_1_04_06_UINT'.'Значение' 
    Then Чтение архивных данных 'Mb2_Tcp522_1_04_07_WORD'.'Значение' 
    Then Чтение архивных данных 'Mb2_Tcp522_1_04_08_INT'.'Значение' 

    @fromMirror
	@EpicTimeStamp		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteTimeStamp
	Scenario: Modbus_2_TCP_522_TimeStamp
    Given Зеркало Шлюза 'MirrorWork' в работе
    Given Связь с 1 устройством 'Mb2_Tcp522_1' в норме
    Given Связь с 2 устройством 'Mb2_Tcp522_1' в норме
    When Чтение исходных архивных данных 'F01_Ch00'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F01_Ch00'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F02_Ch00'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F02_Ch00'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F03_0_INT'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F03_0_INT'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F03_1_UINT'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F03_1_UINT'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F03_2_WORD'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F03_2_WORD'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F03_20_DINT'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F03_20_DINT'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F03_100_REAL'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F03_100_REAL'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F03_120_LREAL'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F03_120_LREAL'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F04_0_INT'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F04_0_INT'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F04_1_UINT'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F04_1_UINT'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'F04_2_WORD'.'' из 'ArcWork'
    Then Сравнение архивных данных 'F04_2_WORD'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'Mb2_Tcp522_1_01_06_bool'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Mb2_Tcp522_1_01_06_bool'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Mb2_Tcp522_1_02_06_bool'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Mb2_Tcp522_1_02_06_bool'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Mb2_Tcp522_1_03_06_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Mb2_Tcp522_1_03_06_UINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Mb2_Tcp522_1_03_07_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Mb2_Tcp522_1_03_07_WORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Mb2_Tcp522_1_03_28_DINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Mb2_Tcp522_1_03_28_DINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Mb2_Tcp522_1_03_30_DWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Mb2_Tcp522_1_03_30_DWORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Mb2_Tcp522_1_03_108_REAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Mb2_Tcp522_1_03_108_REAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Mb2_Tcp522_1_03_132_LREAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Mb2_Tcp522_1_03_132_LREAL'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Mb2_Tcp522_1_04_06_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Mb2_Tcp522_1_04_06_UINT'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Mb2_Tcp522_1_04_07_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Mb2_Tcp522_1_04_07_WORD'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'Mb2_Tcp522_1_04_08_INT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'Mb2_Tcp522_1_04_08_INT'.'Значение' из 'ArcMirror'

    @fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteЧтение_Архивных_Данных
	Scenario: OpcUa_GlVar_ReadArcVal
    Given Зеркало Шлюза 'MirrorWork' в работе
	Given Соединение с Архивом 'ArcMirror'
    Given Связь с устройством 'OpcUa_ASt5000_Lin' в норме
    Then Чтение архивных данных 'OpcUa_Gl_VAR_bool'.'Значение' 
    Then Чтение архивных данных 'OpcUa_Gl_VAR_byte'.'Значение' 
    Then Чтение архивных данных 'OpcUa_Gl_VAR_word'.'Значение' 
    Then Чтение архивных данных 'OpcUa_Gl_VAR_dword'.'Значение' 
    Then Чтение архивных данных 'OpcUa_Gl_VAR_lword'.'Значение' 
    Then Чтение архивных данных 'OpcUa_Gl_VAR_sint'.'Значение' 
    Then Чтение архивных данных 'OpcUa_Gl_VAR_int'.'Значение' 
    Then Чтение архивных данных 'OpcUa_Gl_VAR_dint'.'Значение' 
    Then Чтение архивных данных 'OpcUa_Gl_VAR_lint'.'Значение' 
    Then Чтение архивных данных 'OpcUa_Gl_VAR_uint'.'Значение' 
    Then Чтение архивных данных 'OpcUa_Gl_VAR_usint'.'Значение' 
    Then Чтение архивных данных 'OpcUa_Gl_VAR_udint'.'Значение'  
    Then Чтение архивных данных 'OpcUa_Gl_VAR_ulint'.'Значение' 
    Then Чтение архивных данных 'OpcUa_Gl_VAR_real'.'Значение' 
    Then Чтение архивных данных 'OpcUa_Gl_VAR_lreal'.'Значение' 
    Then Чтение архивных данных 'OpcUa_Gl_VAR_time'.'Значение' 
    Then Чтение архивных данных 'OpcUa_Gl_VAR_date'.'Значение' 
    Then Чтение архивных данных 'OpcUa_Gl_VAR_DT'.'Значение' 

    @fromMirror
	@EpicTimeStamp		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteTimeStamp
	Scenario: OpcUa_GlVar_TimeStamp
    Given Зеркало Шлюза 'MirrorWork' в работе
    Given Связь с 1 устройством 'OpcUa_ASt5000_Lin' в норме
    Given Связь с 2 устройством 'OpcUa_ASt5000_Lin' в норме
    When Чтение исходных архивных данных 'OpcUa_Gl_VAR_bool'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_Gl_VAR_bool'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_Gl_VAR_byte'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_Gl_VAR_byte'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_Gl_VAR_word'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_Gl_VAR_word'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_Gl_VAR_dword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_Gl_VAR_dword'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_Gl_VAR_lword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_Gl_VAR_lword'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_Gl_VAR_sint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_Gl_VAR_sint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_Gl_VAR_int'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_Gl_VAR_int'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_Gl_VAR_dint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_Gl_VAR_dint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_Gl_VAR_lint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_Gl_VAR_lint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_Gl_VAR_usint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_Gl_VAR_usint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_Gl_VAR_uint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_Gl_VAR_uint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_Gl_VAR_udint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_Gl_VAR_udint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_Gl_VAR_ulint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_Gl_VAR_ulint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_Gl_VAR_real'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_Gl_VAR_real'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_Gl_VAR_lreal'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_Gl_VAR_lreal'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_Gl_VAR_time'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_Gl_VAR_time'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_Gl_VAR_DT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_Gl_VAR_DT'.'Значение' из 'ArcMirror'
    #When Чтение исходных архивных данных 'OpcUa_Gl_VAR_date'.'Значение' из 'ArcWork'
    #Then Сравнение архивных данных 'OpcUa_Gl_VAR_date'.'Значение' из 'ArcMirror'

    @fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteЧтение_Архивных_Данных
	Scenario: OpcUa_PouParam_ReadArcVal
    Given Зеркало Шлюза 'MirrorWork' в работе
	Given Соединение с Архивом 'ArcMirror'
    Given Связь с устройством 'OpcUa_ASt5000_Lin' в норме
    Then Чтение архивных данных 'OpcUa_PARAM_bool'.'Значение' 
    Then Чтение архивных данных 'OpcUa_PARAM_byte'.'Значение' 
    Then Чтение архивных данных 'OpcUa_PARAM_word'.'Значение' 
    Then Чтение архивных данных 'OpcUa_PARAM_dword'.'Значение' 
    Then Чтение архивных данных 'OpcUa_PARAM_lword'.'Значение' 
    Then Чтение архивных данных 'OpcUa_PARAM_sint'.'Значение' 
    Then Чтение архивных данных 'OpcUa_PARAM_int'.'Значение' 
    Then Чтение архивных данных 'OpcUa_PARAM_dint'.'Значение' 
    Then Чтение архивных данных 'OpcUa_PARAM_lint'.'Значение' 
    Then Чтение архивных данных 'OpcUa_PARAM_usint'.'Значение' 
    Then Чтение архивных данных 'OpcUa_PARAM_uint'.'Значение' 
    Then Чтение архивных данных 'OpcUa_PARAM_udint'.'Значение'  
    Then Чтение архивных данных 'OpcUa_PARAM_ulint'.'Значение' 
    Then Чтение архивных данных 'OpcUa_PARAM_real'.'Значение' 
    Then Чтение архивных данных 'OpcUa_PARAM_lreal'.'Значение' 
    Then Чтение архивных данных 'OpcUa_PARAM_time'.'Значение' 
    Then Чтение архивных данных 'OpcUa_PARAM_date'.'Значение' 
    Then Чтение архивных данных 'OpcUa_PARAM_DT'.'Значение' 

    @fromMirror
	@EpicTimeStamp		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteTimeStamp
	Scenario: OpcUa_PouParam_TimeStamp
    Given Зеркало Шлюза 'MirrorWork' в работе
    Given Связь с 1 устройством 'OpcUa_ASt5000_Lin' в норме
    Given Связь с 2 устройством 'OpcUa_ASt5000_Lin' в норме
    When Чтение исходных архивных данных 'OpcUa_PARAM_bool'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_bool'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_PARAM_byte'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_byte'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_PARAM_word'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_word'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_PARAM_dword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_dword'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_PARAM_lword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_lword'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_PARAM_sint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_sint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_PARAM_int'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_int'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_PARAM_dint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_dint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_PARAM_lint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_lint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_PARAM_usint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_usint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_PARAM_uint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_uint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_PARAM_udint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_udint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_PARAM_ulint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_ulint'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_PARAM_real'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_real'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_PARAM_lreal'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_lreal'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_PARAM_time'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_time'.'Значение' из 'ArcMirror'
    When Чтение исходных архивных данных 'OpcUa_PARAM_DT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcUa_PARAM_DT'.'Значение' из 'ArcMirror'
    #When Чтение исходных архивных данных 'OpcUa_PARAM_date'.'Значение' из 'ArcWork'
    #Then Сравнение архивных данных 'OpcUa_PARAM_date'.'Значение' из 'ArcMirror'

    @fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteЧтение_Архивных_Данных
	Scenario: SNMPv2_ReadArcVal
    Given Зеркало Шлюза 'MirrorWork' в работе
	Given Соединение с Архивом 'ArcMirror'
    Given Связь с устройством 'Snmp_v2_NetSw28' в норме
    Then Чтение архивных данных 'UpTime'.'' 
    Then Чтение архивных данных 'Channel 10\InOctets'.''
    Then Чтение архивных данных 'Channel 10\OutOctets'.'' 
    Then Чтение архивных данных 'Channel 09\InOctets'.'' 
    Then Чтение архивных данных 'Channel 09\OutOctets'.'' 

    @fromMirror
	@EpicTimeStamp		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteTimeStamp
	Scenario: SNMPv2_TimeStamp
    Given Зеркало Шлюза 'MirrorWork' в работе
    Given Связь с 1 устройством 'Snmp_v2_NetSw28' в норме
    Given Связь с 2 устройством 'Snmp_v2_NetSw28' в норме
    When Чтение исходных архивных данных 'UpTime'.'' из 'ArcWork'
    Then Сравнение архивных данных 'UpTime'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'Channel 10\InOctets'.'' из 'ArcWork'
    Then Сравнение архивных данных 'Channel 10\InOctets'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'Channel 10\OutOctets'.'' из 'ArcWork'
    Then Сравнение архивных данных 'Channel 10\OutOctets'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'Channel 09\InOctets'.'' из 'ArcWork'
    Then Сравнение архивных данных 'Channel 09\InOctets'.'' из 'ArcMirror'
    When Чтение исходных архивных данных 'Channel 09\OutOctets'.'' из 'ArcWork'
    Then Сравнение архивных данных 'Channel 09\OutOctets'.'' из 'ArcMirror'


    @fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteMultiConfig
	Scenario: iCore2_ArcVal_cfg2
	Given Зеркало Шлюза 'MirrorDataSrc' в работе
	Given Соединение с Архивом 'ArcMirrorSrc'
    Given Связь с устройством 'iGenerator' в норме
	When Чтение архивных данных 'resVar_BOOL'.'Значение'
	When Чтение архивных данных 'resVar_BYTE'.'Значение'
	When Чтение архивных данных 'resVar_WORD'.'Значение'
	When Чтение архивных данных 'resVar_DWORD'.'Значение'
	When Чтение архивных данных 'resVar_LWORD'.'Значение'
	When Чтение архивных данных 'resVar_SINT'.'Значение'
	When Чтение архивных данных 'resVar_INT'.'Значение'
	When Чтение архивных данных 'resVar_DINT'.'Значение'
	When Чтение архивных данных 'resVar_LINT'.'Значение'
	When Чтение архивных данных 'resVar_USINT'.'Значение'
	When Чтение архивных данных 'resVar_UINT'.'Значение'
	When Чтение архивных данных 'resVar_UDINT'.'Значение'
	When Чтение архивных данных 'resVar_ULINT'.'Значение'
	When Чтение архивных данных 'resVar_REAL'.'Значение'
	When Чтение архивных данных 'resVar_LREAL'.'Значение'
	When Чтение архивных данных 'resVar_TIME'.'Значение'
	When Чтение архивных данных 'resVar_DATE'.'Значение'

    @fromMirror
	@EpicАрхив		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных @suiteMultiConfig
	Scenario: iCore2_ArcVal_cfg3
	Given Зеркало Шлюза 'MirrorDataReciv' в работе
	Given Соединение с Архивом 'ArcMirrorReciv'
    Given Связь с устройством 'iCoreReceiver' в норме
	When Чтение архивных данных 'resVar_BOOL'.'Значение'
	When Чтение архивных данных 'resVar_BYTE'.'Значение'
	When Чтение архивных данных 'resVar_WORD'.'Значение'
	When Чтение архивных данных 'resVar_DWORD'.'Значение'
	When Чтение архивных данных 'resVar_LWORD'.'Значение'
	When Чтение архивных данных 'resVar_SINT'.'Значение'
	When Чтение архивных данных 'resVar_INT'.'Значение'
	When Чтение архивных данных 'resVar_DINT'.'Значение'
	When Чтение архивных данных 'resVar_LINT'.'Значение'
	When Чтение архивных данных 'resVar_USINT'.'Значение'
	When Чтение архивных данных 'resVar_UINT'.'Значение'
	When Чтение архивных данных 'resVar_UDINT'.'Значение'
	When Чтение архивных данных 'resVar_ULINT'.'Значение'
	When Чтение архивных данных 'resVar_REAL'.'Значение'
	When Чтение архивных данных 'resVar_LREAL'.'Значение'
	When Чтение архивных данных 'resVar_TIME'.'Значение'
	When Чтение архивных данных 'resVar_DATE'.'Значение'
       


