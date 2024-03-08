Feature: MKO_CPU715_P06


	# Runtime-тест работы МКО
	# Источник - cpu715_Red, приёмник - TeconikP06
	@EpicМКО/МРО
	@parentSuiteРасширенный_функционал_ПЛК @suiteМКО/МРО @subSuiteCPU715_TeconikP06
	@critical
	Scenario: MKO_cpu715Red_TeconikP06_RuntimeCheak

	# Сравнение полученных на TeconikP06 переменных с источником
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'TeconikP06' в норме

	Then Сравниваю значение 'MKO_P06_CPU715_BOOL'.'' с 'cpu715_Red'.'resVar_BOOL'.''
	Then Сравниваю значение 'MKO_P06_CPU715_BYTE'.'' с 'cpu715_Red'.'resVar_BYTE'.''
	Then Сравниваю значение 'MKO_P06_CPU715_DATE'.'' с 'cpu715_Red'.'resVar_DATE'.''
	Then Сравниваю значение 'MKO_P06_CPU715_DINT'.'' с 'cpu715_Red'.'resVar_DINT'.''
	Then Сравниваю значение 'MKO_P06_CPU715_DWORD'.'' с 'cpu715_Red'.'resVar_DWORD'.''
	Then Сравниваю значение 'MKO_P06_CPU715_INT'.'' с 'cpu715_Red'.'resVar_INT'.''
	Then Сравниваю значение 'MKO_P06_CPU715_LINT'.'' с 'cpu715_Red'.'resVar_LINT'.''
	Then Сравниваю значение 'MKO_P06_CPU715_LREAL'.'' с 'cpu715_Red'.'resVar_LREAL'.''
	Then Сравниваю значение 'MKO_P06_CPU715_LWORD'.'' с 'cpu715_Red'.'resVar_LWORD'.''
	Then Сравниваю значение 'MKO_P06_CPU715_REAL'.'' с 'cpu715_Red'.'resVar_REAL'.''
	Then Сравниваю значение 'MKO_P06_CPU715_SINT'.'' с 'cpu715_Red'.'resVar_SINT'.''
	Then Сравниваю значение 'MKO_P06_CPU715_TIME'.'' с 'cpu715_Red'.'resVar_TIME'.''
	Then Сравниваю значение 'MKO_P06_CPU715_UDINT'.'' с 'cpu715_Red'.'resVar_UDINT'.''
	Then Сравниваю значение 'MKO_P06_CPU715_UINT'.'' с 'cpu715_Red'.'resVar_UINT'.''
	Then Сравниваю значение 'MKO_P06_CPU715_ULINT'.'' с 'cpu715_Red'.'resVar_ULINT'.''
	Then Сравниваю значение 'MKO_P06_CPU715_USINT'.'' с 'cpu715_Red'.'resVar_USINT'.''
	Then Сравниваю значение 'MKO_P06_CPU715_WORD'.'' с 'cpu715_Red'.'resVar_WORD'.''

	# Сравнение вернувшихся на cpu715_Red переменных с источником
	Given Связь с устройством 'cpu715_Red' в норме

	Then Сравниваю значение 'MKO_CPU715_P06_CONTROL_BOOL'.'' с 'cpu715_Red'.'resVar_BOOL'.''
	Then Сравниваю значение 'MKO_CPU715_P06_CONTROL_BYTE'.'' с 'cpu715_Red'.'resVar_BYTE'.''
	Then Сравниваю значение 'MKO_CPU715_P06_CONTROL_DATE'.'' с 'cpu715_Red'.'resVar_DATE'.''
	Then Сравниваю значение 'MKO_CPU715_P06_CONTROL_DINT'.'' с 'cpu715_Red'.'resVar_DINT'.''
	Then Сравниваю значение 'MKO_CPU715_P06_CONTROL_DWORD'.'' с 'cpu715_Red'.'resVar_DWORD'.''
	Then Сравниваю значение 'MKO_CPU715_P06_CONTROL_INT'.'' с 'cpu715_Red'.'resVar_INT'.''
	Then Сравниваю значение 'MKO_CPU715_P06_CONTROL_LINT'.'' с 'cpu715_Red'.'resVar_LINT'.''
	Then Сравниваю значение 'MKO_CPU715_P06_CONTROL_LREAL'.'' с 'cpu715_Red'.'resVar_LREAL'.''
	Then Сравниваю значение 'MKO_CPU715_P06_CONTROL_LWORD'.'' с 'cpu715_Red'.'resVar_LWORD'.''
	Then Сравниваю значение 'MKO_CPU715_P06_CONTROL_REAL'.'' с 'cpu715_Red'.'resVar_REAL'.''
	Then Сравниваю значение 'MKO_CPU715_P06_CONTROL_SINT'.'' с 'cpu715_Red'.'resVar_SINT'.''
	Then Сравниваю значение 'MKO_CPU715_P06_CONTROL_TIME'.'' с 'cpu715_Red'.'resVar_TIME'.''
	Then Сравниваю значение 'MKO_CPU715_P06_CONTROL_UDINT'.'' с 'cpu715_Red'.'resVar_UDINT'.''
	Then Сравниваю значение 'MKO_CPU715_P06_CONTROL_UINT'.'' с 'cpu715_Red'.'resVar_UINT'.''
	Then Сравниваю значение 'MKO_CPU715_P06_CONTROL_ULINT'.'' с 'cpu715_Red'.'resVar_ULINT'.''
	Then Сравниваю значение 'MKO_CPU715_P06_CONTROL_USINT'.'' с 'cpu715_Red'.'resVar_USINT'.''
	Then Сравниваю значение 'MKO_CPU715_P06_CONTROL_WORD'.'' с 'cpu715_Red'.'resVar_WORD'.''


	# Тест архивных данных работы МКО
	# Источник - Архив 1/cpu715_Red, приёмник - Архив 2/TeconikP06
	@EpicМКО/МРО
	@parentSuiteРасширенный_функционал_ПЛК @suiteМКО/МРО @subSuiteCPU715_TeconikP06
	@critical
	Scenario: MKO_cpu715Red_TeconikP06_ArchiveCheck

	# Сравнение архивных данных полученных на cpu715_Red переменных с архивными данными источника
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Red' в норме
	Given Соединение с 1 Архивом 'ArcWork'
	Given Связь с устройством 'TeconikP06' в норме
	Given Соединение с 2 Архивом 'ArcWork'

	Then Сравнение архивных данных 'MKO_P06_CPU715_BOOL'.'' с 'cpu715_Red'.'resVar_BOOL'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715_BYTE'.'' с 'cpu715_Red'.'resVar_BYTE'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715_DATE'.'' с 'cpu715_Red'.'resVar_DATE'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715_DINT'.'' с 'cpu715_Red'.'resVar_DINT'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715_DWORD'.'' с 'cpu715_Red'.'resVar_DWORD'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715_INT'.'' с 'cpu715_Red'.'resVar_INT'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715_LINT'.'' с 'cpu715_Red'.'resVar_LINT'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715_LREAL'.'' с 'cpu715_Red'.'resVar_LREAL'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715_LWORD'.'' с 'cpu715_Red'.'resVar_LWORD'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715_REAL'.'' с 'cpu715_Red'.'resVar_REAL'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715_SINT'.'' с 'cpu715_Red'.'resVar_SINT'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715_TIME'.'' с 'cpu715_Red'.'resVar_TIME'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715_UDINT'.'' с 'cpu715_Red'.'resVar_UDINT'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715_UINT'.'' с 'cpu715_Red'.'resVar_UINT'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715_ULINT'.'' с 'cpu715_Red'.'resVar_ULINT'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715_USINT'.'' с 'cpu715_Red'.'resVar_USINT'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715_WORD'.'' с 'cpu715_Red'.'resVar_WORD'.''

	# Сравнение архивных данных вернувшихся на cpu715_Red переменных с архивными данными источника
	Given Связь с устройством 'cpu715_Red' в норме

	Then Сравнение архивных данных 'MKO_CPU715_P06_CONTROL_BOOL'.'' с 'cpu715_Red'.'resVar_BOOL'.''
	Then Сравнение архивных данных 'MKO_CPU715_P06_CONTROL_BYTE'.'' с 'cpu715_Red'.'resVar_BYTE'.''
	Then Сравнение архивных данных 'MKO_CPU715_P06_CONTROL_DATE'.'' с 'cpu715_Red'.'resVar_DATE'.''
	Then Сравнение архивных данных 'MKO_CPU715_P06_CONTROL_DINT'.'' с 'cpu715_Red'.'resVar_DINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_P06_CONTROL_DWORD'.'' с 'cpu715_Red'.'resVar_DWORD'.''
	Then Сравнение архивных данных 'MKO_CPU715_P06_CONTROL_INT'.'' с 'cpu715_Red'.'resVar_INT'.''
	Then Сравнение архивных данных 'MKO_CPU715_P06_CONTROL_LINT'.'' с 'cpu715_Red'.'resVar_LINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_P06_CONTROL_LREAL'.'' с 'cpu715_Red'.'resVar_LREAL'.''
	Then Сравнение архивных данных 'MKO_CPU715_P06_CONTROL_LWORD'.'' с 'cpu715_Red'.'resVar_LWORD'.''
	Then Сравнение архивных данных 'MKO_CPU715_P06_CONTROL_REAL'.'' с 'cpu715_Red'.'resVar_REAL'.''
	Then Сравнение архивных данных 'MKO_CPU715_P06_CONTROL_SINT'.'' с 'cpu715_Red'.'resVar_SINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_P06_CONTROL_TIME'.'' с 'cpu715_Red'.'resVar_TIME'.''
	Then Сравнение архивных данных 'MKO_CPU715_P06_CONTROL_UDINT'.'' с 'cpu715_Red'.'resVar_UDINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_P06_CONTROL_UINT'.'' с 'cpu715_Red'.'resVar_UINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_P06_CONTROL_ULINT'.'' с 'cpu715_Red'.'resVar_ULINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_P06_CONTROL_USINT'.'' с 'cpu715_Red'.'resVar_USINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_P06_CONTROL_WORD'.'' с 'cpu715_Red'.'resVar_WORD'.''


	# Тест ошибок работы МКО
	# Источник - cpu715_Red
	@EpicМКО/МРО
	@parentSuiteРасширенный_функционал_ПЛК @suiteМКО/МРО @subSuiteCPU715_TeconikP06
	@critical
	Scenario: MKO_cpu715Red_TeconikP06_ErrorCheck

	# Анализ показателя ошибок на cpu715_Red
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Red' в норме

	Then Сравниваю значение 'CPU715_P06_ERRORCNT'.'' с допустимым '5'