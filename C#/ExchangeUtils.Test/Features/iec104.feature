Feature: iec104
		
    @fromMirror  @fromGate
	@EpicTimeStamp	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex @suiteTimeStamp
    Scenario: GwEx2ex.iec104_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'iec104_sporadic' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx2_1' в норме
	When Чтение исходных архивных данных 'Iec104_VAR_bool'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_byte'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_BYTE'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_word'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_WORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_dword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_DWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_lword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_LWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_sint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_SINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_int'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_INT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_dint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_lint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_LINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_usint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_USINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_uint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_UINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_udint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_UDINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_ulint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_ULINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_real'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_lreal'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_LREAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_time'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_TIME'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_date'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_DATE'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteПроверка_Quality
	@critical
    Scenario: GwEx2ex.iec104_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'iec104_sporadic' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
    Then Проверка Runtime качества 'Good' переменной 'iec104_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'iec104_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DATE_const'.'Значение'

    @fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx2ex.iec104_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'iec104_sporadic' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
	Then Проверка запись значений 'TRUE; FALSE' в 'iec104_BOOL_wr_W'.'Значение' Чтение из 'iec104_BOOL_wr_R'
	Then Проверка запись значений 'BYTE AnyValues' в 'iec104_BYTE_wr_W'.'Значение' Чтение из 'iec104_BYTE_wr_R'
	Then Проверка запись значений '1; 0x7F00; 0x7FFF' в 'iec104_WORD_wr_W'.'Значение' Чтение из 'iec104_WORD_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_DWORD_wr_W'.'Значение' Чтение из 'iec104_DWORD_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_LWORD_wr_W'.'Значение' Чтение из 'iec104_LWORD_wr_R'
	Then Проверка запись значений 'SINT AnyValues' в 'iec104_SINT_wr_W'.'Значение' Чтение из 'iec104_SINT_wr_R'
	Then Проверка запись значений 'INT AnyValues' в 'iec104_INT_wr_W'.'Значение' Чтение из 'iec104_INT_wr_R'
	Then Проверка запись значений 'FLOAT Like INT' в 'iec104_DINT_wr_W'.'Значение' Чтение из 'iec104_DINT_wr_R'
	Then Проверка запись значений 'FLOAT Like INT' в 'iec104_LINT_wr_W'.'Значение' Чтение из 'iec104_LINT_wr_R'
	Then Проверка запись значений 'USINT AnyValues' в 'iec104_USINT_wr_W'.'Значение' Чтение из 'iec104_USINT_wr_R'
	Then Проверка запись значений 'UINT AnyValues' в 'iec104_UINT_wr_W'.'Значение' Чтение из 'iec104_UINT_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_UDINT_wr_W'.'Значение' Чтение из 'iec104_UDINT_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_ULINT_wr_W'.'Значение' Чтение из 'iec104_ULINT_wr_R'
	Then Проверка запись значений 'REAL AnyValues' в 'iec104_REAL_wr_W'.'Значение' Чтение из 'iec104_REAL_wr_R'
	Then Проверка запись значений 'REAL AnyValues' в 'iec104_LREAL_wr_W'.'Значение' Чтение из 'iec104_LREAL_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_TIME_wr_W'.'Значение' Чтение из 'iec104_TIME_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_DATE_wr_W'.'Значение' Чтение из 'iec104_DATE_wr_R'

	@ignore
	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx2ex.iec104_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'iec104_sporadic' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
	Then Проверка записи 'iec104_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_DATE_wr'.'Значение' не в белом списке

	@fromMirror  @fromGate
	@EpicTimeStamp	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex @suiteTimeStamp
    Scenario: GwEx1ex.iec104_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'iec104_sporadic' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx_1' в норме
	When Чтение исходных архивных данных 'Iec104_VAR_bool'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_byte'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_BYTE'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_word'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_WORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_dword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_DWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_lword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_LWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_sint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_SINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_int'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_INT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_dint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_lint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_LINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_usint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_USINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_uint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_UINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_udint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_UDINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_ulint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_ULINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_real'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_lreal'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_LREAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_time'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_TIME'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_date'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_DATE'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteПроверка_Quality
	@critical
    Scenario: GwEx1ex.iec104_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'iec104_sporadic' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
    Then Проверка Runtime качества 'Good' переменной 'iec104_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'iec104_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DATE_const'.'Значение'

    @fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx1ex.iec104_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'iec104_sporadic' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
	Then Проверка запись значений 'TRUE; FALSE' в 'iec104_BOOL_wr_W'.'Значение' Чтение из 'iec104_BOOL_wr_R'
	Then Проверка запись значений 'BYTE AnyValues' в 'iec104_BYTE_wr_W'.'Значение' Чтение из 'iec104_BYTE_wr_R'
	Then Проверка запись значений '1; 0x7F00; 0x7FFF' в 'iec104_WORD_wr_W'.'Значение' Чтение из 'iec104_WORD_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_DWORD_wr_W'.'Значение' Чтение из 'iec104_DWORD_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_LWORD_wr_W'.'Значение' Чтение из 'iec104_LWORD_wr_R'
	Then Проверка запись значений 'SINT AnyValues' в 'iec104_SINT_wr_W'.'Значение' Чтение из 'iec104_SINT_wr_R'
	Then Проверка запись значений 'INT AnyValues' в 'iec104_INT_wr_W'.'Значение' Чтение из 'iec104_INT_wr_R'
	Then Проверка запись значений 'FLOAT Like INT' в 'iec104_DINT_wr_W'.'Значение' Чтение из 'iec104_DINT_wr_R'
	Then Проверка запись значений 'FLOAT Like INT' в 'iec104_LINT_wr_W'.'Значение' Чтение из 'iec104_LINT_wr_R'
	Then Проверка запись значений 'USINT AnyValues' в 'iec104_USINT_wr_W'.'Значение' Чтение из 'iec104_USINT_wr_R'
	Then Проверка запись значений 'UINT AnyValues' в 'iec104_UINT_wr_W'.'Значение' Чтение из 'iec104_UINT_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_UDINT_wr_W'.'Значение' Чтение из 'iec104_UDINT_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_ULINT_wr_W'.'Значение' Чтение из 'iec104_ULINT_wr_R'
	Then Проверка запись значений 'REAL AnyValues' в 'iec104_REAL_wr_W'.'Значение' Чтение из 'iec104_REAL_wr_R'
	Then Проверка запись значений 'REAL AnyValues' в 'iec104_LREAL_wr_W'.'Значение' Чтение из 'iec104_LREAL_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_TIME_wr_W'.'Значение' Чтение из 'iec104_TIME_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_DATE_wr_W'.'Значение' Чтение из 'iec104_DATE_wr_R'

	@ignore
	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx1ex.iec104_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'iec104_sporadic' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
	Then Проверка записи 'iec104_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_DATE_wr'.'Значение' не в белом списке

    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteПроверка_Quality
	@critical
    Scenario: MbTcpSlave.iec104_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'iec104_sporadic' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
    Then Проверка Runtime качества 'Good' переменной 'iec104_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'iec104_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DATE_const'.'Значение'

	
	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: MbTcpSlave.iec104_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'iec104_sporadic' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка запись значений 'TRUE; FALSE' в 'iec104_BOOL_wr_W'.'Значение' Чтение из 'iec104_BOOL_wr_R'
	Then Проверка запись значений 'BYTE AnyValues' в 'iec104_BYTE_wr_W'.'Значение' Чтение из 'iec104_BYTE_wr_R'
	Then Проверка запись значений '1; 0x7F00; 0x7FFF' в 'iec104_WORD_wr_W'.'Значение' Чтение из 'iec104_WORD_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_DWORD_wr_W'.'Значение' Чтение из 'iec104_DWORD_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_LWORD_wr_W'.'Значение' Чтение из 'iec104_LWORD_wr_R'
	Then Проверка запись значений 'SINT AnyValues' в 'iec104_SINT_wr_W'.'Значение' Чтение из 'iec104_SINT_wr_R'
	Then Проверка запись значений 'INT AnyValues' в 'iec104_INT_wr_W'.'Значение' Чтение из 'iec104_INT_wr_R'
	Then Проверка запись значений 'FLOAT Like INT' в 'iec104_DINT_wr_W'.'Значение' Чтение из 'iec104_DINT_wr_R'
	Then Проверка запись значений 'FLOAT Like INT' в 'iec104_LINT_wr_W'.'Значение' Чтение из 'iec104_LINT_wr_R'
	Then Проверка запись значений 'USINT AnyValues' в 'iec104_USINT_wr_W'.'Значение' Чтение из 'iec104_USINT_wr_R'
	Then Проверка запись значений 'UINT AnyValues' в 'iec104_UINT_wr_W'.'Значение' Чтение из 'iec104_UINT_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_UDINT_wr_W'.'Значение' Чтение из 'iec104_UDINT_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_ULINT_wr_W'.'Значение' Чтение из 'iec104_ULINT_wr_R'
	Then Проверка запись значений 'REAL AnyValues' в 'iec104_REAL_wr_W'.'Значение' Чтение из 'iec104_REAL_wr_R'
	Then Проверка запись значений 'REAL AnyValues' в 'iec104_LREAL_wr_W'.'Значение' Чтение из 'iec104_LREAL_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_TIME_wr_W'.'Значение' Чтение из 'iec104_TIME_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_DATE_wr_W'.'Значение' Чтение из 'iec104_DATE_wr_R'
	
	@ignore
	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave    @suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: MbTcpSlave.iec104_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'iec104_sporadic' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка записи 'iec104_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_DATE_wr'.'Значение' не в белом списке

	@fromMirror  @fromGate
	@EpicTimeStamp	@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave @suiteTimeStamp
    Scenario: Slave104.iec104_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'iec104_sporadic' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'iec104_Sp' в норме
	When Чтение исходных архивных данных 'Iec104_VAR_bool'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_byte'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_BYTE'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_word'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_WORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_dword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_DWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_lword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_LWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_sint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_SINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_int'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_INT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_dint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_lint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_LINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_usint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_USINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_uint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_UINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_udint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_UDINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_ulint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_ULINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_real'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_lreal'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_LREAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_time'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_TIME'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_date'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_DATE'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicПроверка_Quality   @Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteПроверка_Quality
	@critical
    Scenario: Slave104.iec104_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'iec104_sporadic' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'iec104_Sp' в норме
    Then Проверка Runtime качества 'Good' переменной 'iec104_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'iec104_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DATE_const'.'Значение'

	@fromMirror  @fromGate
	@EpicЧтение_Запись  @Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave    @suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: Slave104.iec104_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'iec104_sporadic' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'iec104_Sp' в норме
	Then Проверка запись значений 'TRUE; FALSE' в 'iec104_BOOL_wr_W'.'Значение' Чтение из 'iec104_BOOL_wr_R'
	Then Проверка запись значений 'BYTE AnyValues' в 'iec104_BYTE_wr_W'.'Значение' Чтение из 'iec104_BYTE_wr_R'
	Then Проверка запись значений '1; 0x7F00; 0x7FFF' в 'iec104_WORD_wr_W'.'Значение' Чтение из 'iec104_WORD_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_DWORD_wr_W'.'Значение' Чтение из 'iec104_DWORD_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_LWORD_wr_W'.'Значение' Чтение из 'iec104_LWORD_wr_R'
	Then Проверка запись значений 'SINT AnyValues' в 'iec104_SINT_wr_W'.'Значение' Чтение из 'iec104_SINT_wr_R'
	Then Проверка запись значений 'INT AnyValues' в 'iec104_INT_wr_W'.'Значение' Чтение из 'iec104_INT_wr_R'
	Then Проверка запись значений 'FLOAT Like INT' в 'iec104_DINT_wr_W'.'Значение' Чтение из 'iec104_DINT_wr_R'
	Then Проверка запись значений 'FLOAT Like INT' в 'iec104_LINT_wr_W'.'Значение' Чтение из 'iec104_LINT_wr_R'
	Then Проверка запись значений 'USINT AnyValues' в 'iec104_USINT_wr_W'.'Значение' Чтение из 'iec104_USINT_wr_R'
	Then Проверка запись значений 'UINT AnyValues' в 'iec104_UINT_wr_W'.'Значение' Чтение из 'iec104_UINT_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_UDINT_wr_W'.'Значение' Чтение из 'iec104_UDINT_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_ULINT_wr_W'.'Значение' Чтение из 'iec104_ULINT_wr_R'
	Then Проверка запись значений 'REAL AnyValues' в 'iec104_REAL_wr_W'.'Значение' Чтение из 'iec104_REAL_wr_R'
	Then Проверка запись значений 'REAL AnyValues' в 'iec104_LREAL_wr_W'.'Значение' Чтение из 'iec104_LREAL_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_TIME_wr_W'.'Значение' Чтение из 'iec104_TIME_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_DATE_wr_W'.'Значение' Чтение из 'iec104_DATE_wr_R'

	@fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteПроверка_Quality
	@critical
    Scenario: GwEx1Proxy.iec104_GoodQual
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
    Then Проверка Runtime качества 'Good' переменной 'iec104_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'iec104_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DATE_const'.'Значение'

    @fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx1Proxy.iec104_ReadWrite
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
	Then Проверка запись значений 'TRUE; FALSE' в 'iec104_BOOL_wr_W'.'Значение' Чтение из 'iec104_BOOL_wr_R'
	Then Проверка запись значений 'BYTE AnyValues' в 'iec104_BYTE_wr_W'.'Значение' Чтение из 'iec104_BYTE_wr_R'
	Then Проверка запись значений '1; 0x7F00; 0x7FFF' в 'iec104_WORD_wr_W'.'Значение' Чтение из 'iec104_WORD_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_DWORD_wr_W'.'Значение' Чтение из 'iec104_DWORD_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_LWORD_wr_W'.'Значение' Чтение из 'iec104_LWORD_wr_R'
	Then Проверка запись значений 'SINT AnyValues' в 'iec104_SINT_wr_W'.'Значение' Чтение из 'iec104_SINT_wr_R'
	Then Проверка запись значений 'INT AnyValues' в 'iec104_INT_wr_W'.'Значение' Чтение из 'iec104_INT_wr_R'
	Then Проверка запись значений 'FLOAT Like INT' в 'iec104_DINT_wr_W'.'Значение' Чтение из 'iec104_DINT_wr_R'
	Then Проверка запись значений 'FLOAT Like INT' в 'iec104_LINT_wr_W'.'Значение' Чтение из 'iec104_LINT_wr_R'
	Then Проверка запись значений 'USINT AnyValues' в 'iec104_USINT_wr_W'.'Значение' Чтение из 'iec104_USINT_wr_R'
	Then Проверка запись значений 'UINT AnyValues' в 'iec104_UINT_wr_W'.'Значение' Чтение из 'iec104_UINT_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_UDINT_wr_W'.'Значение' Чтение из 'iec104_UDINT_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_ULINT_wr_W'.'Значение' Чтение из 'iec104_ULINT_wr_R'
	Then Проверка запись значений 'REAL AnyValues' в 'iec104_REAL_wr_W'.'Значение' Чтение из 'iec104_REAL_wr_R'
	Then Проверка запись значений 'REAL AnyValues' в 'iec104_LREAL_wr_W'.'Значение' Чтение из 'iec104_LREAL_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_TIME_wr_W'.'Значение' Чтение из 'iec104_TIME_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_DATE_wr_W'.'Значение' Чтение из 'iec104_DATE_wr_R'

	@ignore
	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx1Proxy.iec104_WiteList
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
	Then Проверка записи 'iec104_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_DATE_wr'.'Значение' не в белом списке


	@fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteПроверка_Quality
	@critical
    Scenario: GwEx2Proxy.iec104_GoodQual
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
    Then Проверка Runtime качества 'Good' переменной 'iec104_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'iec104_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DATE_const'.'Значение'

    @fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx2Proxy.iec104_ReadWrite
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
	Then Проверка запись значений 'TRUE; FALSE' в 'iec104_BOOL_wr_W'.'Значение' Чтение из 'iec104_BOOL_wr_R'
	Then Проверка запись значений 'BYTE AnyValues' в 'iec104_BYTE_wr_W'.'Значение' Чтение из 'iec104_BYTE_wr_R'
	Then Проверка запись значений '1; 0x7F00; 0x7FFF' в 'iec104_WORD_wr_W'.'Значение' Чтение из 'iec104_WORD_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_DWORD_wr_W'.'Значение' Чтение из 'iec104_DWORD_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_LWORD_wr_W'.'Значение' Чтение из 'iec104_LWORD_wr_R'
	Then Проверка запись значений 'SINT AnyValues' в 'iec104_SINT_wr_W'.'Значение' Чтение из 'iec104_SINT_wr_R'
	Then Проверка запись значений 'INT AnyValues' в 'iec104_INT_wr_W'.'Значение' Чтение из 'iec104_INT_wr_R'
	Then Проверка запись значений 'FLOAT Like INT' в 'iec104_DINT_wr_W'.'Значение' Чтение из 'iec104_DINT_wr_R'
	Then Проверка запись значений 'FLOAT Like INT' в 'iec104_LINT_wr_W'.'Значение' Чтение из 'iec104_LINT_wr_R'
	Then Проверка запись значений 'USINT AnyValues' в 'iec104_USINT_wr_W'.'Значение' Чтение из 'iec104_USINT_wr_R'
	Then Проверка запись значений 'UINT AnyValues' в 'iec104_UINT_wr_W'.'Значение' Чтение из 'iec104_UINT_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_UDINT_wr_W'.'Значение' Чтение из 'iec104_UDINT_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_ULINT_wr_W'.'Значение' Чтение из 'iec104_ULINT_wr_R'
	Then Проверка запись значений 'REAL AnyValues' в 'iec104_REAL_wr_W'.'Значение' Чтение из 'iec104_REAL_wr_R'
	Then Проверка запись значений 'REAL AnyValues' в 'iec104_LREAL_wr_W'.'Значение' Чтение из 'iec104_LREAL_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_TIME_wr_W'.'Значение' Чтение из 'iec104_TIME_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_DATE_wr_W'.'Значение' Чтение из 'iec104_DATE_wr_R'

	@ignore
	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx2Proxy.iec104_WiteList
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
	Then Проверка записи 'iec104_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_DATE_wr'.'Значение' не в белом списке

	@fromMirror  @fromGate
	@EpicTimeStamp	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer @suiteTimeStamp
    Scenario: OpcUAServer.iec104_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'iec104_sporadic' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'OPC_UA_1' в норме
	When Чтение исходных архивных данных 'Iec104_VAR_bool'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_byte'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_BYTE'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_word'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_WORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_dword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_DWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_lword'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_LWORD'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_sint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_SINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_int'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_INT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_dint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_lint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_LINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_usint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_USINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_uint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_UINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_udint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_UDINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_ulint'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_ULINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_real'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_lreal'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_LREAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_time'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_TIME'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Iec104_VAR_date'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec104_DATE'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteПроверка_Quality
	@critical
    Scenario: OpcUAServer.iec104_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'iec104_sporadic' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
    Then Проверка Runtime качества 'Good' переменной 'iec104_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_BYTE_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_WORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LWORD_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_SINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_INT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_USINT_const'.'Значение'
	Then Проверка Runtime качества 'Good' переменной 'iec104_UINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_UDINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_ULINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_REAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_LREAL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_TIME_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec104_DATE_const'.'Значение'

    @fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: OpcUAServer.iec104_ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'iec104_sporadic' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
	Then Проверка запись значений 'TRUE; FALSE' в 'iec104_BOOL_wr_W'.'Значение' Чтение из 'iec104_BOOL_wr_R'
	Then Проверка запись значений 'BYTE AnyValues' в 'iec104_BYTE_wr_W'.'Значение' Чтение из 'iec104_BYTE_wr_R'
	Then Проверка запись значений '1; 0x7F00; 0x7FFF' в 'iec104_WORD_wr_W'.'Значение' Чтение из 'iec104_WORD_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_DWORD_wr_W'.'Значение' Чтение из 'iec104_DWORD_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_LWORD_wr_W'.'Значение' Чтение из 'iec104_LWORD_wr_R'
	Then Проверка запись значений 'SINT AnyValues' в 'iec104_SINT_wr_W'.'Значение' Чтение из 'iec104_SINT_wr_R'
	Then Проверка запись значений 'INT AnyValues' в 'iec104_INT_wr_W'.'Значение' Чтение из 'iec104_INT_wr_R'
	Then Проверка запись значений 'FLOAT Like INT' в 'iec104_DINT_wr_W'.'Значение' Чтение из 'iec104_DINT_wr_R'
	Then Проверка запись значений 'FLOAT Like INT' в 'iec104_LINT_wr_W'.'Значение' Чтение из 'iec104_LINT_wr_R'
	Then Проверка запись значений 'USINT AnyValues' в 'iec104_USINT_wr_W'.'Значение' Чтение из 'iec104_USINT_wr_R'
	Then Проверка запись значений 'UINT AnyValues' в 'iec104_UINT_wr_W'.'Значение' Чтение из 'iec104_UINT_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_UDINT_wr_W'.'Значение' Чтение из 'iec104_UDINT_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_ULINT_wr_W'.'Значение' Чтение из 'iec104_ULINT_wr_R'
	Then Проверка запись значений 'REAL AnyValues' в 'iec104_REAL_wr_W'.'Значение' Чтение из 'iec104_REAL_wr_R'
	Then Проверка запись значений 'REAL AnyValues' в 'iec104_LREAL_wr_W'.'Значение' Чтение из 'iec104_LREAL_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_TIME_wr_W'.'Значение' Чтение из 'iec104_TIME_wr_R'
	Then Проверка запись значений 'FLOAT Like UINT' в 'iec104_DATE_wr_W'.'Значение' Чтение из 'iec104_DATE_wr_R'

	@ignore
	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: OpcUAServer.iec104_WiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'iec104_sporadic' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
	Then Проверка записи 'iec104_BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_WORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_DWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_LWORD_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_SINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_INT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_DINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_LINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_USINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_UINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_UDINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_ULINT_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_REAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_LREAL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_TIME_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec104_DATE_wr'.'Значение' не в белом списке