Feature: OpcDaProxy
		
    @fromMirror  @fromGate
	@EpicTimeStamp	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex @suiteTimeStamp
    Scenario: GwEx2ex.OpcProxy_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx2_1' в норме
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
	@EpicПроверка_Quality	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteПроверка_Quality
	@critical
    Scenario: GwEx2ex.OpcProxy_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
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
	@EpicЧтение_Запись	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx2ex.OpcProxy_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'OpcProxy_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'OpcProxy_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'OpcProxy_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'OpcProxy_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'OpcProxy_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'OpcProxy_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'OpcProxy_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'OpcProxy_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'OpcProxy_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'OpcProxy_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'OpcProxy_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'OpcProxy_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'OpcProxy_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'OpcProxy_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'OpcProxy_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'OpcProxy_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'OpcProxy_DATE_external'.'Значение'

	@ignore
	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx2ex.OpcProxy_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
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

	#Данные от OPC DA TCP не архивируются. Заведена задача #4542
	@ignore
	@fromMirror  @fromGate
	@EpicTimeStamp	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex @suiteTimeStamp
    Scenario: GwEx1ex.OpcProxy_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx_1' в норме
	When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_bool'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_byte'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_BYTE'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_WORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_DWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_DWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_LWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_LWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_SINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_SINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_INT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_INT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_DINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_LINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_LINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_USINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_USINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_UINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_UDINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_UDINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_ULINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_ULINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_REAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_LREAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_LREAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_TIME'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_TIME'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_DATE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_DATE'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteПроверка_Quality
	@critical
    Scenario: GwEx1ex.OpcProxy_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
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
	@EpicЧтение_Запись	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx1ex.OpcProxy_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'OpcProxy_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'OpcProxy_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'OpcProxy_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'OpcProxy_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'OpcProxy_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'OpcProxy_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'OpcProxy_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'OpcProxy_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'OpcProxy_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'OpcProxy_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'OpcProxy_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'OpcProxy_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'OpcProxy_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'OpcProxy_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'OpcProxy_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'OpcProxy_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'OpcProxy_DATE_external'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx1ex.OpcProxy_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
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
	@EpicПроверка_Quality	@StoryModbus_TCP_Slave
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
	@EpicЧтение_Запись	@StoryModbus_TCP_Slave
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
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'OpcProxy_LWORD_external'.'Значение'
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
	@EpicЧтение_Запись	@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave    @suiteЧтение_Запись	@subSuiteЗапись_запрещена
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
	@EpicTimeStamp	@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave @suiteTimeStamp
    Scenario: Slave104.OpcProxy_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'Iec104_Sp' в норме
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
	@EpicПроверка_Quality   @Storyiec104_Slave
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
	@EpicЧтение_Запись  @Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave    @suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: Slave104.OpcProxy_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
	#Then Проверка запись значений '1; FALSE' в 'OpcProxy_BOOL_ext_wr'.'Значение' Чтение из 'OpcProxy_BOOL_external'
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
	@EpicПроверка_Quality	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteПроверка_Quality
	@critical
    Scenario: GwEx1Proxy.OpcProxy_GoodQual
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
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
	@EpicЧтение_Запись	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx1Proxy.OpcProxy_ReadWrite
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'OpcProxy_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'OpcProxy_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'OpcProxy_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'OpcProxy_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'OpcProxy_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'OpcProxy_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'OpcProxy_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'OpcProxy_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'OpcProxy_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'OpcProxy_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'OpcProxy_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'OpcProxy_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'OpcProxy_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'OpcProxy_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'OpcProxy_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'OpcProxy_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'OpcProxy_DATE_external'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx1Proxy.OpcProxy_WiteList
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
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
	@EpicПроверка_Quality	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteПроверка_Quality
	@critical
    Scenario: GwEx2Proxy.OpcProxy_GoodQual
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
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
	@EpicЧтение_Запись	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx2Proxy.OpcProxy_ReadWrite
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'OpcProxy_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'OpcProxy_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'OpcProxy_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'OpcProxy_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'OpcProxy_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'OpcProxy_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'OpcProxy_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'OpcProxy_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'OpcProxy_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'OpcProxy_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'OpcProxy_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'OpcProxy_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'OpcProxy_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'OpcProxy_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'OpcProxy_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'OpcProxy_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'OpcProxy_DATE_external'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx2Proxy.OpcProxy_WiteList
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
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
	@EpicTimeStamp	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer @suiteTimeStamp
    Scenario: OpcUAServer.OpcProxy_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'OPC_UA_1' в норме
	When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_BOOL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_BYTE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_BYTE'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_WORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_WORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_DWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_DWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_LWORD'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_LWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_SINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_SINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_INT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_INT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_DINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_LINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_LINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_USINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_USINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_UINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_UINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_UDINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_UDINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_ULINT'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_ULINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_REAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_LREAL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_LREAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_TIME'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_TIME'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'OpcProxy_Subs_VAR_DATE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'OpcProxy_DATE'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteПроверка_Quality
	@critical
    Scenario: OpcUAServer.OpcProxy_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
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
	@EpicЧтение_Запись	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: OpcUAServer.OpcProxy_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'OpcProxy_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'OpcProxy_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'OpcProxy_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'OpcProxy_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'OpcProxy_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'OpcProxy_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'OpcProxy_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'OpcProxy_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'OpcProxy_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'OpcProxy_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'OpcProxy_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'OpcProxy_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'OpcProxy_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'OpcProxy_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'OpcProxy_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'OpcProxy_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'OpcProxy_DATE_external'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: OpcUAServer.OpcProxy_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'OpcDaProxy_Subs' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
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
