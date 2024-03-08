@ignore
Feature: Iec104Slave_Runtime
	
	@fromMirror  @fromGate
	@EpicПроверка_Quality			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteПроверка_Quality
	@critical
    Scenario: Slave104.iCore2_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'ICORE2' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
    Then Проверка Runtime качества 'Good' переменной 'iCore2_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iCore2_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iCore2_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iCore2_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iCore2_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iCore2_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iCore2_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iCore2_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iCore2_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iCore2_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'iCore2_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iCore2_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iCore2_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iCore2_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iCore2_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iCore2_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iCore2_DATE_const'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: Slave104.iCore2_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'ICORE2' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
	Then Проверка запись значений '1; FALSE' в 'iCore2_BOOL_ext_wr'.'Значение' Чтение из 'iCore2_BOOL_external'
	Then Проверка запись значений 'BYTE AnyValues' в 'iCore2_BYTE_ext_wr'.'Значение' Чтение из 'iCore2_BYTE_external'
	Then Проверка запись значений '1; 0x7F00; 0x7FFF' в 'iCore2_WORD_ext_wr'.'Значение' Чтение из 'iCore2_WORD_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iCore2_DWORD_ext_wr'.'Значение' Чтение из 'iCore2_DWORD_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'iCore2_LWORD_ext_wr'.'Значение' Чтение из 'iCore2_LWORD_external'
	Then Проверка запись значений 'SINT AnyValues' в 'iCore2_SINT_ext_wr'.'Значение' Чтение из 'iCore2_SINT_external'
	Then Проверка запись значений 'INT AnyValues' в 'iCore2_INT_ext_wr'.'Значение' Чтение из 'iCore2_INT_external'
	Then Проверка запись значений 'FLOAT Like INT' в 'iCore2_DINT_ext_wr'.'Значение' Чтение из 'iCore2_DINT_external'
	#Then Проверка запись значений 'FLOAT Like INT' в 'iCore2_LINT_ext_wr'.'Значение' Чтение из 'iCore2_LINT_external'
	Then Проверка запись значений 'USINT AnyValues' в 'iCore2_USINT_ext_wr'.'Значение' Чтение из 'iCore2_USINT_external'
	Then Проверка запись значений 'UINT AnyValues' в 'iCore2_UINT_ext_wr'.'Значение' Чтение из 'iCore2_UINT_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iCore2_UDINT_ext_wr'.'Значение' Чтение из 'iCore2_UDINT_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'iCore2_ULINT_ext_wr'.'Значение' Чтение из 'iCore2_ULINT_external'
	Then Проверка запись значений 'REAL AnyValues' в 'iCore2_REAL_ext_wr'.'Значение' Чтение из 'iCore2_REAL_external'
	Then Проверка запись значений 'REAL AnyValues' в 'iCore2_LREAL_ext_wr'.'Значение' Чтение из 'iCore2_LREAL_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iCore2_TIME_ext_wr'.'Значение' Чтение из 'iCore2_TIME_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iCore2_DATE_ext_wr'.'Значение' Чтение из 'iCore2_DATE_external'
	
	@fromMirror  @fromGate
	@EpicПроверка_Quality			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteПроверка_Quality
	@critical
    Scenario: Slave104.cpu715_Red_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Red_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Red_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Red_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Red_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Red_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Red_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Red_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Red_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Red_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Red_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'cpu715_Red_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Red_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Red_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Red_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Red_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Red_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Red_DATE_const'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: Slave104.cpu715_Red_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
	Then Проверка запись значений '1; FALSE' в 'cpu715_Red_BOOL_ext_wr'.'Значение' Чтение из 'cpu715_Red_BOOL_external'
	Then Проверка запись значений 'BYTE AnyValues' в 'cpu715_Red_BYTE_ext_wr'.'Значение' Чтение из 'cpu715_Red_BYTE_external'
	Then Проверка запись значений '1; 0x7F00; 0x7FFF' в 'cpu715_Red_WORD_ext_wr'.'Значение' Чтение из 'cpu715_Red_WORD_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'cpu715_Red_DWORD_ext_wr'.'Значение' Чтение из 'cpu715_Red_DWORD_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'cpu715_Red_LWORD_ext_wr'.'Значение' Чтение из 'cpu715_Red_LWORD_external'
	Then Проверка запись значений 'SINT AnyValues' в 'cpu715_Red_SINT_ext_wr'.'Значение' Чтение из 'cpu715_Red_SINT_external'
	Then Проверка запись значений 'INT AnyValues' в 'cpu715_Red_INT_ext_wr'.'Значение' Чтение из 'cpu715_Red_INT_external'
	Then Проверка запись значений 'FLOAT Like INT' в 'cpu715_Red_DINT_ext_wr'.'Значение' Чтение из 'cpu715_Red_DINT_external'
	#Then Проверка запись значений 'FLOAT Like INT' в 'cpu715_Red_LINT_ext_wr'.'Значение' Чтение из 'cpu715_Red_LINT_external'
	Then Проверка запись значений 'USINT AnyValues' в 'cpu715_Red_USINT_ext_wr'.'Значение' Чтение из 'cpu715_Red_USINT_external'
	Then Проверка запись значений 'UINT AnyValues' в 'cpu715_Red_UINT_ext_wr'.'Значение' Чтение из 'cpu715_Red_UINT_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'cpu715_Red_UDINT_ext_wr'.'Значение' Чтение из 'cpu715_Red_UDINT_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'cpu715_Red_ULINT_ext_wr'.'Значение' Чтение из 'cpu715_Red_ULINT_external'
	Then Проверка запись значений 'REAL AnyValues' в 'cpu715_Red_REAL_ext_wr'.'Значение' Чтение из 'cpu715_Red_REAL_external'
	Then Проверка запись значений 'REAL AnyValues' в 'cpu715_Red_LREAL_ext_wr'.'Значение' Чтение из 'cpu715_Red_LREAL_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'cpu715_Red_TIME_ext_wr'.'Значение' Чтение из 'cpu715_Red_TIME_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'cpu715_Red_DATE_ext_wr'.'Значение' Чтение из 'cpu715_Red_DATE_external'

	@fromMirror  @fromGate
	@EpicПроверка_Quality			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteПроверка_Quality
	@critical
    Scenario: Slave104.cpu715_Clust_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Cluster' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Cluster_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Cluster_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Cluster_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Cluster_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Cluster_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Cluster_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Cluster_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Cluster_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Cluster_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Cluster_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'cpu715_Cluster_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Cluster_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Cluster_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Cluster_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Cluster_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Cluster_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu715_Cluster_DATE_const'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: Slave104.cpu715_Clust_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Cluster' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
	Then Проверка запись значений '1; FALSE' в 'cpu715_Cluster_BOOL_ext_wr'.'Значение' Чтение из 'cpu715_Cluster_BOOL_external'
	Then Проверка запись значений 'BYTE AnyValues' в 'cpu715_Cluster_BYTE_ext_wr'.'Значение' Чтение из 'cpu715_Cluster_BYTE_external'
	Then Проверка запись значений '1; 0x7F00; 0x7FFF' в 'cpu715_Cluster_WORD_ext_wr'.'Значение' Чтение из 'cpu715_Cluster_WORD_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'cpu715_Cluster_DWORD_ext_wr'.'Значение' Чтение из 'cpu715_Cluster_DWORD_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'cpu715_Cluster_LWORD_ext_wr'.'Значение' Чтение из 'cpu715_Cluster_LWORD_external'
	Then Проверка запись значений 'SINT AnyValues' в 'cpu715_Cluster_SINT_ext_wr'.'Значение' Чтение из 'cpu715_Cluster_SINT_external'
	Then Проверка запись значений 'INT AnyValues' в 'cpu715_Cluster_INT_ext_wr'.'Значение' Чтение из 'cpu715_Cluster_INT_external'
	Then Проверка запись значений 'FLOAT Like INT' в 'cpu715_Cluster_DINT_ext_wr'.'Значение' Чтение из 'cpu715_Cluster_DINT_external'
	#Then Проверка запись значений 'FLOAT Like INT' в 'cpu715_Cluster_LINT_ext_wr'.'Значение' Чтение из 'cpu715_Cluster_LINT_external'
	Then Проверка запись значений 'USINT AnyValues' в 'cpu715_Cluster_USINT_ext_wr'.'Значение' Чтение из 'cpu715_Cluster_USINT_external'
	Then Проверка запись значений 'UINT AnyValues' в 'cpu715_Cluster_UINT_ext_wr'.'Значение' Чтение из 'cpu715_Cluster_UINT_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'cpu715_Cluster_UDINT_ext_wr'.'Значение' Чтение из 'cpu715_Cluster_UDINT_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'cpu715_Cluster_ULINT_ext_wr'.'Значение' Чтение из 'cpu715_Cluster_ULINT_external'
	Then Проверка запись значений 'REAL AnyValues' в 'cpu715_Cluster_REAL_ext_wr'.'Значение' Чтение из 'cpu715_Cluster_REAL_external'
	Then Проверка запись значений 'REAL AnyValues' в 'cpu715_Cluster_LREAL_ext_wr'.'Значение' Чтение из 'cpu715_Cluster_LREAL_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'cpu715_Cluster_TIME_ext_wr'.'Значение' Чтение из 'cpu715_Cluster_TIME_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'cpu715_Cluster_DATE_ext_wr'.'Значение' Чтение из 'cpu715_Cluster_DATE_external'
	
	@fromMirror  @fromGate
	@EpicПроверка_Quality			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteПроверка_Quality
	@critical
    Scenario: Slave104.cpu850_Red_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'CPU850_RED' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
    Then Проверка Runtime качества 'Good' переменной 'cpu850_Red_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu850_Red_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu850_Red_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu850_Red_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu850_Red_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu850_Red_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu850_Red_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu850_Red_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu850_Red_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu850_Red_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'cpu850_Red_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu850_Red_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu850_Red_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu850_Red_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu850_Red_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu850_Red_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'cpu850_Red_DATE_const'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: Slave104.cpu850_Red_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'CPU850_RED' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
	Then Проверка запись значений '1; FALSE' в 'cpu850_Red_BOOL_ext_wr'.'Значение' Чтение из 'cpu850_Red_BOOL_external'
	Then Проверка запись значений 'BYTE AnyValues' в 'cpu850_Red_BYTE_ext_wr'.'Значение' Чтение из 'cpu850_Red_BYTE_external'
	Then Проверка запись значений '1; 0x7F00; 0x7FFF' в 'cpu850_Red_WORD_ext_wr'.'Значение' Чтение из 'cpu850_Red_WORD_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'cpu850_Red_DWORD_ext_wr'.'Значение' Чтение из 'cpu850_Red_DWORD_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'cpu850_Red_LWORD_ext_wr'.'Значение' Чтение из 'cpu850_Red_LWORD_external'
	Then Проверка запись значений 'SINT AnyValues' в 'cpu850_Red_SINT_ext_wr'.'Значение' Чтение из 'cpu850_Red_SINT_external'
	Then Проверка запись значений 'INT AnyValues' в 'cpu850_Red_INT_ext_wr'.'Значение' Чтение из 'cpu850_Red_INT_external'
	Then Проверка запись значений 'FLOAT Like INT' в 'cpu850_Red_DINT_ext_wr'.'Значение' Чтение из 'cpu850_Red_DINT_external'
	#Then Проверка запись значений 'FLOAT Like INT' в 'cpu850_Red_LINT_ext_wr'.'Значение' Чтение из 'cpu850_Red_LINT_external'
	Then Проверка запись значений 'USINT AnyValues' в 'cpu850_Red_USINT_ext_wr'.'Значение' Чтение из 'cpu850_Red_USINT_external'
	Then Проверка запись значений 'UINT AnyValues' в 'cpu850_Red_UINT_ext_wr'.'Значение' Чтение из 'cpu850_Red_UINT_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'cpu850_Red_UDINT_ext_wr'.'Значение' Чтение из 'cpu850_Red_UDINT_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'cpu850_Red_ULINT_ext_wr'.'Значение' Чтение из 'cpu850_Red_ULINT_external'
	Then Проверка запись значений 'REAL AnyValues' в 'cpu850_Red_REAL_ext_wr'.'Значение' Чтение из 'cpu850_Red_REAL_external'
	Then Проверка запись значений 'REAL AnyValues' в 'cpu850_Red_LREAL_ext_wr'.'Значение' Чтение из 'cpu850_Red_LREAL_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'cpu850_Red_TIME_ext_wr'.'Значение' Чтение из 'cpu850_Red_TIME_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'cpu850_Red_DATE_ext_wr'.'Значение' Чтение из 'cpu850_Red_DATE_external'

	
	@fromMirror  @fromGate
	@EpicПроверка_Quality			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteПроверка_Quality
	@critical
    Scenario: Slave104.GwEx_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
    Then Проверка Runtime качества 'Good' переменной 'GwE_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'GwE_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE_DATE_const'.'Значение'

	@fromMirror  @fromGate
		@EpicЧтение_Запись			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: Slave104.GwEx_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
	Then Проверка запись значений '1; FALSE' в 'GwE_BOOL_ext_wr'.'Значение' Чтение из 'GwE_BOOL_external'
	Then Проверка запись значений 'BYTE AnyValues' в 'GwE_BYTE_ext_wr'.'Значение' Чтение из 'GwE_BYTE_external'
	Then Проверка запись значений '1; 0x7F00; 0x7FFF' в 'GwE_WORD_ext_wr'.'Значение' Чтение из 'GwE_WORD_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'GwE_DWORD_ext_wr'.'Значение' Чтение из 'GwE_DWORD_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'GwE_LWORD_ext_wr'.'Значение' Чтение из 'GwE_LWORD_external'
	Then Проверка запись значений 'SINT AnyValues' в 'GwE_SINT_ext_wr'.'Значение' Чтение из 'GwE_SINT_external'
	Then Проверка запись значений 'INT AnyValues' в 'GwE_INT_ext_wr'.'Значение' Чтение из 'GwE_INT_external'
	Then Проверка запись значений 'FLOAT Like INT' в 'GwE_DINT_ext_wr'.'Значение' Чтение из 'GwE_DINT_external'
	#Then Проверка запись значений 'FLOAT Like INT' в 'GwE_LINT_ext_wr'.'Значение' Чтение из 'GwE_LINT_external'
	Then Проверка запись значений 'USINT AnyValues' в 'GwE_USINT_ext_wr'.'Значение' Чтение из 'GwE_USINT_external'
	Then Проверка запись значений 'UINT AnyValues' в 'GwE_UINT_ext_wr'.'Значение' Чтение из 'GwE_UINT_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'GwE_UDINT_ext_wr'.'Значение' Чтение из 'GwE_UDINT_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'GwE_ULINT_ext_wr'.'Значение' Чтение из 'GwE_ULINT_external'
	Then Проверка запись значений 'REAL AnyValues' в 'GwE_REAL_ext_wr'.'Значение' Чтение из 'GwE_REAL_external'
	Then Проверка запись значений 'REAL AnyValues' в 'GwE_LREAL_ext_wr'.'Значение' Чтение из 'GwE_LREAL_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'GwE_TIME_ext_wr'.'Значение' Чтение из 'GwE_TIME_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'GwE_DATE_ext_wr'.'Значение' Чтение из 'GwE_DATE_external'
	
	@fromMirror  @fromGate
	@EpicПроверка_Quality			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteПроверка_Quality
	@critical
    Scenario: Slave104.GwEx2_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
    Then Проверка Runtime качества 'Good' переменной 'GwE2_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'GwE2_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'GwE2_DATE_const'.'Значение'

	@ignore @Redmine_7528
    @package_Known_Bugs_GwEx2_TransmitArcVals
	@fromMirror  @fromGate
	@EpicЧтение_Запись			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: Slave104.GwEx2_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
	Then Проверка запись значений '1; FALSE' в 'GwE2_BOOL_ext_wr'.'Значение' Чтение из 'GwE2_BOOL_external'
	Then Проверка запись значений 'BYTE AnyValues' в 'GwE2_BYTE_ext_wr'.'Значение' Чтение из 'GwE2_BYTE_external'
	Then Проверка запись значений '1; 0x7F00; 0x7FFF' в 'GwE2_WORD_ext_wr'.'Значение' Чтение из 'GwE2_WORD_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'GwE2_DWORD_ext_wr'.'Значение' Чтение из 'GwE2_DWORD_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'GwE2_LWORD_ext_wr'.'Значение' Чтение из 'GwE2_LWORD_external'
	Then Проверка запись значений 'SINT AnyValues' в 'GwE2_SINT_ext_wr'.'Значение' Чтение из 'GwE2_SINT_external'
	Then Проверка запись значений 'INT AnyValues' в 'GwE2_INT_ext_wr'.'Значение' Чтение из 'GwE2_INT_external'
	Then Проверка запись значений 'FLOAT Like INT' в 'GwE2_DINT_ext_wr'.'Значение' Чтение из 'GwE2_DINT_external'
	#Then Проверка запись значений 'FLOAT Like INT' в 'GwE2_LINT_ext_wr'.'Значение' Чтение из 'GwE2_LINT_external'
	Then Проверка запись значений 'USINT AnyValues' в 'GwE2_USINT_ext_wr'.'Значение' Чтение из 'GwE2_USINT_external'
	Then Проверка запись значений 'UINT AnyValues' в 'GwE2_UINT_ext_wr'.'Значение' Чтение из 'GwE2_UINT_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'GwE2_UDINT_ext_wr'.'Значение' Чтение из 'GwE2_UDINT_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'GwE2_ULINT_ext_wr'.'Значение' Чтение из 'GwE2_ULINT_external'
	Then Проверка запись значений 'REAL AnyValues' в 'GwE2_REAL_ext_wr'.'Значение' Чтение из 'GwE2_REAL_external'
	Then Проверка запись значений 'REAL AnyValues' в 'GwE2_LREAL_ext_wr'.'Значение' Чтение из 'GwE2_LREAL_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'GwE2_TIME_ext_wr'.'Значение' Чтение из 'GwE2_TIME_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'GwE2_DATE_ext_wr'.'Значение' Чтение из 'GwE2_DATE_external'

	@fromMirror  @fromGate
	@EpicПроверка_Quality			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteПроверка_Quality
	@critical
    Scenario: Slave104.OpcDa_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDa_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'OpcDa_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcDa_DATE_const'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: Slave104.OpcDa_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDa_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
	Then Проверка запись значений '1; FALSE' в 'OpcDa_BOOL_ext_wr'.'Значение' Чтение из 'OpcDa_BOOL_external'
	Then Проверка запись значений 'BYTE AnyValues' в 'OpcDa_BYTE_ext_wr'.'Значение' Чтение из 'OpcDa_BYTE_external'
	Then Проверка запись значений '1; 0x7F00; 0x7FFF' в 'OpcDa_WORD_ext_wr'.'Значение' Чтение из 'OpcDa_WORD_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'OpcDa_DWORD_ext_wr'.'Значение' Чтение из 'OpcDa_DWORD_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'OpcDa_LWORD_ext_wr'.'Значение' Чтение из 'OpcDa_LWORD_external'
	Then Проверка запись значений 'SINT AnyValues' в 'OpcDa_SINT_ext_wr'.'Значение' Чтение из 'OpcDa_SINT_external'
	Then Проверка запись значений 'INT AnyValues' в 'OpcDa_INT_ext_wr'.'Значение' Чтение из 'OpcDa_INT_external'
	Then Проверка запись значений 'FLOAT Like INT' в 'OpcDa_DINT_ext_wr'.'Значение' Чтение из 'OpcDa_DINT_external'
	#Then Проверка запись значений 'FLOAT Like INT' в 'OpcDa_LINT_ext_wr'.'Значение' Чтение из 'OpcDa_LINT_external'
	Then Проверка запись значений 'USINT AnyValues' в 'OpcDa_USINT_ext_wr'.'Значение' Чтение из 'OpcDa_USINT_external'
	Then Проверка запись значений 'UINT AnyValues' в 'OpcDa_UINT_ext_wr'.'Значение' Чтение из 'OpcDa_UINT_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'OpcDa_UDINT_ext_wr'.'Значение' Чтение из 'OpcDa_UDINT_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'OpcDa_ULINT_ext_wr'.'Значение' Чтение из 'OpcDa_ULINT_external'
	Then Проверка запись значений 'REAL AnyValues' в 'OpcDa_REAL_ext_wr'.'Значение' Чтение из 'OpcDa_REAL_external'
	Then Проверка запись значений 'REAL AnyValues' в 'OpcDa_LREAL_ext_wr'.'Значение' Чтение из 'OpcDa_LREAL_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'OpcDa_TIME_ext_wr'.'Значение' Чтение из 'OpcDa_TIME_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'OpcDa_DATE_ext_wr'.'Значение' Чтение из 'OpcDa_DATE_external'
	
	@fromMirror  @fromGate
	@EpicПроверка_Quality			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteПроверка_Quality
	@critical
    Scenario: Slave104.OpcProxy_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'OpcProxy_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcProxy_DATE_const'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: Slave104.OpcProxy_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
	Then Проверка запись значений '1; FALSE' в 'OpcProxy_BOOL_ext_wr'.'Значение' Чтение из 'OpcProxy_BOOL_external'
	Then Проверка запись значений 'BYTE AnyValues' в 'OpcProxy_BYTE_ext_wr'.'Значение' Чтение из 'OpcProxy_BYTE_external'
	Then Проверка запись значений '1; 0x7F00; 0x7FFF' в 'OpcProxy_WORD_ext_wr'.'Значение' Чтение из 'OpcProxy_WORD_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'OpcProxy_DWORD_ext_wr'.'Значение' Чтение из 'OpcProxy_DWORD_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'OpcProxy_LWORD_ext_wr'.'Значение' Чтение из 'OpcProxy_LWORD_external'
	Then Проверка запись значений 'SINT AnyValues' в 'OpcProxy_SINT_ext_wr'.'Значение' Чтение из 'OpcProxy_SINT_external'
	Then Проверка запись значений 'INT AnyValues' в 'OpcProxy_INT_ext_wr'.'Значение' Чтение из 'OpcProxy_INT_external'
	Then Проверка запись значений 'FLOAT Like INT' в 'OpcProxy_DINT_ext_wr'.'Значение' Чтение из 'OpcProxy_DINT_external'
	#Then Проверка запись значений 'FLOAT Like INT' в 'OpcProxy_LINT_ext_wr'.'Значение' Чтение из 'OpcProxy_LINT_external'
	Then Проверка запись значений 'USINT AnyValues' в 'OpcProxy_USINT_ext_wr'.'Значение' Чтение из 'OpcProxy_USINT_external'
	Then Проверка запись значений 'UINT AnyValues' в 'OpcProxy_UINT_ext_wr'.'Значение' Чтение из 'OpcProxy_UINT_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'OpcProxy_UDINT_ext_wr'.'Значение' Чтение из 'OpcProxy_UDINT_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'OpcProxy_ULINT_ext_wr'.'Значение' Чтение из 'OpcProxy_ULINT_external'
	Then Проверка запись значений 'REAL AnyValues' в 'OpcProxy_REAL_ext_wr'.'Значение' Чтение из 'OpcProxy_REAL_external'
	Then Проверка запись значений 'REAL AnyValues' в 'OpcProxy_LREAL_ext_wr'.'Значение' Чтение из 'OpcProxy_LREAL_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'OpcProxy_TIME_ext_wr'.'Значение' Чтение из 'OpcProxy_TIME_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'OpcProxy_DATE_ext_wr'.'Значение' Чтение из 'OpcProxy_DATE_external'
	
	@fromMirror  @fromGate
	@EpicПроверка_Quality			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteПроверка_Quality
	@critical
    Scenario: Slave104.OpcUA_Params_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcUa_ASt5000_Lin' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_TIME_const'.'Значение' 
    #Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_DATE_const'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: Slave104.OpcUA_Params_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcUa_ASt5000_Lin' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
	Then Проверка запись значений '1; FALSE' в 'OpcUa_PARAM_BOOL_ext_wr'.'Значение' Чтение из 'OpcUa_PARAM_BOOL_external'
	Then Проверка запись значений 'BYTE AnyValues' в 'OpcUa_PARAM_BYTE_ext_wr'.'Значение' Чтение из 'OpcUa_PARAM_BYTE_external'
	Then Проверка запись значений '1; 0x7F00; 0x7FFF' в 'OpcUa_PARAM_WORD_ext_wr'.'Значение' Чтение из 'OpcUa_PARAM_WORD_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'OpcUa_PARAM_DWORD_ext_wr'.'Значение' Чтение из 'OpcUa_PARAM_DWORD_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'OpcUa_PARAM_LWORD_ext_wr'.'Значение' Чтение из 'OpcUa_PARAM_LWORD_external'
	Then Проверка запись значений 'SINT AnyValues' в 'OpcUa_PARAM_SINT_ext_wr'.'Значение' Чтение из 'OpcUa_PARAM_SINT_external'
	Then Проверка запись значений 'INT AnyValues' в 'OpcUa_PARAM_INT_ext_wr'.'Значение' Чтение из 'OpcUa_PARAM_INT_external'
	Then Проверка запись значений 'FLOAT Like INT' в 'OpcUa_PARAM_DINT_ext_wr'.'Значение' Чтение из 'OpcUa_PARAM_DINT_external'
	#Then Проверка запись значений 'FLOAT Like INT' в 'OpcUa_PARAM_LINT_ext_wr'.'Значение' Чтение из 'OpcUa_PARAM_LINT_external'
	Then Проверка запись значений 'USINT AnyValues' в 'OpcUa_PARAM_USINT_ext_wr'.'Значение' Чтение из 'OpcUa_PARAM_USINT_external'
	Then Проверка запись значений 'UINT AnyValues' в 'OpcUa_PARAM_UINT_ext_wr'.'Значение' Чтение из 'OpcUa_PARAM_UINT_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'OpcUa_PARAM_UDINT_ext_wr'.'Значение' Чтение из 'OpcUa_PARAM_UDINT_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'OpcUa_PARAM_ULINT_ext_wr'.'Значение' Чтение из 'OpcUa_PARAM_ULINT_external'
	Then Проверка запись значений 'REAL AnyValues' в 'OpcUa_PARAM_REAL_ext_wr'.'Значение' Чтение из 'OpcUa_PARAM_REAL_external'
	Then Проверка запись значений 'REAL AnyValues' в 'OpcUa_PARAM_LREAL_ext_wr'.'Значение' Чтение из 'OpcUa_PARAM_LREAL_external'
	Then Проверка запись значений 'FLOAT Like UINT' в 'OpcUa_PARAM_TIME_ext_wr'.'Значение' Чтение из 'OpcUa_PARAM_TIME_external'
	#Then Проверка запись значений 'FLOAT Like UINT' в 'OpcUa_PARAM_DATE_ext_wr'.'Значение' Чтение из 'OpcUa_PARAM_DATE_external'

	@fromMirror  @fromGate
	@EpicПроверка_Quality			@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteПроверка_Quality
	@critical
    Scenario: Slave104.Snmp_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'Snmp_v2_NetSw28' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_UpTime'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Speed_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_InOctets_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OutOctets_09'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OpStat_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Speed_10'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_InOctets_10'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OutOctets_10'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OpStat_10'.'Значение' 

