@ignore
Feature: OpcUA
		
    @fromMirror  @fromGate
	@EpicTimeStamp	@StoryGwE2ex
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
	@EpicПроверка_Quality	@StoryGwE2ex
	@parentSuite2_ExchUtils_GwE2ex	@suiteПроверка_Quality
	@critical
    Scenario: GwE2ex.OpcUA_Params_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcUa_ASt5000_Lin' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2ex_1' в норме
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
    Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_DT_const'.'Значение'
    #Then Проверка Runtime качества 'Good' переменной 'OpcUa_PARAM_DATE_const'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwE2ex
	@parentSuite2_ExchUtils_GwE2ex	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwE2ex.OpcUA_Params_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcUa_ASt5000_Lin' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2ex_1' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'OpcUa_PARAM_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'OpcUa_PARAM_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'OpcUa_PARAM_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'OpcUa_PARAM_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'OpcUa_PARAM_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'OpcUa_PARAM_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'OpcUa_PARAM_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'OpcUa_PARAM_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'OpcUa_PARAM_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'OpcUa_PARAM_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'OpcUa_PARAM_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'OpcUa_PARAM_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'OpcUa_PARAM_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'OpcUa_PARAM_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'OpcUa_PARAM_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'OpcUa_PARAM_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DT AnyValues' в 'OpcUa_PARAM_DT_external'.'Значение'
	#Then Проверка чтения и записи значений 'DATE AnyValues' в 'OpcUa_PARAM_DATE_external'.'Значение'
	
	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwE2ex
	@parentSuite2_ExchUtils_GwE2ex	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwE2ex.OpcUA_Params_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcUa_ASt5000_Lin' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2ex_1' в норме
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
	Then Проверка записи 'OpcUa_PARAM_DT_wr'.'Значение' не в белом списке
	#Then Проверка записи 'OpcUa_PARAM_DATE_wr'.'Значение' не в белом списке

	@fromMirror  @fromGate
	@EpicTimeStamp	@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave @suiteTimeStamp
    Scenario: Slave104.OpcUa_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'OpcUa_ASt5000_Lin' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'Iec104_Sp' в норме
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
   # When Чтение исходных архивных данных 'OpcUa_PARAM_date'.'Значение' из 'ArcWork'
   # Then Сравнение архивных данных 'OpcUa_PARAM_DATE'.'Значение' из 'ArcReciv'

   	@fromMirror  @fromGate
	@EpicПроверка_Quality	@Storyiec104_Slave
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
	@EpicЧтение_Запись	@Storyiec104_Slave
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
	@EpicПроверка_Quality	@StoryModbus_TCP_Slave
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
	@EpicЧтение_Запись	@StoryModbus_TCP_Slave
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
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'OpcUa_PARAM_LWORD_external'.'Значение'
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
	@EpicЧтение_Запись	@StoryModbus_TCP_Slave
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