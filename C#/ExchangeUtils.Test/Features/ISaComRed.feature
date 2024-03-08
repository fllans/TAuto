Feature: ISaComRed

	@fromMirror  @fromGate
	@EpicTimeStamp	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex @suiteTimeStamp
    Scenario: GwEx2ex.cpu715_Red_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx2_1' в норме
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
	@EpicПроверка_Quality	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteПроверка_Quality
	@critical
    Scenario: GwEx2ex.cpu715_Red_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
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
	@EpicЧтение_Запись	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx2ex.cpu715_Red_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'cpu715_Red_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'cpu715_Red_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'cpu715_Red_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'cpu715_Red_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'cpu715_Red_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'cpu715_Red_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'cpu715_Red_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'cpu715_Red_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'cpu715_Red_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'cpu715_Red_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'cpu715_Red_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'cpu715_Red_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'cpu715_Red_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'cpu715_Red_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'cpu715_Red_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'cpu715_Red_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'cpu715_Red_DATE_external'.'Значение'

	@ignore
	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx2ex.cpu715_Red_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
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
	@EpicTimeStamp	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex @suiteTimeStamp
    Scenario: GwEx1ex.cpu715_Red_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx_1' в норме
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
	@EpicПроверка_Quality	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteПроверка_Quality
	@critical
    Scenario: GwEx1ex.cpu715_Red_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
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
	@EpicЧтение_Запись	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx1ex.cpu715_Red_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'cpu715_Red_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'cpu715_Red_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'cpu715_Red_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'cpu715_Red_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'cpu715_Red_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'cpu715_Red_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'cpu715_Red_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'cpu715_Red_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'cpu715_Red_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'cpu715_Red_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'cpu715_Red_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'cpu715_Red_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'cpu715_Red_ULINT_external'.'Значение'
	#Then Проверка чтения и записи значений 'REAL AnyValues' в 'cpu715_Red_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'cpu715_Red_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'cpu715_Red_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'cpu715_Red_DATE_external'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx1ex.cpu715_Red_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
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
	@EpicПроверка_Quality	@StoryModbus_TCP_Slave
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
	@EpicЧтение_Запись	@StoryModbus_TCP_Slave
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
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'cpu715_Red_LWORD_external'.'Значение'
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
	@EpicЧтение_Запись	@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave    @suiteЧтение_Запись	@subSuiteЗапись_запрещена
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
	@EpicTimeStamp	@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave @suiteTimeStamp
    Scenario: Slave104.cpu715_Red_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'Iec104_Sp' в норме
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
	@EpicПроверка_Quality   @Storyiec104_Slave
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
	@EpicЧтение_Запись  @Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave    @suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: Slave104.cpu715_Red_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
	#Then Проверка запись значений '1; FALSE' в 'cpu715_Red_BOOL_ext_wr'.'Значение' Чтение из 'cpu715_Red_BOOL_external'
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
	@EpicПроверка_Quality	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteПроверка_Quality
	@critical
    Scenario: GwEx1Proxy.cpu715_Red_GoodQual
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
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
	@EpicЧтение_Запись	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx1Proxy.cpu715_Red_ReadWrite
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'cpu715_Red_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'cpu715_Red_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'cpu715_Red_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'cpu715_Red_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'cpu715_Red_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'cpu715_Red_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'cpu715_Red_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'cpu715_Red_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'cpu715_Red_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'cpu715_Red_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'cpu715_Red_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'cpu715_Red_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'cpu715_Red_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'cpu715_Red_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'cpu715_Red_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'cpu715_Red_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'cpu715_Red_DATE_external'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx1Proxy.cpu715_Red_WiteList
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
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
	@EpicПроверка_Quality	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteПроверка_Quality
	@critical
    Scenario: GwEx2Proxy.cpu715_Red_GoodQual
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
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
	@EpicЧтение_Запись	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx2Proxy.cpu715_Red_ReadWrite
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'cpu715_Red_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'cpu715_Red_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'cpu715_Red_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'cpu715_Red_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'cpu715_Red_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'cpu715_Red_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'cpu715_Red_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'cpu715_Red_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'cpu715_Red_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'cpu715_Red_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'cpu715_Red_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'cpu715_Red_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'cpu715_Red_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'cpu715_Red_REAL_external'.'Значение'
	#Then Проверка чтения и записи значений 'LREAL AnyValues' в 'cpu715_Red_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'cpu715_Red_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'cpu715_Red_DATE_external'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx2Proxy.cpu715_Red_WiteList
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
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
	@EpicTimeStamp	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer @suiteTimeStamp
    Scenario: OpcUAServer.cpu715_Red_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'OPC_UA_1' в норме
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
	@EpicПроверка_Quality	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteПроверка_Quality
	@critical
    Scenario: OpcUAServer.cpu715_Red_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
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
	@EpicЧтение_Запись	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: OpcUAServer.cpu715_Red_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
	Then Проверка чтения и записи значений 'TRUE; FALSE' в 'cpu715_Red_BOOL_external'.'Значение'
	Then Проверка чтения и записи значений 'BYTE AnyValues' в 'cpu715_Red_BYTE_external'.'Значение'
	Then Проверка чтения и записи значений 'WORD AnyValues' в 'cpu715_Red_WORD_external'.'Значение'
	Then Проверка чтения и записи значений 'DWORD AnyValues' в 'cpu715_Red_DWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'LWORD AnyValues' в 'cpu715_Red_LWORD_external'.'Значение'
	Then Проверка чтения и записи значений 'SINT AnyValues' в 'cpu715_Red_SINT_external'.'Значение'
	Then Проверка чтения и записи значений 'INT AnyValues' в 'cpu715_Red_INT_external'.'Значение'
	Then Проверка чтения и записи значений 'DINT AnyValues' в 'cpu715_Red_DINT_external'.'Значение'
	Then Проверка чтения и записи значений 'LINT AnyValues' в 'cpu715_Red_LINT_external'.'Значение'
	Then Проверка чтения и записи значений 'USINT AnyValues' в 'cpu715_Red_USINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UINT AnyValues' в 'cpu715_Red_UINT_external'.'Значение'
	Then Проверка чтения и записи значений 'UDINT AnyValues' в 'cpu715_Red_UDINT_external'.'Значение'
	Then Проверка чтения и записи значений 'ULINT AnyValues' в 'cpu715_Red_ULINT_external'.'Значение'
	Then Проверка чтения и записи значений 'REAL AnyValues' в 'cpu715_Red_REAL_external'.'Значение'
	Then Проверка чтения и записи значений 'LREAL AnyValues' в 'cpu715_Red_LREAL_external'.'Значение'
	Then Проверка чтения и записи значений 'TIME AnyValues' в 'cpu715_Red_TIME_external'.'Значение'
	Then Проверка чтения и записи значений 'DATE AnyValues' в 'cpu715_Red_DATE_external'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: OpcUAServer.cpu715_Red_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Red' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
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