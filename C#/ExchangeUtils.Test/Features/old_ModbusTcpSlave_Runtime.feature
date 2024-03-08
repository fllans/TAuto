@ignore
Feature: ModbusTcpSlave_Runtime
	
	@fromMirror  @fromGate
	@EpicПроверка_Quality			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteПроверка_Quality
	@critical
    Scenario: MbTcpSlave.iCore2_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'ICORE2' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
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
	@EpicЧтение_Запись			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: MbTcpSlave.iCore2_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'ICORE2' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка чтения и записи значений 'BOOL Values' в 'iCore2_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'iCore2_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'iCore2_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'iCore2_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'iCore2_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'iCore2_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'iCore2_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'iCore2_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'iCore2_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'iCore2_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'iCore2_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'iCore2_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'iCore2_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'iCore2_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'iCore2_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'iCore2_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'iCore2_DATE_external'.'Значение'
	
	@fromMirror  @fromGate
	@EpicЧтение_Запись			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: MbTcpSlave.iCore2_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'ICORE2' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка записи 'iCore2_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iCore2_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'iCore2_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iCore2_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iCore2_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iCore2_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iCore2_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iCore2_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iCore2_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iCore2_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iCore2_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iCore2_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iCore2_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iCore2_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iCore2_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iCore2_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'iCore2_DATE_wr'.'Значение' не в белом списке

	@fromMirror  @fromGate
	@EpicПроверка_Quality			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteПроверка_Quality
	@critical
    Scenario: MbTcpSlave.cpu715_Red_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
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
	@EpicЧтение_Запись			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: MbTcpSlave.cpu715_Red_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка чтения и записи значений 'BOOL Values' в 'cpu715_Red_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'cpu715_Red_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'cpu715_Red_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'cpu715_Red_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'cpu715_Red_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'cpu715_Red_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'cpu715_Red_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'cpu715_Red_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'cpu715_Red_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'cpu715_Red_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'cpu715_Red_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'cpu715_Red_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'cpu715_Red_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'cpu715_Red_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'cpu715_Red_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'cpu715_Red_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'cpu715_Red_DATE_external'.'Значение'
	
	@fromMirror  @fromGate
	@EpicЧтение_Запись			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: MbTcpSlave.cpu715_Red_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка записи 'cpu715_Red_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Red_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Red_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Red_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Red_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Red_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Red_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Red_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Red_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Red_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Red_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Red_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Red_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Red_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Red_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Red_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Red_DATE_wr'.'Значение' не в белом списке

	@fromMirror  @fromGate
	@EpicПроверка_Quality			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteПроверка_Quality
	@critical
    Scenario: MbTcpSlave.cpu715_Clust_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Cluster' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
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
	@EpicЧтение_Запись			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: MbTcpSlave.cpu715_Clust_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Cluster' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка чтения и записи значений 'BOOL Values' в 'cpu715_Cluster_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'cpu715_Cluster_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'cpu715_Cluster_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'cpu715_Cluster_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'cpu715_Cluster_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'cpu715_Cluster_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'cpu715_Cluster_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'cpu715_Cluster_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'cpu715_Cluster_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'cpu715_Cluster_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'cpu715_Cluster_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'cpu715_Cluster_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'cpu715_Cluster_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'cpu715_Cluster_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'cpu715_Cluster_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'cpu715_Cluster_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'cpu715_Cluster_DATE_external'.'Значение'
	
	@fromMirror  @fromGate
	@EpicЧтение_Запись			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: MbTcpSlave.cpu715_Clust_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Cluster' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка записи 'cpu715_Cluster_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Cluster_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Cluster_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Cluster_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Cluster_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Cluster_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Cluster_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Cluster_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Cluster_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Cluster_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Cluster_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Cluster_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Cluster_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Cluster_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Cluster_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Cluster_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu715_Cluster_DATE_wr'.'Значение' не в белом списке

	@fromMirror  @fromGate
	@EpicПроверка_Quality			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteПроверка_Quality
	@critical
    Scenario: MbTcpSlave.cpu850_Red_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'CPU850_RED' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
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
	@EpicЧтение_Запись			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: MbTcpSlave.cpu850_Red_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'CPU850_RED' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка чтения и записи значений 'BOOL Values' в 'cpu850_Red_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'cpu850_Red_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'cpu850_Red_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'cpu850_Red_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'cpu850_Red_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'cpu850_Red_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'cpu850_Red_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'cpu850_Red_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'cpu850_Red_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'cpu850_Red_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'cpu850_Red_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'cpu850_Red_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'cpu850_Red_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'cpu850_Red_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'cpu850_Red_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'cpu850_Red_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'cpu850_Red_DATE_external'.'Значение'
	
	@fromMirror  @fromGate
	@EpicЧтение_Запись			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: MbTcpSlave.cpu850_Red_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'CPU850_RED' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка записи 'cpu850_Red_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu850_Red_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu850_Red_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu850_Red_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu850_Red_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu850_Red_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu850_Red_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu850_Red_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu850_Red_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu850_Red_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu850_Red_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu850_Red_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu850_Red_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu850_Red_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu850_Red_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu850_Red_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'cpu850_Red_DATE_wr'.'Значение' не в белом списке

	@fromMirror  @fromGate
	@EpicПроверка_Quality			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteПроверка_Quality
	@critical
    Scenario: MbTcpSlave.GwEx_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
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
	@EpicЧтение_Запись			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: MbTcpSlave.GwEx_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка чтения и записи значений 'BOOL Values' в 'GwE_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'GwE_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'GwE_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'GwE_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'GwE_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'GwE_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'GwE_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'GwE_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'GwE_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'GwE_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'GwE_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'GwE_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'GwE_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'GwE_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'GwE_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'GwE_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'GwE_DATE_external'.'Значение'
	
	@fromMirror  @fromGate
	@EpicЧтение_Запись			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: MbTcpSlave.GwEx_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка записи 'GwE_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE_DATE_wr'.'Значение' не в белом списке

	@fromMirror  @fromGate
	@EpicПроверка_Quality			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteПроверка_Quality
	@critical
    Scenario: MbTcpSlave.GwEx2_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
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

	@fromMirror  @fromGate
	@EpicЧтение_Запись			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: MbTcpSlave.GwEx2_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка чтения и записи значений 'BOOL Values' в 'GwE2_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'GwE2_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'GwE2_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'GwE2_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'GwE2_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'GwE2_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'GwE2_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'GwE2_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'GwE2_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'GwE2_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'GwE2_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'GwE2_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'GwE2_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'GwE2_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'GwE2_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'GwE2_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'GwE2_DATE_external'.'Значение'
	
	@fromMirror  @fromGate
	@EpicЧтение_Запись			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: MbTcpSlave.GwEx2_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка записи 'GwE2_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'GwE2_DATE_wr'.'Значение' не в белом списке

	@fromMirror  @fromGate
	@EpicПроверка_Quality			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteПроверка_Quality
	@critical
    Scenario: MbTcpSlave.OpcDa_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDa_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
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
	@EpicЧтение_Запись			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: MbTcpSlave.OpcDa_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDa_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка чтения и записи значений 'BOOL Values' в 'OpcDa_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'OpcDa_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'OpcDa_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'OpcDa_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'OpcDa_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'OpcDa_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'OpcDa_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'OpcDa_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'OpcDa_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'OpcDa_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'OpcDa_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'OpcDa_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'OpcDa_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'OpcDa_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'OpcDa_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'OpcDa_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'OpcDa_DATE_external'.'Значение'
	
	@fromMirror  @fromGate
	@EpicЧтение_Запись			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: MbTcpSlave.OpcDa_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDa_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка записи 'OpcDa_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcDa_DATE_wr'.'Значение' не в белом списке

	@fromMirror  @fromGate
	@EpicПроверка_Quality			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteПроверка_Quality
	@critical
    Scenario: MbTcpSlave.OpcProxy_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
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
	@EpicЧтение_Запись			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: MbTcpSlave.OpcProxy_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка чтения и записи значений 'BOOL Values' в 'OpcProxy_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'OpcProxy_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'OpcProxy_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'OpcProxy_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'OpcProxy_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'OpcProxy_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'OpcProxy_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'OpcProxy_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'OpcProxy_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'OpcProxy_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'OpcProxy_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'OpcProxy_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'OpcProxy_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'OpcProxy_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'OpcProxy_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'OpcProxy_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'OpcProxy_DATE_external'.'Значение'
	
	@fromMirror  @fromGate
	@EpicЧтение_Запись			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: MbTcpSlave.OpcProxy_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка записи 'OpcProxy_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcProxy_DATE_wr'.'Значение' не в белом списке

	@fromMirror  @fromGate
	@EpicПроверка_Quality			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteПроверка_Quality
	@critical
    Scenario: MbTcpSlave.OpcUA_Params_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcUa_ASt5000_Lin' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
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
	@EpicЧтение_Запись			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: MbTcpSlave.OpcUA_Params_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcUa_ASt5000_Lin' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка чтения и записи значений 'BOOL Values' в 'OpcUa_PARAM_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'OpcUa_PARAM_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'OpcUa_PARAM_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'OpcUa_PARAM_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'OpcUa_PARAM_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'OpcUa_PARAM_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'OpcUa_PARAM_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'OpcUa_PARAM_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'OpcUa_PARAM_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'OpcUa_PARAM_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'OpcUa_PARAM_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'OpcUa_PARAM_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'OpcUa_PARAM_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'OpcUa_PARAM_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'OpcUa_PARAM_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'OpcUa_PARAM_TIME_external'.'Значение'
	#Then Проверка чтения и записи значений 'DATE AnyValues' в 'OpcUa_PARAM_DATE_external'.'Значение'
	
	@fromMirror  @fromGate
	@EpicЧтение_Запись			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: MbTcpSlave.OpcUA_Params_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcUa_ASt5000_Lin' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка записи 'OpcUa_PARAM_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'OpcUa_PARAM_TIME_wr'.'Значение' не в белом списке
	#Then Проверка записи 'OpcUa_PARAM_DATE_wr'.'Значение' не в белом списке

	@fromMirror  @fromGate
	@EpicПроверка_Quality			@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteПроверка_Quality
	@critical
    Scenario: MbTcpSlave.Snmp_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'Snmp_v2_NetSw28' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	#Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Name'.'Значение' 
	#Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Description'.'Значение' 
    #Then Проверка Runtime качества 'Good' переменной 'SnmpV2_UpTime'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_UpTime'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Speed_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_InOctets_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OutOctets_09'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OpStat_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Speed_10'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_InOctets_10'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OutOctets_10'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OpStat_10'.'Значение' 