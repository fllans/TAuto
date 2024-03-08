Feature: GwEx
		
    @fromMirror  @fromGate
	@EpicTimeStamp	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex @suiteTimeStamp
    Scenario: GwEx2ex.GwE_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx2_1' в норме
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

    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteПроверка_Quality
	@critical
    Scenario: GwEx2ex.GwE_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
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
	@EpicЧтение_Запись	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx2ex.GwE_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'GwE_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'GwE_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'GwE_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'GwE_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'GwE_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'GwE_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'GwE_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'GwE_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'GwE_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'GwE_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'GwE_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'GwE_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'GwE_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'GwE_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'GwE_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'GwE_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'GwE_DATE_external'.'Значение'

	@ignore
	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx2ex.GwE_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
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
	@EpicTimeStamp	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex @suiteTimeStamp
    Scenario: GwEx1ex.GwE_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx_1' в норме
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

    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteПроверка_Quality
	@critical
    Scenario: GwEx1ex.GwE_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
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
	@EpicЧтение_Запись	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx1ex.GwE_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'GwE_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'GwE_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'GwE_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'GwE_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'GwE_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'GwE_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'GwE_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'GwE_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'GwE_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'GwE_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'GwE_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'GwE_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'GwE_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'GwE_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'GwE_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'GwE_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'GwE_DATE_external'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx1ex.GwE_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
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
	@EpicПроверка_Quality	@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteПроверка_Quality
	@critical
    Scenario: MbTcpSlave.GwE_GoodQual
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
	@EpicЧтение_Запись	@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: MbTcpSlave.GwE_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка чтения и записи значений 'BOOL Values' в 'GwE_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'GwE_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'GwE_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'GwE_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'GwE_LWORD_external'.'Значение'
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
	@EpicЧтение_Запись	@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave    @suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: MbTcpSlave.GwE_WiteList
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
	@EpicTimeStamp	@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave @suiteTimeStamp
    Scenario: Slave104.GwE_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'Iec104_Sp' в норме
	When Чтение исходных архивных данных 'GEv1_Var_BOOL'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'GEv1_Var_BYTE'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'GwE_BYTE'.'Значение' из 'ArcReciv'
    #When Чтение исходных архивных данных 'GEv1_Var_WORD'.'Значение' из 'ArcWork'
    #Then Сравнение архивных данных 'GwE_WORD'.'Значение' из 'ArcReciv'
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

    @fromMirror  @fromGate
	@EpicПроверка_Quality   @Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteПроверка_Quality
	@critical
    Scenario: Slave104.GwE_GoodQual
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
	@EpicЧтение_Запись  @Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave    @suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: Slave104.GwE_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
	#Then Проверка запись значений '1; FALSE' в 'GwE_BOOL_ext_wr'.'Значение' Чтение из 'GwE_BOOL_external'
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
	@EpicПроверка_Quality	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteПроверка_Quality
	@critical
    Scenario: GwEx1Proxy.GwE_GoodQual
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
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
	@EpicЧтение_Запись	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx1Proxy.GwE_ReadWrite
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'GwE_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'GwE_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'GwE_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'GwE_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'GwE_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'GwE_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'GwE_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'GwE_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'GwE_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'GwE_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'GwE_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'GwE_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'GwE_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'GwE_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'GwE_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'GwE_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'GwE_DATE_external'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx1Proxy.GwE_WiteList
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
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
	@EpicПроверка_Quality	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteПроверка_Quality
	@critical
    Scenario: GwEx2Proxy.GwE_GoodQual
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
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
	@EpicЧтение_Запись	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx2Proxy.GwE_ReadWrite
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'GwE_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'GwE_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'GwE_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'GwE_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'GwE_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'GwE_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'GwE_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'GwE_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'GwE_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'GwE_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'GwE_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'GwE_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'GwE_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'GwE_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'GwE_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'GwE_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'GwE_DATE_external'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx2Proxy.GwE_WiteList
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
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
	@EpicTimeStamp	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer @suiteTimeStamp
    Scenario: OpcUAServer.GwE_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'OPC_UA_1' в норме
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

    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteПроверка_Quality
	@critical
    Scenario: OpcUAServer.GwE_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
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
	@EpicЧтение_Запись	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: OpcUAServer.GwE_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'GwE_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'GwE_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'GwE_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'GwE_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'GwE_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'GwE_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'GwE_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'GwE_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'GwE_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'GwE_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'GwE_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'GwE_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'GwE_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'GwE_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'GwE_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'GwE_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'GwE_DATE_external'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: OpcUAServer.GwE_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
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
