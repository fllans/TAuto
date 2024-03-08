@ignore
Feature: DataMirrorRead
	
	@fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЧтение_RunTime
	@critical
	Scenario: iCore2_ReadRT
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'ICORE2' в норме
    Then Чтение Runtime значения 'resVar_BOOL'.'Значение' 
    Then Чтение Runtime значения 'resVar_BYTE'.'Значение' 
    Then Чтение Runtime значения 'resVar_WORD'.'Значение' 
    Then Чтение Runtime значения 'resVar_DWORD'.'Значение' 
    Then Чтение Runtime значения 'resVar_LWORD'.'Значение' 
    Then Чтение Runtime значения 'resVar_SINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_INT'.'Значение' 
    Then Чтение Runtime значения 'resVar_DINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_LINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_USINT'.'Значение'
	Then Чтение Runtime значения 'resVar_UINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_UDINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_ULINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_REAL'.'Значение' 
    Then Чтение Runtime значения 'resVar_LREAL'.'Значение' 
    Then Чтение Runtime значения 'resVar_TIME'.'Значение' 
    Then Чтение Runtime значения 'resVar_DATE'.'Значение'

    @fromMirror
	@EpicПроверка_Quality			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteПроверка_Quality
	@critical
    Scenario: iCore2_Const_Quality
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'ICORE2' в норме
    Then Проверка Runtime качества 'Good' переменной 'resVar_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'resVar_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_DATE_const'.'Значение'

    @fromMirror
	@EpicСобытия		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteТехСобытия
	Scenario: iCore2_TechEvents
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'ICORE2' в норме
	When Очистка группы событий Events
	Then Запись Runtime значений 'TRUE' в 'CheckEvents_BitMask_Manual'.'Значение'
    Given Sleep 3
	Then Получаю события группы 'Events'
	Then Проверка 2 событий по параметру 'Var_Events_BitMask'.'_TYPE_BOOL1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_BYTE1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_WORD1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_DWORD1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_LWORD1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_SINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_INT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_DINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_LINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_USINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_UINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_UDINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_ULINT1'
	Then Проверка 2 событий по параметру 'Var_Events_BitMask'.'_INST_BOOL1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_BYTE1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_WORD1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_DWORD1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_LWORD1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_SINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_INT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_DINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_LINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_USINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_UINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_UDINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_ULINT1'
    Then Запись Runtime значений 'TRUE' в 'CheckEvents_ApertVal_Manual'.'Значение'
    Given Sleep 3
	Then Получаю события группы 'Events'
	Then Проверка 2 событий по параметру 'Var_Events_ApertVal'.'_TYPE_BOOL1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_BYTE1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_WORD1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_DWORD1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_LWORD1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_SINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_INT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_DINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_LINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_USINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_UINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_UDINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_ULINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_REAL1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_LREAL1'
	Then Проверка 2 событий по параметру 'Var_Events_ApertVal'.'_INST_BOOL1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_BYTE1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_WORD1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_DWORD1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_LWORD1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_SINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_INT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_DINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_LINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_USINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_UINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_UDINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_ULINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_REAL1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_LREAL1'
	Then Запись Runtime значений 'TRUE' в 'CheckEvents_ChangeVal_Manual'.'Значение'
	Given Sleep 3
	Then Получаю события группы 'Events'
	Then Проверка 2 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_BOOL1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_BYTE1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_WORD1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_DWORD1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_LWORD1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_SINT1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_INT1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_DINT1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_LINT1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_USINT1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_UINT1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_UDINT1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_ULINT1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_REAL1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_LREAL1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_TIME1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_DATE'
    
    @fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЧтение_RunTime
	@critical
    Scenario: Cpu715_Red_ReadRT
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'cpu715_Red' в норме
    Then Чтение Runtime значения 'resVar_BOOL'.'Значение' 
    Then Чтение Runtime значения 'resVar_BYTE'.'Значение' 
    Then Чтение Runtime значения 'resVar_WORD'.'Значение' 
    Then Чтение Runtime значения 'resVar_DWORD'.'Значение' 
    Then Чтение Runtime значения 'resVar_LWORD'.'Значение' 
    Then Чтение Runtime значения 'resVar_SINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_INT'.'Значение' 
    Then Чтение Runtime значения 'resVar_DINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_LINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_USINT'.'Значение'
 	Then Чтение Runtime значения 'resVar_UINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_UDINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_ULINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_REAL'.'Значение' 
    Then Чтение Runtime значения 'resVar_LREAL'.'Значение' 
    Then Чтение Runtime значения 'resVar_TIME'.'Значение' 
	Then Чтение Runtime значения 'resVar_DATE'.'Значение'

    @fromMirror
	@EpicПроверка_Quality			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteПроверка_Quality
	@critical
    Scenario: Cpu715_Red_Const_Quality
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'cpu715_Red' в норме
    Then Проверка Runtime качества 'Good' переменной 'resVar_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'resVar_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_DATE_const'.'Значение'

    @fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЧтение_RunTime
	@critical
    Scenario: Cpu715_Clust_ReadRT
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'cpu715_Cluster' в норме
    Then Чтение из Кластера 1 Runtime значения 'resVar_ALL_TYPES'.'Значение' 
	Then Чтение из Кластера 2 Runtime значения 'resVar_ALL_TYPES'.'Значение' 

    @fromMirror
	@EpicПроверка_Quality			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteПроверка_Quality
	@critical
    Scenario: Cpu715_Clust_Const_Quality
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'cpu715_Cluster' в норме
    Then Проверка Runtime качества 'Good' переменной 1 Кластера 'resVar_ALL_TYPES_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 2 Кластера 'resVar_ALL_TYPES_const'.'Значение' 

        @fromMirror
	@EpicСобытия		@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteТехСобытия
	Scenario: Cpu715_Mono_TechEvents
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'cpu715_Mono' в норме
	When Очистка группы событий Events
	Then Запись Runtime значений 'TRUE' в 'CheckEvents_BitMask_Manual'.'Значение'
    Given Sleep 3
	Then Получаю события группы 'EventsPLC'
	#Then Проверка 2 событий по параметру 'Var_Events_BitMask'.'_TYPE_BOOL1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_BYTE1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_WORD1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_DWORD1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_LWORD1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_SINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_INT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_DINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_LINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_USINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_UINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_UDINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_TYPE_ULINT1'
	#Then Проверка 2 событий по параметру 'Var_Events_BitMask'.'_INST_BOOL1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_BYTE1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_WORD1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_DWORD1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_LWORD1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_SINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_INT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_DINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_LINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_USINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_UINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_UDINT1'
	Then Проверка 9 событий по параметру 'Var_Events_BitMask'.'_INST_ULINT1'
    Then Запись Runtime значений 'TRUE' в 'CheckEvents_ApertVal_Manual'.'Значение'
    Given Sleep 3
	Then Получаю события группы 'EventsPLC'
	Then Проверка 2 событий по параметру 'Var_Events_ApertVal'.'_TYPE_BOOL1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_BYTE1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_WORD1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_DWORD1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_LWORD1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_SINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_INT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_DINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_LINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_USINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_UINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_UDINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_ULINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_REAL1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_TYPE_LREAL1'
	Then Проверка 2 событий по параметру 'Var_Events_ApertVal'.'_INST_BOOL1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_BYTE1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_WORD1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_DWORD1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_LWORD1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_SINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_INT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_DINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_LINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_USINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_UINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_UDINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_ULINT1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_REAL1'
	Then Проверка 14 событий по параметру 'Var_Events_ApertVal'.'_INST_LREAL1'
    Then Запись Runtime значений 'TRUE' в 'CheckEvents_ChangeVal_Manual'.'Значение'
	Given Sleep 3
	Then Получаю события группы 'EventsPLC'
	Then Проверка 2 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_BOOL1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_BYTE1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_WORD1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_DWORD1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_LWORD1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_SINT1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_INT1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_DINT1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_LINT1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_USINT1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_UINT1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_UDINT1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_ULINT1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_REAL1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_LREAL1'
	Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_TIME1'
	#Then Проверка 9 событий по параметру 'Var_Events_ChangeVal'.'_TYPE_DATE'

    @fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЧтение_RunTime
	@critical
    Scenario: cpu850_Red_ReadRT
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'CPU850_RED' в норме
    Then Чтение Runtime значения 'resVar_BOOL'.'Значение' 
    Then Чтение Runtime значения 'resVar_BYTE'.'Значение' 
    Then Чтение Runtime значения 'resVar_WORD'.'Значение' 
    Then Чтение Runtime значения 'resVar_DWORD'.'Значение' 
    Then Чтение Runtime значения 'resVar_LWORD'.'Значение' 
    Then Чтение Runtime значения 'resVar_SINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_INT'.'Значение' 
    Then Чтение Runtime значения 'resVar_DINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_LINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_USINT'.'Значение'
 	Then Чтение Runtime значения 'resVar_UINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_UDINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_ULINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_REAL'.'Значение' 
    Then Чтение Runtime значения 'resVar_LREAL'.'Значение' 
    Then Чтение Runtime значения 'resVar_TIME'.'Значение' 
	Then Чтение Runtime значения 'resVar_DATE'.'Значение'

    @fromMirror
	@EpicПроверка_Quality			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteПроверка_Quality
	@critical
    Scenario: cpu850_Red_Const_Quality
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'CPU850_RED' в норме
    Then Проверка Runtime качества 'Good' переменной 'resVar_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'resVar_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_DATE_const'.'Значение'

    @fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЧтение_RunTime
	@critical
    Scenario: GwEv1_ReadRT
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'GwExch_v1' в норме
    Then Чтение Runtime значения 'GEv1_Var_BOOL'.'Значение' 
    Then Чтение Runtime значения 'GEv1_Var_BYTE'.'Значение' 
    Then Чтение Runtime значения 'GEv1_Var_WORD'.'Значение' 
    Then Чтение Runtime значения 'GEv1_Var_DWORD'.'Значение' 
    Then Чтение Runtime значения 'GEv1_Var_LWORD'.'Значение' 
    Then Чтение Runtime значения 'GEv1_Var_SINT'.'Значение' 
    Then Чтение Runtime значения 'GEv1_Var_INT'.'Значение' 
    Then Чтение Runtime значения 'GEv1_Var_DINT'.'Значение' 
    Then Чтение Runtime значения 'GEv1_Var_LINT'.'Значение' 
    Then Чтение Runtime значения 'GEv1_Var_USINT'.'Значение' 
    Then Чтение Runtime значения 'GEv1_Var_UINT'.'Значение' 
    Then Чтение Runtime значения 'GEv1_Var_UDINT'.'Значение' 
    Then Чтение Runtime значения 'GEv1_Var_ULINT'.'Значение' 
    Then Чтение Runtime значения 'GEv1_Var_REAL'.'Значение' 
    Then Чтение Runtime значения 'GEv1_Var_LREAL'.'Значение' 
    Then Чтение Runtime значения 'GEv1_Var_TIME'.'Значение' 
    Then Чтение Runtime значения 'GEv1_Var_DATE'.'Значение'

    @fromMirror
	@EpicПроверка_Quality			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteПроверка_Quality
	@critical
    Scenario: GwEv1_Const_Quality
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'GwExch_v1' в норме
    Then Проверка Runtime качества 'Good' переменной 'GEv1_Var_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GEv1_Var_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GEv1_Var_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GEv1_Var_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GEv1_Var_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GEv1_Var_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GEv1_Var_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GEv1_Var_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GEv1_Var_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GEv1_Var_USINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GEv1_Var_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GEv1_Var_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GEv1_Var_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GEv1_Var_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GEv1_Var_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GEv1_Var_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GEv1_Var_DATE_const'.'Значение'

        @fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЧтение_RunTime
	@critical
    Scenario: GwE2v1_ReadRT
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'GwExch_2_v1' в норме
    Then Чтение Runtime значения 'GwE2v1_Var_BOOL'.'Значение' 
    Then Чтение Runtime значения 'GwE2v1_Var_BYTE'.'Значение' 
    Then Чтение Runtime значения 'GwE2v1_Var_WORD'.'Значение' 
    Then Чтение Runtime значения 'GwE2v1_Var_DWORD'.'Значение' 
    Then Чтение Runtime значения 'GwE2v1_Var_LWORD'.'Значение' 
    Then Чтение Runtime значения 'GwE2v1_Var_SINT'.'Значение' 
    Then Чтение Runtime значения 'GwE2v1_Var_INT'.'Значение' 
    Then Чтение Runtime значения 'GwE2v1_Var_DINT'.'Значение' 
    Then Чтение Runtime значения 'GwE2v1_Var_LINT'.'Значение' 
    Then Чтение Runtime значения 'GwE2v1_Var_USINT'.'Значение' 
    Then Чтение Runtime значения 'GwE2v1_Var_UINT'.'Значение' 
    Then Чтение Runtime значения 'GwE2v1_Var_UDINT'.'Значение' 
    Then Чтение Runtime значения 'GwE2v1_Var_ULINT'.'Значение' 
    Then Чтение Runtime значения 'GwE2v1_Var_REAL'.'Значение' 
    Then Чтение Runtime значения 'GwE2v1_Var_LREAL'.'Значение' 
    Then Чтение Runtime значения 'GwE2v1_Var_TIME'.'Значение' 
    Then Чтение Runtime значения 'GwE2v1_Var_DATE'.'Значение' 

    @fromMirror
	@EpicПроверка_Quality			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteПроверка_Quality
	@critical
    Scenario: GwE2v1_Const_Quality
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'GwExch_2_v1' в норме
    Then Проверка Runtime качества 'Good' переменной 'GwE2v1_Var_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2v1_Var_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2v1_Var_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2v1_Var_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2v1_Var_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2v1_Var_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2v1_Var_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2v1_Var_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2v1_Var_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2v1_Var_USINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2v1_Var_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2v1_Var_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2v1_Var_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2v1_Var_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2v1_Var_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2v1_Var_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2v1_Var_DATE_const'.'Значение'

    @fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЧтение_RunTime
	@critical
    Scenario: VerProxy52_GE_v1_ReadRT
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'VerProxy52_GE_v1' в норме
    Then Чтение Runtime значения 'Var_BOOL'.'Значение' 
    Then Чтение Runtime значения 'Var_BYTE'.'Значение' 
    Then Чтение Runtime значения 'Var_WORD'.'Значение' 
    Then Чтение Runtime значения 'Var_DWORD'.'Значение' 
    Then Чтение Runtime значения 'Var_LWORD'.'Значение' 
    Then Чтение Runtime значения 'Var_SINT'.'Значение' 
    Then Чтение Runtime значения 'Var_INT'.'Значение' 
    Then Чтение Runtime значения 'Var_DINT'.'Значение' 
    Then Чтение Runtime значения 'Var_LINT'.'Значение' 
    Then Чтение Runtime значения 'Var_USINT'.'Значение' 
    Then Чтение Runtime значения 'Var_UINT'.'Значение' 
    Then Чтение Runtime значения 'Var_UDINT'.'Значение' 
    Then Чтение Runtime значения 'Var_ULINT'.'Значение' 
    Then Чтение Runtime значения 'Var_REAL'.'Значение' 
    Then Чтение Runtime значения 'Var_LREAL'.'Значение' 
    Then Чтение Runtime значения 'Var_TIME'.'Значение' 
    Then Чтение Runtime значения 'Var_DATE'.'Значение'

    @fromMirror
	@EpicПроверка_Quality			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteПроверка_Quality
	@critical
    Scenario: VerProxy52_GE_v1_Const_Quality
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'VerProxy52_GE_v1' в норме
    Then Проверка Runtime качества 'Good' переменной 'Var_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_USINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_DATE_const'.'Значение'

    @fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЧтение_RunTime
	@critical
    Scenario: VerProxy52_GE_2_v1_ReadRT
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'VerProxy52_GE_2_v1' в норме
    Then Чтение Runtime значения 'Var_BOOL'.'Значение' 
    Then Чтение Runtime значения 'Var_BYTE'.'Значение' 
    Then Чтение Runtime значения 'Var_WORD'.'Значение' 
    Then Чтение Runtime значения 'Var_DWORD'.'Значение' 
    Then Чтение Runtime значения 'Var_LWORD'.'Значение' 
    Then Чтение Runtime значения 'Var_SINT'.'Значение' 
    Then Чтение Runtime значения 'Var_INT'.'Значение' 
    Then Чтение Runtime значения 'Var_DINT'.'Значение' 
    Then Чтение Runtime значения 'Var_LINT'.'Значение' 
    Then Чтение Runtime значения 'Var_USINT'.'Значение' 
    Then Чтение Runtime значения 'Var_UINT'.'Значение' 
    Then Чтение Runtime значения 'Var_UDINT'.'Значение' 
    Then Чтение Runtime значения 'Var_ULINT'.'Значение' 
    Then Чтение Runtime значения 'Var_REAL'.'Значение' 
    Then Чтение Runtime значения 'Var_LREAL'.'Значение' 
    Then Чтение Runtime значения 'Var_TIME'.'Значение' 
    Then Чтение Runtime значения 'Var_DATE'.'Значение'

    @fromMirror
	@EpicПроверка_Quality			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteПроверка_Quality
	@critical
    Scenario: VerProxy52_GE_2_v1_Const_Quality
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'VerProxy52_GE_2_v1' в норме
    Then Проверка Runtime качества 'Good' переменной 'Var_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_USINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'Var_DATE_const'.'Значение'


            @fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЧтение_RunTime
	@critical
    Scenario: UDP_to_UDP_ReadRT
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'UDP_receiver_1' в норме
    Then Чтение Runtime значения 'resVar_BOOL'.'Значение' 
    Then Чтение Runtime значения 'resVar_BYTE'.'Значение' 
    Then Чтение Runtime значения 'resVar_WORD'.'Значение' 
    Then Чтение Runtime значения 'resVar_DWORD'.'Значение' 
    Then Чтение Runtime значения 'resVar_LWORD'.'Значение' 
    Then Чтение Runtime значения 'resVar_SINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_INT'.'Значение' 
    Then Чтение Runtime значения 'resVar_DINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_LINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_USINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_UINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_UDINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_ULINT'.'Значение' 
    Then Чтение Runtime значения 'resVar_REAL'.'Значение' 
    Then Чтение Runtime значения 'resVar_LREAL'.'Значение' 
    Then Чтение Runtime значения 'resVar_TIME'.'Значение' 
    Then Чтение Runtime значения 'resVar_DATE'.'Значение'

    @fromMirror
	@EpicПроверка_Quality			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteПроверка_Quality
	@critical
    Scenario: UDP_to_UDP_Const_Quality
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'UDP_receiver_1' в норме
    Then Проверка Runtime качества 'Good' переменной 'resVar_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_USINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'resVar_DATE_const'.'Значение'

    @fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЧтение_RunTime
	@critical
    Scenario: Iec104_SlaveSp_ReadRT
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'iec104_sporadic' в норме
    Then Чтение Runtime значения 'Iec104_VAR_bool'.'Значение' 
    Then Чтение Runtime значения 'Iec104_VAR_byte'.'Значение' 
    Then Чтение Runtime значения 'Iec104_VAR_word'.'Значение' 
    Then Чтение Runtime значения 'Iec104_VAR_dword'.'Значение' 
    Then Чтение Runtime значения 'Iec104_VAR_lword'.'Значение' 
    Then Чтение Runtime значения 'Iec104_VAR_sint'.'Значение' 
    Then Чтение Runtime значения 'Iec104_VAR_int'.'Значение' 
    Then Чтение Runtime значения 'Iec104_VAR_dint'.'Значение' 
    Then Чтение Runtime значения 'Iec104_VAR_lint'.'Значение' 
    Then Чтение Runtime значения 'Iec104_VAR_usint'.'Значение' 
    Then Чтение Runtime значения 'Iec104_VAR_uint'.'Значение' 
    Then Чтение Runtime значения 'Iec104_VAR_udint'.'Значение' 
    Then Чтение Runtime значения 'Iec104_VAR_ulint'.'Значение' 
    Then Чтение Runtime значения 'Iec104_VAR_real'.'Значение' 
    Then Чтение Runtime значения 'Iec104_VAR_lreal'.'Значение' 
    Then Чтение Runtime значения 'Iec104_VAR_time'.'Значение' 
    Then Чтение Runtime значения 'Iec104_VAR_date'.'Значение' 

    @fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЧтение_RunTime
	@critical
    Scenario: OpcDa_Subs_ReadRT
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'OpcDa_Subs' в норме
    Then Чтение Runtime значения 'OpcDa_Subs_VAR_bool'.'Значение' 
    Then Чтение Runtime значения 'OpcDa_Subs_VAR_byte'.'Значение' 
    Then Чтение Runtime значения 'OpcDa_Subs_VAR_word'.'Значение' 
    Then Чтение Runtime значения 'OpcDa_Subs_VAR_dword'.'Значение' 
    Then Чтение Runtime значения 'OpcDa_Subs_VAR_lword'.'Значение' 
    Then Чтение Runtime значения 'OpcDa_Subs_VAR_sint'.'Значение' 
    Then Чтение Runtime значения 'OpcDa_Subs_VAR_int'.'Значение' 
    Then Чтение Runtime значения 'OpcDa_Subs_VAR_dint'.'Значение' 
    Then Чтение Runtime значения 'OpcDa_Subs_VAR_lint'.'Значение' 
    Then Чтение Runtime значения 'OpcDa_Subs_VAR_usint'.'Значение' 
    Then Чтение Runtime значения 'OpcDa_Subs_VAR_uint'.'Значение' 
    Then Чтение Runtime значения 'OpcDa_Subs_VAR_udint'.'Значение' 
    Then Чтение Runtime значения 'OpcDa_Subs_VAR_ulint'.'Значение' 
    Then Чтение Runtime значения 'OpcDa_Subs_VAR_real'.'Значение' 
    Then Чтение Runtime значения 'OpcDa_Subs_VAR_lreal'.'Значение' 
    Then Чтение Runtime значения 'OpcDa_Subs_VAR_time'.'Значение' 
    Then Чтение Runtime значения 'OpcDa_Subs_VAR_date'.'Значение'

    @fromMirror
	@EpicПроверка_Quality			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteПроверка_Quality
	@critical
    Scenario: OpcDa_Subs_Const_Quality
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'OpcDa_Subs' в норме
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_Subs_VAR_bool_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_Subs_VAR_byte_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_Subs_VAR_word_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_Subs_VAR_dword_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_Subs_VAR_lword_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_Subs_VAR_sint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_Subs_VAR_int_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_Subs_VAR_dint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_Subs_VAR_lint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_Subs_VAR_usint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_Subs_VAR_uint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_Subs_VAR_udint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_Subs_VAR_ulint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_Subs_VAR_real_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_Subs_VAR_lreal_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_Subs_VAR_time_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_Subs_VAR_date_const'.'Значение'
    
    @fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЧтение_RunTime
	@critical
    Scenario: OpcDaProxy_Subs_ReadRT
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'OpcDaProxy_Subs' в норме
    Then Чтение Runtime значения 'OpcProxy_Subs_VAR_bool'.'Значение' 
    Then Чтение Runtime значения 'OpcProxy_Subs_VAR_byte'.'Значение' 
    Then Чтение Runtime значения 'OpcProxy_Subs_VAR_word'.'Значение' 
    Then Чтение Runtime значения 'OpcProxy_Subs_VAR_dword'.'Значение' 
    Then Чтение Runtime значения 'OpcProxy_Subs_VAR_lword'.'Значение' 
    Then Чтение Runtime значения 'OpcProxy_Subs_VAR_sint'.'Значение' 
    Then Чтение Runtime значения 'OpcProxy_Subs_VAR_int'.'Значение' 
    Then Чтение Runtime значения 'OpcProxy_Subs_VAR_dint'.'Значение' 
    Then Чтение Runtime значения 'OpcProxy_Subs_VAR_lint'.'Значение' 
    Then Чтение Runtime значения 'OpcProxy_Subs_VAR_usint'.'Значение' 
    Then Чтение Runtime значения 'OpcProxy_Subs_VAR_uint'.'Значение' 
    Then Чтение Runtime значения 'OpcProxy_Subs_VAR_udint'.'Значение' 
    Then Чтение Runtime значения 'OpcProxy_Subs_VAR_ulint'.'Значение' 
    Then Чтение Runtime значения 'OpcProxy_Subs_VAR_real'.'Значение' 
    Then Чтение Runtime значения 'OpcProxy_Subs_VAR_lreal'.'Значение' 
    Then Чтение Runtime значения 'OpcProxy_Subs_VAR_time'.'Значение' 
    Then Чтение Runtime значения 'OpcProxy_Subs_VAR_date'.'Значение' 

    @fromMirror
	@EpicПроверка_Quality			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteПроверка_Quality
	@critical
    Scenario: OpcDaProxy_Subs_Const_Quality
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'OpcDaProxy_Subs' в норме
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_Subs_VAR_bool_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_Subs_VAR_byte_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_Subs_VAR_word_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_Subs_VAR_dword_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_Subs_VAR_lword_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_Subs_VAR_sint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_Subs_VAR_int_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_Subs_VAR_dint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_Subs_VAR_lint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_Subs_VAR_usint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_Subs_VAR_uint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_Subs_VAR_udint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_Subs_VAR_ulint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_Subs_VAR_real_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_Subs_VAR_lreal_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_Subs_VAR_time_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_Subs_VAR_date_const'.'Значение' 

    @fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЧтение_RunTime
	@critical
    Scenario: Modbus_TCP_502_ReadTR
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме    
    Given Связь с устройством 'Mb_Tcp502_1' в норме
	Then Чтение Runtime значения 'F01_Ch00'.''
	Then Чтение Runtime значения 'F01_Ch01'.'' 
	Then Чтение Runtime значения 'F02_Ch00'.'' 
	Then Чтение Runtime значения 'F02_Ch01'.'' 
	Then Чтение Runtime значения 'F03_0_INT'.'' 
	Then Чтение Runtime значения 'F03_1_UINT'.'' 
	Then Чтение Runtime значения 'F03_2_WORD'.'' 
	Then Чтение Runtime значения 'F03_3_INT'.'' 
	Then Чтение Runtime значения 'F03_20_DINT'.'' 
	Then Чтение Runtime значения 'F03_100_REAL'.'' 
	Then Чтение Runtime значения 'F03_102_REAL'.'' 
	Then Чтение Runtime значения 'F03_120_LREAL'.'' 
	Then Чтение Runtime значения 'F04_0_INT'.'' 
	Then Чтение Runtime значения 'F04_1_UINT'.'' 
	Then Чтение Runtime значения 'F04_2_WORD'.'' 
	Then Чтение Runtime значения 'F04_3_INT'.'' 
    Then Чтение Runtime значения 'MbTcp502_1_01_06_bool'.'Значение' 
    Then Чтение Runtime значения 'MbTcp502_1_01_07_bool'.'Значение' 
    Then Чтение Runtime значения 'MbTcp502_1_02_06_bool'.'Значение' 
    Then Чтение Runtime значения 'MbTcp502_1_02_07_bool'.'Значение' 
    Then Чтение Runtime значения 'MbTcp502_1_03_06_UINT'.'Значение' 
    Then Чтение Runtime значения 'MbTcp502_1_03_07_WORD'.'Значение' 
    Then Чтение Runtime значения 'MbTcp502_1_03_08_INT'.'Значение' 
    Then Чтение Runtime значения 'MbTcp502_1_03_28_DINT'.'Значение' 
    Then Чтение Runtime значения 'MbTcp502_1_03_30_DWORD'.'Значение' 
    Then Чтение Runtime значения 'MbTcp502_1_03_108_REAL'.'Значение' 
    Then Чтение Runtime значения 'MbTcp502_1_03_110_REAL'.'Значение' 
    Then Чтение Runtime значения 'MbTcp502_1_03_132_LREAL'.'Значение' 
    Then Чтение Runtime значения 'MbTcp502_1_04_06_UINT'.'Значение' 
    Then Чтение Runtime значения 'MbTcp502_1_04_07_WORD'.'Значение' 
    Then Чтение Runtime значения 'MbTcp502_1_04_08_INT'.'Значение' 
    Then Чтение Runtime значения 'MbTcp502_1_04_09_INT'.'Значение' 

    @fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЧтение_RunTime
	@critical
    Scenario: Modbus_2_TCP_522_ReadTR
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме    
    Given Связь с устройством 'Mb2_Tcp522_1' в норме
	Then Чтение Runtime значения 'F01_Ch00'.''
	Then Чтение Runtime значения 'F01_Ch01'.'' 
	Then Чтение Runtime значения 'F02_Ch00'.'' 
	Then Чтение Runtime значения 'F02_Ch01'.'' 
	Then Чтение Runtime значения 'F03_0_INT'.'' 
	Then Чтение Runtime значения 'F03_1_UINT'.'' 
	Then Чтение Runtime значения 'F03_2_WORD'.'' 
	Then Чтение Runtime значения 'F03_3_INT'.'' 
	Then Чтение Runtime значения 'F03_20_DINT'.'' 
	Then Чтение Runtime значения 'F03_100_REAL'.'' 
	Then Чтение Runtime значения 'F03_102_REAL'.'' 
	Then Чтение Runtime значения 'F03_120_LREAL'.'' 
	Then Чтение Runtime значения 'F04_0_INT'.'' 
	Then Чтение Runtime значения 'F04_1_UINT'.'' 
	Then Чтение Runtime значения 'F04_2_WORD'.'' 
	Then Чтение Runtime значения 'F04_3_INT'.'' 
    Then Чтение Runtime значения 'Mb2_Tcp522_1_01_06_bool'.'Значение' 
    Then Чтение Runtime значения 'Mb2_Tcp522_1_01_07_bool'.'Значение' 
    Then Чтение Runtime значения 'Mb2_Tcp522_1_02_06_bool'.'Значение' 
    Then Чтение Runtime значения 'Mb2_Tcp522_1_02_07_bool'.'Значение' 
    Then Чтение Runtime значения 'Mb2_Tcp522_1_03_06_UINT'.'Значение' 
    Then Чтение Runtime значения 'Mb2_Tcp522_1_03_07_WORD'.'Значение' 
    Then Чтение Runtime значения 'Mb2_Tcp522_1_03_08_INT'.'Значение' 
    Then Чтение Runtime значения 'Mb2_Tcp522_1_03_28_DINT'.'Значение' 
    Then Чтение Runtime значения 'Mb2_Tcp522_1_03_30_DWORD'.'Значение' 
    Then Чтение Runtime значения 'Mb2_Tcp522_1_03_108_REAL'.'Значение' 
    Then Чтение Runtime значения 'Mb2_Tcp522_1_03_110_REAL'.'Значение' 
    Then Чтение Runtime значения 'Mb2_Tcp522_1_03_132_LREAL'.'Значение' 
    Then Чтение Runtime значения 'Mb2_Tcp522_1_04_06_UINT'.'Значение' 
    Then Чтение Runtime значения 'Mb2_Tcp522_1_04_07_WORD'.'Значение' 
    Then Чтение Runtime значения 'Mb2_Tcp522_1_04_08_INT'.'Значение' 
    Then Чтение Runtime значения 'Mb2_Tcp522_1_04_09_INT'.'Значение' 

    @fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЧтение_RunTime
	@critical
    Scenario: OpcUa_Gl_Var_ReadRT
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме 
    Given Связь с устройством 'OpcUa_ASt5000_Lin' в норме
    Then Чтение Runtime значения 'OpcUa_Gl_VAR_bool'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_Gl_VAR_byte'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_Gl_VAR_word'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_Gl_VAR_dword'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_Gl_VAR_lword'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_Gl_VAR_sint'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_Gl_VAR_int'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_Gl_VAR_dint'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_Gl_VAR_lint'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_Gl_VAR_usint'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_Gl_VAR_uint'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_Gl_VAR_udint'.'Значение'  
    Then Чтение Runtime значения 'OpcUa_Gl_VAR_ulint'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_Gl_VAR_real'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_Gl_VAR_lreal'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_Gl_VAR_time'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_Gl_VAR_date'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_Gl_VAR_DT'.'Значение' 
    
	Then Чтение Runtime значения 'OpcUa_Gl_Block'.'In_ALL_TYPES'
	Then Чтение Runtime значения 'OpcUa_Gl_Block'.'Local_ALL_TYPES' 
	Then Чтение Runtime значения 'OpcUa_Gl_Block'.'Out_ALL_TYPES' 

    @fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЧтение_RunTime
	@critical
    Scenario: OpcUa_PouParam_ReadRT
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме 
    Given Связь с устройством 'OpcUa_ASt5000_Lin' в норме
    Then Чтение Runtime значения 'OpcUa_PARAM_bool'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_PARAM_byte'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_PARAM_word'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_PARAM_dword'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_PARAM_lword'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_PARAM_sint'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_PARAM_int'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_PARAM_dint'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_PARAM_lint'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_PARAM_usint'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_PARAM_uint'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_PARAM_udint'.'Значение'  
    Then Чтение Runtime значения 'OpcUa_PARAM_ulint'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_PARAM_real'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_PARAM_lreal'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_PARAM_time'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_PARAM_date'.'Значение' 
    Then Чтение Runtime значения 'OpcUa_PARAM_DT'.'Значение' 
    
	#Then Чтение Runtime значения 'OpcUa_PARAM_Block'.'In_ALL_TYPES'
	Then Чтение Runtime значения 'OpcUa_PARAM_Block'.'Local_ALL_TYPES' 
	Then Чтение Runtime значения 'OpcUa_PARAM_Block'.'Out_ALL_TYPES'

    @fromMirror
	@EpicПроверка_Quality			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteПроверка_Quality
	@critical
    Scenario: OpcUa_PouParam_Const_Quality
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме 
    Given Связь с устройством 'OpcUa_ASt5000_Lin' в норме
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_bool_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_byte_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_word_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_dword_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_lword_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_sint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_int_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_dint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_lint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_usint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_uint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_udint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_ulint_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_real_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_lreal_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_time_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_date_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_DT_const'.'Значение' 

    @fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЧтение_RunTime
	@critical
    Scenario: SNMPv2_ReadRT
    Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме 
    Given Связь с устройством 'Snmp_v2_NetSw28' в норме
    Then Чтение Runtime значения 'Name'.'' 
    Then Чтение Runtime значения 'Description'.''
    Then Чтение Runtime значения 'UpTime'.''
    Then Чтение Runtime значения 'MAC Адрес'.'' 
    Then Чтение Runtime значения 'Channel 09\Speed '.''
    Then Чтение Runtime значения 'Channel 09\InOctets '.'' 
    Then Чтение Runtime значения 'Channel 09\OutOctets '.'' 
    Then Чтение Runtime значения 'Порт 9'.'' 
	Then Чтение Runtime значения 'Channel 10\Speed '.''
    Then Чтение Runtime значения 'Channel 10\InOctets '.'' 
    Then Чтение Runtime значения 'Channel 10\OutOctets '.'' 
    Then Чтение Runtime значения 'Порт 10'.'' 

	@fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteMultiConfig
	Scenario: iCore2_WR_cfg2
	Given Шлюзы 'DataSrc' в работе
	Given Зеркало Шлюза 'MirrorDataSrc' в работе
	Given Связь с устройством 'MirrorDataSrc' в норме
	Given Связь с устройством 'iGenerator' в норме
	Then Проверка записи Runtime значений 'BOOL AnyValues' в 'resVar_BOOL_external'.'Значение'
	Then Проверка записи Runtime значений 'BYTE AnyValues' в 'resVar_BYTE_external'.'Значение'
	Then Проверка записи Runtime значений 'WORD AnyValues' в 'resVar_WORD_external'.'Значение'
	Then Проверка записи Runtime значений 'DWORD AnyValues' в 'resVar_DWORD_external'.'Значение'
	Then Проверка записи Runtime значений 'LWORD AnyValues' в 'resVar_LWORD_external'.'Значение'
	Then Проверка записи Runtime значений 'SINT AnyValues' в 'resVar_SINT_external'.'Значение'
	Then Проверка записи Runtime значений 'INT AnyValues' в 'resVar_INT_external'.'Значение'
	Then Проверка записи Runtime значений 'DINT AnyValues' в 'resVar_DINT_external'.'Значение'
	Then Проверка записи Runtime значений 'LINT AnyValues' в 'resVar_LINT_external'.'Значение'
	Then Проверка записи Runtime значений 'USINT AnyValues' в 'resVar_USINT_external'.'Значение'
	Then Проверка записи Runtime значений 'UINT AnyValues' в 'resVar_UINT_external'.'Значение'
	Then Проверка записи Runtime значений 'UDINT AnyValues' в 'resVar_UDINT_external'.'Значение'
	Then Проверка записи Runtime значений 'ULINT AnyValues' в 'resVar_ULINT_external'.'Значение'
	Then Проверка записи Runtime значений 'REAL AnyValues' в 'resVar_REAL_external'.'Значение'
	Then Проверка записи Runtime значений 'LREAL AnyValues' в 'resVar_LREAL_external'.'Значение'
	Then Проверка записи Runtime значений 'TIME AnyValues' в 'resVar_TIME_external'.'Значение'
	Then Проверка записи Runtime значений 'DATE AnyValues' в 'resVar_DATE_external'.'Значение'

    @fromMirror
	@EpicЧтение_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteMultiConfig
	Scenario: iCore2_WR_cfg3
	Given Шлюзы 'DataReceiver' в работе
	Given Зеркало Шлюза 'MirrorDataReciv' в работе
	Given Связь с устройством 'MirrorDataReciv' в норме
	Given Связь с устройством 'iCoreReceiver' в норме
	Then Проверка записи Runtime значений 'BOOL AnyValues' в 'resVar_BOOL_external'.'Значение'
	Then Проверка записи Runtime значений 'BYTE AnyValues' в 'resVar_BYTE_external'.'Значение'
	Then Проверка записи Runtime значений 'WORD AnyValues' в 'resVar_WORD_external'.'Значение'
	Then Проверка записи Runtime значений 'DWORD AnyValues' в 'resVar_DWORD_external'.'Значение'
	Then Проверка записи Runtime значений 'LWORD AnyValues' в 'resVar_LWORD_external'.'Значение'
	Then Проверка записи Runtime значений 'SINT AnyValues' в 'resVar_SINT_external'.'Значение'
	Then Проверка записи Runtime значений 'INT AnyValues' в 'resVar_INT_external'.'Значение'
	Then Проверка записи Runtime значений 'DINT AnyValues' в 'resVar_DINT_external'.'Значение'
	Then Проверка записи Runtime значений 'LINT AnyValues' в 'resVar_LINT_external'.'Значение'
	Then Проверка записи Runtime значений 'USINT AnyValues' в 'resVar_USINT_external'.'Значение'
	Then Проверка записи Runtime значений 'UINT AnyValues' в 'resVar_UINT_external'.'Значение'
	Then Проверка записи Runtime значений 'UDINT AnyValues' в 'resVar_UDINT_external'.'Значение'
	Then Проверка записи Runtime значений 'ULINT AnyValues' в 'resVar_ULINT_external'.'Значение'
	Then Проверка записи Runtime значений 'REAL AnyValues' в 'resVar_REAL_external'.'Значение'
	Then Проверка записи Runtime значений 'LREAL AnyValues' в 'resVar_LREAL_external'.'Значение'
	Then Проверка записи Runtime значений 'TIME AnyValues' в 'resVar_TIME_external'.'Значение'
	Then Проверка записи Runtime значений 'DATE AnyValues' в 'resVar_DATE_external'.'Значение'