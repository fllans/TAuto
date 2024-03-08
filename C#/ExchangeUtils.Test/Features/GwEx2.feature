Feature: GwEx2
	
	
    @fromMirror  @fromGate
	@EpicTimeStamp	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex @suiteTimeStamp
    Scenario: GwEx2ex.GwE2_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx2_1' в норме
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
	@EpicПроверка_Quality	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteПроверка_Quality
	@critical
    Scenario: GwEx2ex.GwE2_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
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
	@EpicЧтение_Запись	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx2ex.GwE2_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'GwE2_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'GwE2_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'GwE2_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'GwE2_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'GwE2_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'GwE2_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'GwE2_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'GwE2_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'GwE2_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'GwE2_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'GwE2_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'GwE2_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'GwE2_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'GwE2_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'GwE2_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'GwE2_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'GwE2_DATE_external'.'Значение'

	@ignore
	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx2ex.GwE2_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
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

	@ignore
	@fromMirror  @fromGate
	@EpicTimeStamp	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex @suiteTimeStamp
    Scenario: GwEx1ex.GwE2_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx_1' в норме
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
	@EpicПроверка_Quality	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteПроверка_Quality
	@critical
    Scenario: GwEx1ex.GwE2_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
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
	@EpicЧтение_Запись	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx1ex.GwE2_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'GwE2_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'GwE2_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'GwE2_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'GwE2_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'GwE2_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'GwE2_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'GwE2_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'GwE2_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'GwE2_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'GwE2_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'GwE2_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'GwE2_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'GwE2_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'GwE2_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'GwE2_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'GwE2_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'GwE2_DATE_external'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx1ex.GwE2_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
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
	@EpicПроверка_Quality	@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteПроверка_Quality
	@critical
    Scenario: MbTcpSlave.GwE2_GoodQual
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
	@EpicЧтение_Запись	@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: MbTcpSlave.GwE2_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка чтения и записи значений 'BOOL Values' в 'GwE2_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'GwE2_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'GwE2_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'GwE2_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'GwE2_LWORD_external'.'Значение'
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
	@EpicЧтение_Запись	@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave    @suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: MbTcpSlave.GwE2_WiteList
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

	@ignore
	@fromMirror  @fromGate
	@EpicTimeStamp	@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave @suiteTimeStamp
    Scenario: Slave104.GwE2_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'Iec104_Sp' в норме
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
	@EpicПроверка_Quality   @Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteПроверка_Quality
	@critical
    Scenario: Slave104.GwE2_GoodQual
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

	@ignore
	@fromMirror  @fromGate
	@EpicЧтение_Запись  @Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave    @suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: Slave104.GwE2_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
	#Then Проверка запись значений '1; FALSE' в 'GwE2_BOOL_ext_wr'.'Значение' Чтение из 'GwE2_BOOL_external'
	#Then Проверка запись значений 'BYTE AnyValues' в 'GwE2_BYTE_ext_wr'.'Значение' Чтение из 'GwE2_BYTE_external'
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
	@EpicПроверка_Quality	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteПроверка_Quality
	@critical
    Scenario: GwEx1Proxy.GwE2_GoodQual
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
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
	@EpicЧтение_Запись	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx1Proxy.GwE2_ReadWrite
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'GwE2_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'GwE2_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'GwE2_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'GwE2_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'GwE2_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'GwE2_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'GwE2_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'GwE2_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'GwE2_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'GwE2_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'GwE2_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'GwE2_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'GwE2_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'GwE2_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'GwE2_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'GwE2_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'GwE2_DATE_external'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx1Proxy.GwE2_WiteList
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
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
	@EpicПроверка_Quality	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteПроверка_Quality
	@critical
    Scenario: GwEx2Proxy.GwE2_GoodQual
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
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
	@EpicЧтение_Запись	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx2Proxy.GwE2_ReadWrite
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'GwE2_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'GwE2_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'GwE2_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'GwE2_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'GwE2_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'GwE2_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'GwE2_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'GwE2_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'GwE2_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'GwE2_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'GwE2_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'GwE2_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'GwE2_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'GwE2_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'GwE2_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'GwE2_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'GwE2_DATE_external'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx2Proxy.GwE2_WiteList
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
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
	@EpicTimeStamp	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer @suiteTimeStamp
    Scenario: OpcUAServer.GwE2_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'OPC_UA_1' в норме
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
	@EpicПроверка_Quality	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteПроверка_Quality
	@critical
    Scenario: OpcUAServer.GwE2_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
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
	@EpicЧтение_Запись	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: OpcUAServer.GwE2_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'GwE2_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'GwE2_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'GwE2_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'GwE2_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'GwE2_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'GwE2_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'GwE2_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'GwE2_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'GwE2_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'GwE2_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'GwE2_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'GwE2_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'GwE2_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'GwE2_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'GwE2_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'GwE2_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'GwE2_DATE_external'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: OpcUAServer.GwE2_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'GwExch_2_v1' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
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