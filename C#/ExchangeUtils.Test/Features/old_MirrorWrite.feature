@ignore
Feature: DataMirrorWrite
		
	@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteРазрешенные_переменные
	Scenario: iCore2_ExternalWriteRT
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'ICORE2' в норме
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
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteЗапись_запрещена
	Scenario: iCore2_WiteList
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'ICORE2' в норме
	Then Проверка записи 'resVar_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_DATE_wr'.'Значение' не в белом списке
	
	@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteРазрешенные_переменные
	Scenario: Cpu715_Red_ExternalWriteRT
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'cpu715_Red' в норме
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
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteЗапись_запрещена
	Scenario: Cpu715_Red_WiteList
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'cpu715_Red' в норме
	Then Проверка записи 'resVar_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_DATE_wr'.'Значение' не в белом списке

	@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteРазрешенные_переменные
	Scenario: Cpu715_Clust_ExternalWriteRT
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'cpu715_Cluster' в норме
	Then Проверка записи в Кластер 1 Runtime значений 'BOOL AnyValues' в 'resVar_BOOL_external'.'Значение'
	Then Проверка записи в Кластер 1 Runtime значений 'BYTE AnyValues' в 'resVar_BYTE_external'.'Значение'
	Then Проверка записи в Кластер 1 Runtime значений 'WORD AnyValues' в 'resVar_WORD_external'.'Значение'
	Then Проверка записи в Кластер 1 Runtime значений 'DWORD AnyValues' в 'resVar_DWORD_external'.'Значение'
	Then Проверка записи в Кластер 1 Runtime значений 'LWORD AnyValues' в 'resVar_LWORD_external'.'Значение'
	Then Проверка записи в Кластер 1 Runtime значений 'SINT AnyValues' в 'resVar_SINT_external'.'Значение'
	Then Проверка записи в Кластер 1 Runtime значений 'INT AnyValues' в 'resVar_INT_external'.'Значение'
	Then Проверка записи в Кластер 1 Runtime значений 'DINT AnyValues' в 'resVar_DINT_external'.'Значение'
	Then Проверка записи в Кластер 1 Runtime значений 'LINT AnyValues' в 'resVar_LINT_external'.'Значение'
	Then Проверка записи в Кластер 1 Runtime значений 'USINT AnyValues' в 'resVar_USINT_external'.'Значение'
	Then Проверка записи в Кластер 1 Runtime значений 'UINT AnyValues' в 'resVar_UINT_external'.'Значение'
	Then Проверка записи в Кластер 1 Runtime значений 'UDINT AnyValues' в 'resVar_UDINT_external'.'Значение'
	Then Проверка записи в Кластер 1 Runtime значений 'ULINT AnyValues' в 'resVar_ULINT_external'.'Значение'
	Then Проверка записи в Кластер 1 Runtime значений 'REAL AnyValues' в 'resVar_REAL_external'.'Значение'
	Then Проверка записи в Кластер 1 Runtime значений 'LREAL AnyValues' в 'resVar_LREAL_external'.'Значение'
	Then Проверка записи в Кластер 1 Runtime значений 'TIME AnyValues' в 'resVar_TIME_external'.'Значение'
	Then Проверка записи в Кластер 1 Runtime значений 'DATE AnyValues' в 'resVar_DATE_external'.'Значение'

	Then Проверка записи в Кластер 2 Runtime значений 'BOOL AnyValues' в 'resVar_BOOL_external'.'Значение'
	Then Проверка записи в Кластер 2 Runtime значений 'BYTE AnyValues' в 'resVar_BYTE_external'.'Значение'
	Then Проверка записи в Кластер 2 Runtime значений 'WORD AnyValues' в 'resVar_WORD_external'.'Значение'
	Then Проверка записи в Кластер 2 Runtime значений 'DWORD AnyValues' в 'resVar_DWORD_external'.'Значение'
	Then Проверка записи в Кластер 2 Runtime значений 'LWORD AnyValues' в 'resVar_LWORD_external'.'Значение'
	Then Проверка записи в Кластер 2 Runtime значений 'SINT AnyValues' в 'resVar_SINT_external'.'Значение'
	Then Проверка записи в Кластер 2 Runtime значений 'INT AnyValues' в 'resVar_INT_external'.'Значение'
	Then Проверка записи в Кластер 2 Runtime значений 'DINT AnyValues' в 'resVar_DINT_external'.'Значение'
	Then Проверка записи в Кластер 2 Runtime значений 'LINT AnyValues' в 'resVar_LINT_external'.'Значение'
	Then Проверка записи в Кластер 2 Runtime значений 'USINT AnyValues' в 'resVar_USINT_external'.'Значение'
	Then Проверка записи в Кластер 2 Runtime значений 'UINT AnyValues' в 'resVar_UINT_external'.'Значение'
	Then Проверка записи в Кластер 2 Runtime значений 'UDINT AnyValues' в 'resVar_UDINT_external'.'Значение'
	Then Проверка записи в Кластер 2 Runtime значений 'ULINT AnyValues' в 'resVar_ULINT_external'.'Значение'
	Then Проверка записи в Кластер 2 Runtime значений 'REAL AnyValues' в 'resVar_REAL_external'.'Значение'
	Then Проверка записи в Кластер 2 Runtime значений 'LREAL AnyValues' в 'resVar_LREAL_external'.'Значение'
	Then Проверка записи в Кластер 2 Runtime значений 'TIME AnyValues' в 'resVar_TIME_external'.'Значение'
	Then Проверка записи в Кластер 2 Runtime значений 'DATE AnyValues' в 'resVar_DATE_external'.'Значение'

	@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteЗапись_запрещена
	Scenario: Cpu715_Clust_WiteList
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'cpu715_Cluster' в норме
	Then Проверка записи 'resVar_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_DATE_wr'.'Значение' не в белом списке

	@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteРазрешенные_переменные
	Scenario: cpu850_Red_ExternalWriteRT
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'CPU850_RED' в норме
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
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteЗапись_запрещена
	Scenario: cpu850_Red_WiteList
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'CPU850_RED' в норме
	Then Проверка записи 'resVar_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'resVar_DATE_wr'.'Значение' не в белом списке

	@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteРазрешенные_переменные
	Scenario: GwEv1_ExternalWriteRT
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'GwExch_v1' в норме
	Then Проверка записи Runtime значений 'BOOL AnyValues' в 'GEv1_Var_BOOL_external'.'Значение'
	Then Проверка записи Runtime значений 'BYTE AnyValues' в 'GEv1_Var_BYTE_external'.'Значение'
	Then Проверка записи Runtime значений 'WORD AnyValues' в 'GEv1_Var_WORD_external'.'Значение'
	Then Проверка записи Runtime значений 'DWORD AnyValues' в 'GEv1_Var_DWORD_external'.'Значение'
	Then Проверка записи Runtime значений 'LWORD AnyValues' в 'GEv1_Var_LWORD_external'.'Значение'
	Then Проверка записи Runtime значений 'SINT AnyValues' в 'GEv1_Var_SINT_external'.'Значение'
	Then Проверка записи Runtime значений 'INT AnyValues' в 'GEv1_Var_INT_external'.'Значение'
	Then Проверка записи Runtime значений 'DINT AnyValues' в 'GEv1_Var_DINT_external'.'Значение'
	Then Проверка записи Runtime значений 'LINT AnyValues' в 'GEv1_Var_LINT_external'.'Значение'
	Then Проверка записи Runtime значений 'USINT AnyValues' в 'GEv1_Var_USINT_external'.'Значение'
	Then Проверка записи Runtime значений 'UINT AnyValues' в 'GEv1_Var_UINT_external'.'Значение'
	Then Проверка записи Runtime значений 'UDINT AnyValues' в 'GEv1_Var_UDINT_external'.'Значение'
	Then Проверка записи Runtime значений 'ULINT AnyValues' в 'GEv1_Var_ULINT_external'.'Значение'
	Then Проверка записи Runtime значений 'REAL AnyValues' в 'GEv1_Var_REAL_external'.'Значение'
	Then Проверка записи Runtime значений 'LREAL AnyValues' в 'GEv1_Var_LREAL_external'.'Значение'
	Then Проверка записи Runtime значений 'TIME AnyValues' в 'GEv1_Var_TIME_external'.'Значение'
	Then Проверка записи Runtime значений 'DATE AnyValues' в 'GEv1_Var_DATE_external'.'Значение'

	@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteЗапись_запрещена
	Scenario: GwEv1_WiteList
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'GwExch_v1' в норме
	Then Проверка записи 'GEv1_Var_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'GEv1_Var_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'GEv1_Var_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'GEv1_Var_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'GEv1_Var_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'GEv1_Var_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GEv1_Var_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GEv1_Var_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GEv1_Var_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GEv1_Var_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GEv1_Var_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GEv1_Var_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GEv1_Var_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GEv1_Var_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'GEv1_Var_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'GEv1_Var_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'GEv1_Var_DATE_wr'.'Значение' не в белом списке

	@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteРазрешенные_переменные
	Scenario: GwE2v1_ExternalWriteRT
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'GwExch_2_v1' в норме
	Then Проверка записи Runtime значений 'BOOL AnyValues' в 'GwE2v1_Var_BOOL_external'.'Значение'
	Then Проверка записи Runtime значений 'BYTE AnyValues' в 'GwE2v1_Var_BYTE_external'.'Значение'
	Then Проверка записи Runtime значений 'WORD AnyValues' в 'GwE2v1_Var_WORD_external'.'Значение'
	Then Проверка записи Runtime значений 'DWORD AnyValues' в 'GwE2v1_Var_DWORD_external'.'Значение'
	Then Проверка записи Runtime значений 'LWORD AnyValues' в 'GwE2v1_Var_LWORD_external'.'Значение'
	Then Проверка записи Runtime значений 'SINT AnyValues' в 'GwE2v1_Var_SINT_external'.'Значение'
	Then Проверка записи Runtime значений 'INT AnyValues' в 'GwE2v1_Var_INT_external'.'Значение'
	Then Проверка записи Runtime значений 'DINT AnyValues' в 'GwE2v1_Var_DINT_external'.'Значение'
	Then Проверка записи Runtime значений 'LINT AnyValues' в 'GwE2v1_Var_LINT_external'.'Значение'
	Then Проверка записи Runtime значений 'USINT AnyValues' в 'GwE2v1_Var_USINT_external'.'Значение'
	Then Проверка записи Runtime значений 'UINT AnyValues' в 'GwE2v1_Var_UINT_external'.'Значение'
	Then Проверка записи Runtime значений 'UDINT AnyValues' в 'GwE2v1_Var_UDINT_external'.'Значение'
	Then Проверка записи Runtime значений 'ULINT AnyValues' в 'GwE2v1_Var_ULINT_external'.'Значение'
	Then Проверка записи Runtime значений 'REAL AnyValues' в 'GwE2v1_Var_REAL_external'.'Значение'
	Then Проверка записи Runtime значений 'LREAL AnyValues' в 'GwE2v1_Var_LREAL_external'.'Значение'
	Then Проверка записи Runtime значений 'TIME AnyValues' в 'GwE2v1_Var_TIME_external'.'Значение'
	Then Проверка записи Runtime значений 'DATE AnyValues' в 'GwE2v1_Var_DATE_external'.'Значение'

	@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteЗапись_запрещена
	Scenario: GwE2v1_WiteList
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'GwExch_2_v1' в норме
	Then Проверка записи 'GwE2v1_Var_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2v1_Var_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2v1_Var_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2v1_Var_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2v1_Var_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2v1_Var_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2v1_Var_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2v1_Var_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2v1_Var_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2v1_Var_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2v1_Var_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2v1_Var_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2v1_Var_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2v1_Var_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2v1_Var_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2v1_Var_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2v1_Var_DATE_wr'.'Значение' не в белом списке

	@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteРазрешенные_переменные
	Scenario: VerProxy_GE_v1_ExternalWriteRT
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'VerProxy52_GE_v1' в норме
	Then Проверка записи Runtime значений 'BOOL AnyValues' в 'Var_BOOL_external'.'Значение'
	Then Проверка записи Runtime значений 'BYTE AnyValues' в 'Var_BYTE_external'.'Значение'
	Then Проверка записи Runtime значений 'WORD AnyValues' в 'Var_WORD_external'.'Значение'
	Then Проверка записи Runtime значений 'DWORD AnyValues' в 'Var_DWORD_external'.'Значение'
	Then Проверка записи Runtime значений 'LWORD AnyValues' в 'Var_LWORD_external'.'Значение'
	Then Проверка записи Runtime значений 'SINT AnyValues' в 'Var_SINT_external'.'Значение'
	Then Проверка записи Runtime значений 'INT AnyValues' в 'Var_INT_external'.'Значение'
	Then Проверка записи Runtime значений 'DINT AnyValues' в 'Var_DINT_external'.'Значение'
	Then Проверка записи Runtime значений 'LINT AnyValues' в 'Var_LINT_external'.'Значение'
	Then Проверка записи Runtime значений 'USINT AnyValues' в 'Var_USINT_external'.'Значение'
	Then Проверка записи Runtime значений 'UINT AnyValues' в 'Var_UINT_external'.'Значение'
	Then Проверка записи Runtime значений 'UDINT AnyValues' в 'Var_UDINT_external'.'Значение'
	Then Проверка записи Runtime значений 'ULINT AnyValues' в 'Var_ULINT_external'.'Значение'
	Then Проверка записи Runtime значений 'REAL AnyValues' в 'Var_REAL_external'.'Значение'
	Then Проверка записи Runtime значений 'LREAL AnyValues' в 'Var_LREAL_external'.'Значение'
	Then Проверка записи Runtime значений 'TIME AnyValues' в 'Var_TIME_external'.'Значение'
	Then Проверка записи Runtime значений 'DATE AnyValues' в 'Var_DATE_external'.'Значение'

	@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteЗапись_запрещена
	Scenario:VerProxy_GE_v1_WiteList
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'VerProxy52_GE_v1' в норме
	Then Проверка записи 'Var_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_DATE_wr'.'Значение' не в белом списке

		@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteРазрешенные_переменные
	Scenario: VerProxy_GE_2_v1_ExternalWriteRT
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
    Given Связь с устройством 'VerProxy52_GE_2_v1' в норме
	Then Проверка записи Runtime значений 'BOOL AnyValues' в 'Var_BOOL_external'.'Значение'
	Then Проверка записи Runtime значений 'BYTE AnyValues' в 'Var_BYTE_external'.'Значение'
	Then Проверка записи Runtime значений 'WORD AnyValues' в 'Var_WORD_external'.'Значение'
	Then Проверка записи Runtime значений 'DWORD AnyValues' в 'Var_DWORD_external'.'Значение'
	Then Проверка записи Runtime значений 'LWORD AnyValues' в 'Var_LWORD_external'.'Значение'
	Then Проверка записи Runtime значений 'SINT AnyValues' в 'Var_SINT_external'.'Значение'
	Then Проверка записи Runtime значений 'INT AnyValues' в 'Var_INT_external'.'Значение'
	Then Проверка записи Runtime значений 'DINT AnyValues' в 'Var_DINT_external'.'Значение'
	Then Проверка записи Runtime значений 'LINT AnyValues' в 'Var_LINT_external'.'Значение'
	Then Проверка записи Runtime значений 'USINT AnyValues' в 'Var_USINT_external'.'Значение'
	Then Проверка записи Runtime значений 'UINT AnyValues' в 'Var_UINT_external'.'Значение'
	Then Проверка записи Runtime значений 'UDINT AnyValues' в 'Var_UDINT_external'.'Значение'
	Then Проверка записи Runtime значений 'ULINT AnyValues' в 'Var_ULINT_external'.'Значение'
	Then Проверка записи Runtime значений 'REAL AnyValues' в 'Var_REAL_external'.'Значение'
	Then Проверка записи Runtime значений 'LREAL AnyValues' в 'Var_LREAL_external'.'Значение'
	Then Проверка записи Runtime значений 'TIME AnyValues' в 'Var_TIME_external'.'Значение'
	Then Проверка записи Runtime значений 'DATE AnyValues' в 'Var_DATE_external'.'Значение'

	@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteЗапись_запрещена
	Scenario: VerProxy_GE_2_v1_WiteList
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'VerProxy52_GE_2_v1' в норме
	Then Проверка записи 'Var_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'Var_DATE_wr'.'Значение' не в белом списке

	@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteРазрешенные_переменные
	Scenario: OpcDa_Subs_ExternalWriteRT
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'OpcDa_Subs' в норме
	Then Проверка записи Runtime значений '1; FALSE' в 'OpcDa_Subs_VAR_bool_external'.'Значение'
	Then Проверка записи Runtime значений 'BYTE AnyValues' в 'OpcDa_Subs_VAR_byte_external'.'Значение'
	Then Проверка записи Runtime значений 'WORD AnyValues' в 'OpcDa_Subs_VAR_word_external'.'Значение'
	Then Проверка записи Runtime значений 'DWORD AnyValues' в 'OpcDa_Subs_VAR_dword_external'.'Значение'
	Then Проверка записи Runtime значений 'LWORD AnyValues' в 'OpcDa_Subs_VAR_lword_external'.'Значение'
	Then Проверка записи Runtime значений 'SINT AnyValues' в 'OpcDa_Subs_VAR_sint_external'.'Значение'
	Then Проверка записи Runtime значений 'INT AnyValues' в 'OpcDa_Subs_VAR_int_external'.'Значение'
	Then Проверка записи Runtime значений 'DINT AnyValues' в 'OpcDa_Subs_VAR_dint_external'.'Значение'
	Then Проверка записи Runtime значений 'LINT AnyValues' в 'OpcDa_Subs_VAR_lint_external'.'Значение'
	Then Проверка записи Runtime значений 'USINT AnyValues' в 'OpcDa_Subs_VAR_usint_external'.'Значение'
	Then Проверка записи Runtime значений 'UINT AnyValues' в 'OpcDa_Subs_VAR_uint_external'.'Значение'
	Then Проверка записи Runtime значений 'UDINT AnyValues' в 'OpcDa_Subs_VAR_udint_external'.'Значение'
	Then Проверка записи Runtime значений 'ULINT AnyValues' в 'OpcDa_Subs_VAR_ulint_external'.'Значение'
	Then Проверка записи Runtime значений 'REAL AnyValues' в 'OpcDa_Subs_VAR_real_external'.'Значение'
	Then Проверка записи Runtime значений 'LREAL AnyValues' в 'OpcDa_Subs_VAR_lreal_external'.'Значение'
	Then Проверка записи Runtime значений 'TIME AnyValues' в 'OpcDa_Subs_VAR_time_external'.'Значение'
	Then Проверка записи Runtime значений 'DATE AnyValues' в 'OpcDa_Subs_VAR_date_external'.'Значение'

	@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteЗапись_запрещена
	Scenario: OpcDa_Subs_WiteList
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'OpcDa_Subs' в норме
	Then Проверка записи 'OpcDa_Subs_VAR_bool_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_Subs_VAR_byte_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_Subs_VAR_word_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_Subs_VAR_dword_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_Subs_VAR_lword_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_Subs_VAR_sint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_Subs_VAR_int_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_Subs_VAR_dint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_Subs_VAR_lint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_Subs_VAR_usint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_Subs_VAR_uint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_Subs_VAR_udint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_Subs_VAR_ulint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_Subs_VAR_real_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_Subs_VAR_lreal_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_Subs_VAR_time_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_Subs_VAR_date_wr'.'Значение' не в белом списке

	@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteРазрешенные_переменные
	Scenario: OpcDaProxy_Subs_ExternalWriteRT
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'OpcDaProxy_Subs' в норме
	Then Проверка записи Runtime значений 'TRUE; FALSE' в 'OpcProxy_Subs_VAR_bool_external'.'Значение'
	Then Проверка записи Runtime значений 'BYTE AnyValues' в 'OpcProxy_Subs_VAR_byte_external'.'Значение'
	Then Проверка записи Runtime значений 'WORD AnyValues' в 'OpcProxy_Subs_VAR_word_external'.'Значение'
	Then Проверка записи Runtime значений 'DWORD AnyValues' в 'OpcProxy_Subs_VAR_dword_external'.'Значение'
	Then Проверка записи Runtime значений 'LWORD AnyValues' в 'OpcProxy_Subs_VAR_lword_external'.'Значение'
	Then Проверка записи Runtime значений 'SINT AnyValues' в 'OpcProxy_Subs_VAR_sint_external'.'Значение'
	Then Проверка записи Runtime значений 'INT AnyValues' в 'OpcProxy_Subs_VAR_int_external'.'Значение'
	Then Проверка записи Runtime значений 'DINT AnyValues' в 'OpcProxy_Subs_VAR_dint_external'.'Значение'
	Then Проверка записи Runtime значений 'LINT AnyValues' в 'OpcProxy_Subs_VAR_lint_external'.'Значение'
	Then Проверка записи Runtime значений 'USINT AnyValues' в 'OpcProxy_Subs_VAR_usint_external'.'Значение'
	Then Проверка записи Runtime значений 'UINT AnyValues' в 'OpcProxy_Subs_VAR_uint_external'.'Значение'
	Then Проверка записи Runtime значений 'UDINT AnyValues' в 'OpcProxy_Subs_VAR_udint_external'.'Значение'
	Then Проверка записи Runtime значений 'ULINT AnyValues' в 'OpcProxy_Subs_VAR_ulint_external'.'Значение'
	Then Проверка записи Runtime значений 'REAL AnyValues' в 'OpcProxy_Subs_VAR_real_external'.'Значение'
	Then Проверка записи Runtime значений 'LREAL AnyValues' в 'OpcProxy_Subs_VAR_lreal_external'.'Значение'
	Then Проверка записи Runtime значений 'TIME AnyValues' в 'OpcProxy_Subs_VAR_time_external'.'Значение'
	Then Проверка записи Runtime значений 'DATE AnyValues' в 'OpcProxy_Subs_VAR_date_external'.'Значение'
		
	@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteЗапись_запрещена
	Scenario: OpcDaProxy_Subs_WiteList
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'OpcDaProxy_Subs' в норме
	Then Проверка записи 'OpcProxy_Subs_VAR_bool_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_Subs_VAR_byte_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_Subs_VAR_word_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_Subs_VAR_dword_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_Subs_VAR_lword_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_Subs_VAR_sint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_Subs_VAR_int_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_Subs_VAR_dint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_Subs_VAR_lint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_Subs_VAR_usint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_Subs_VAR_uint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_Subs_VAR_udint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_Subs_VAR_ulint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_Subs_VAR_real_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_Subs_VAR_lreal_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_Subs_VAR_time_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_Subs_VAR_date_wr'.'Значение' не в белом списке

	@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteРазрешенные_переменные
	Scenario: OpcUa_Params_ExternalWriteRT
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'OpcUa_ASt5000_Lin' в норме
	Then Проверка записи Runtime значений 'TRUE; FALSE' в 'OpcUa_PARAM_bool_external'.'Значение'
	Then Проверка записи Runtime значений 'BYTE AnyValues' в 'OpcUa_PARAM_byte_external'.'Значение'
	Then Проверка записи Runtime значений 'WORD AnyValues' в 'OpcUa_PARAM_word_external'.'Значение'
	Then Проверка записи Runtime значений 'DWORD AnyValues' в 'OpcUa_PARAM_dword_external'.'Значение'
	Then Проверка записи Runtime значений 'LWORD AnyValues' в 'OpcUa_PARAM_lword_external'.'Значение'
	Then Проверка записи Runtime значений 'SINT AnyValues' в 'OpcUa_PARAM_sint_external'.'Значение'
	Then Проверка записи Runtime значений 'INT AnyValues' в 'OpcUa_PARAM_int_external'.'Значение'
	Then Проверка записи Runtime значений 'DINT AnyValues' в 'OpcUa_PARAM_dint_external'.'Значение'
	Then Проверка записи Runtime значений 'LINT AnyValues' в 'OpcUa_PARAM_lint_external'.'Значение'
	Then Проверка записи Runtime значений 'USINT AnyValues' в 'OpcUa_PARAM_usint_external'.'Значение'
	Then Проверка записи Runtime значений 'UINT AnyValues' в 'OpcUa_PARAM_uint_external'.'Значение'
	Then Проверка записи Runtime значений 'UDINT AnyValues' в 'OpcUa_PARAM_udint_external'.'Значение'
	Then Проверка записи Runtime значений 'ULINT AnyValues' в 'OpcUa_PARAM_ulint_external'.'Значение'
	Then Проверка записи Runtime значений 'REAL AnyValues' в 'OpcUa_PARAM_real_external'.'Значение'
	Then Проверка записи Runtime значений 'LREAL AnyValues' в 'OpcUa_PARAM_lreal_external'.'Значение'
	Then Проверка записи Runtime значений 'TIME AnyValues' в 'OpcUa_PARAM_time_external'.'Значение'
	Then Проверка записи Runtime значений 'DT AnyValues' в 'OpcUa_PARAM_DT_external'.'Значение'
	#Then Проверка записи Runtime значений 'DATE AnyValues' в 'OpcUa_PARAM_date_external'.'Значение'

	@fromMirror
	@EpicЗапись_RunTime			@StoryЗеркалоДанных
	@parentSuite2_ExchUtils_ЗеркалоДанных	@suiteЗапись_RunTime	@subSuiteЗапись_запрещена
	Scenario: OpcUa_Params_WiteList
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Given Связь с устройством 'OpcUa_ASt5000_Lin' в норме
	Then Проверка записи 'OpcUa_PARAM_bool_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_byte_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_word_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_dword_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_lword_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_sint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_int_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_dint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_lint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_usint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_uint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_udint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_ulint_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_real_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_lreal_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_time_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_DT_wr'.'Значение' не в белом списке
	#Then Проверка записи 'OpcUa_PARAM_date_wr'.'Значение' не в белом списке
