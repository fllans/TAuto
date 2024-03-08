Feature: MKO_CPU715i_P06


	# Runtime-тест работы МКО
	# Источник - cpu715_LI_Red, приёмник - TeconikP06
	@EpicМКО/МРО
	@parentSuiteРасширенный_функционал_ПЛК @suiteМКО/МРО @subSuiteCPU715i_TeconikP06
	@critical
	Scenario: MKO_cpu715Li_TeconikP06_RuntimeCheak

	# Сравнение полученных на TeconikP06 переменных с источником
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'TeconikP06' в норме

	Then Сравниваю значение 'MKO_P06_CPU715i_BOOL'.'' с 'cpu715_LI_Red'.'resVar_BOOL'.''
	Then Сравниваю значение 'MKO_P06_CPU715i_BYTE'.'' с 'cpu715_LI_Red'.'resVar_BYTE'.''
	Then Сравниваю значение 'MKO_P06_CPU715i_DATE'.'' с 'cpu715_LI_Red'.'resVar_DATE'.''
	Then Сравниваю значение 'MKO_P06_CPU715i_DINT'.'' с 'cpu715_LI_Red'.'resVar_DINT'.''
	Then Сравниваю значение 'MKO_P06_CPU715i_DWORD'.'' с 'cpu715_LI_Red'.'resVar_DWORD'.''
	Then Сравниваю значение 'MKO_P06_CPU715i_INT'.'' с 'cpu715_LI_Red'.'resVar_INT'.''
	Then Сравниваю значение 'MKO_P06_CPU715i_LINT'.'' с 'cpu715_LI_Red'.'resVar_LINT'.''
	Then Сравниваю значение 'MKO_P06_CPU715i_LREAL'.'' с 'cpu715_LI_Red'.'resVar_LREAL'.''
	Then Сравниваю значение 'MKO_P06_CPU715i_LWORD'.'' с 'cpu715_LI_Red'.'resVar_LWORD'.''
	Then Сравниваю значение 'MKO_P06_CPU715i_REAL'.'' с 'cpu715_LI_Red'.'resVar_REAL'.''
	Then Сравниваю значение 'MKO_P06_CPU715i_SINT'.'' с 'cpu715_LI_Red'.'resVar_SINT'.''
	Then Сравниваю значение 'MKO_P06_CPU715i_TIME'.'' с 'cpu715_LI_Red'.'resVar_TIME'.''
	Then Сравниваю значение 'MKO_P06_CPU715i_UDINT'.'' с 'cpu715_LI_Red'.'resVar_UDINT'.''
	Then Сравниваю значение 'MKO_P06_CPU715i_UINT'.'' с 'cpu715_LI_Red'.'resVar_UINT'.''
	Then Сравниваю значение 'MKO_P06_CPU715i_ULINT'.'' с 'cpu715_LI_Red'.'resVar_ULINT'.''
	Then Сравниваю значение 'MKO_P06_CPU715i_USINT'.'' с 'cpu715_LI_Red'.'resVar_USINT'.''
	Then Сравниваю значение 'MKO_P06_CPU715i_WORD'.'' с 'cpu715_LI_Red'.'resVar_WORD'.''

	# Сравнение вернувшихся на cpu715_LI_Red переменных с источником
	Given Связь с устройством 'cpu715_LI_Red' в норме

	Then Сравниваю значение 'MKO_CPU715i_P06_CONTROL_BOOL'.'' с 'cpu715_LI_Red'.'resVar_BOOL'.''
	Then Сравниваю значение 'MKO_CPU715i_P06_CONTROL_BYTE'.'' с 'cpu715_LI_Red'.'resVar_BYTE'.''
	Then Сравниваю значение 'MKO_CPU715i_P06_CONTROL_DATE'.'' с 'cpu715_LI_Red'.'resVar_DATE'.''
	Then Сравниваю значение 'MKO_CPU715i_P06_CONTROL_DINT'.'' с 'cpu715_LI_Red'.'resVar_DINT'.''
	Then Сравниваю значение 'MKO_CPU715i_P06_CONTROL_DWORD'.'' с 'cpu715_LI_Red'.'resVar_DWORD'.''
	Then Сравниваю значение 'MKO_CPU715i_P06_CONTROL_INT'.'' с 'cpu715_LI_Red'.'resVar_INT'.''
	Then Сравниваю значение 'MKO_CPU715i_P06_CONTROL_LINT'.'' с 'cpu715_LI_Red'.'resVar_LINT'.''
	Then Сравниваю значение 'MKO_CPU715i_P06_CONTROL_LREAL'.'' с 'cpu715_LI_Red'.'resVar_LREAL'.''
	Then Сравниваю значение 'MKO_CPU715i_P06_CONTROL_LWORD'.'' с 'cpu715_LI_Red'.'resVar_LWORD'.''
	Then Сравниваю значение 'MKO_CPU715i_P06_CONTROL_REAL'.'' с 'cpu715_LI_Red'.'resVar_REAL'.''
	Then Сравниваю значение 'MKO_CPU715i_P06_CONTROL_SINT'.'' с 'cpu715_LI_Red'.'resVar_SINT'.''
	Then Сравниваю значение 'MKO_CPU715i_P06_CONTROL_TIME'.'' с 'cpu715_LI_Red'.'resVar_TIME'.''
	Then Сравниваю значение 'MKO_CPU715i_P06_CONTROL_UDINT'.'' с 'cpu715_LI_Red'.'resVar_UDINT'.''
	Then Сравниваю значение 'MKO_CPU715i_P06_CONTROL_UINT'.'' с 'cpu715_LI_Red'.'resVar_UINT'.''
	Then Сравниваю значение 'MKO_CPU715i_P06_CONTROL_ULINT'.'' с 'cpu715_LI_Red'.'resVar_ULINT'.''
	Then Сравниваю значение 'MKO_CPU715i_P06_CONTROL_USINT'.'' с 'cpu715_LI_Red'.'resVar_USINT'.''
	Then Сравниваю значение 'MKO_CPU715i_P06_CONTROL_WORD'.'' с 'cpu715_LI_Red'.'resVar_WORD'.''


	# Тест архивных данных работы МКО
	# Источник - Архив 1/cpu715_LI_Red, приёмник - Архив 2/TeconikP06
	@EpicМКО/МРО
	@parentSuiteРасширенный_функционал_ПЛК @suiteМКО/МРО @subSuiteCPU715i_TeconikP06
	@critical
	Scenario: MKO_cpu715Li_TeconikP06_ArchiveCheck

	# Сравнение архивных данных полученных на cpu715_LI_Red переменных с архивными данными источника
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_LI_Red' в норме
	Given Соединение с 1 Архивом 'ArcWork'
	Given Связь с устройством 'TeconikP06' в норме
	Given Соединение с 2 Архивом 'ArcWork'

	Then Сравнение архивных данных 'MKO_P06_CPU715i_BOOL'.'' с 'cpu715_LI_Red'.'resVar_BOOL'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715i_BYTE'.'' с 'cpu715_LI_Red'.'resVar_BYTE'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715i_DATE'.'' с 'cpu715_LI_Red'.'resVar_DATE'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715i_DINT'.'' с 'cpu715_LI_Red'.'resVar_DINT'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715i_DWORD'.'' с 'cpu715_LI_Red'.'resVar_DWORD'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715i_INT'.'' с 'cpu715_LI_Red'.'resVar_INT'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715i_LINT'.'' с 'cpu715_LI_Red'.'resVar_LINT'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715i_LREAL'.'' с 'cpu715_LI_Red'.'resVar_LREAL'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715i_LWORD'.'' с 'cpu715_LI_Red'.'resVar_LWORD'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715i_REAL'.'' с 'cpu715_LI_Red'.'resVar_REAL'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715i_SINT'.'' с 'cpu715_LI_Red'.'resVar_SINT'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715i_TIME'.'' с 'cpu715_LI_Red'.'resVar_TIME'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715i_UDINT'.'' с 'cpu715_LI_Red'.'resVar_UDINT'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715i_UINT'.'' с 'cpu715_LI_Red'.'resVar_UINT'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715i_ULINT'.'' с 'cpu715_LI_Red'.'resVar_ULINT'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715i_USINT'.'' с 'cpu715_LI_Red'.'resVar_USINT'.''
	Then Сравнение архивных данных 'MKO_P06_CPU715i_WORD'.'' с 'cpu715_LI_Red'.'resVar_WORD'.''

	# Сравнение архивных данных вернувшихся на cpu715_LI_Red переменных с архивными данными источника
	Given Связь с устройством 'cpu715_LI_Red' в норме

	Then Сравнение архивных данных 'MKO_CPU715i_P06_CONTROL_BOOL'.'' с 'cpu715_LI_Red'.'resVar_BOOL'.''
	Then Сравнение архивных данных 'MKO_CPU715i_P06_CONTROL_BYTE'.'' с 'cpu715_LI_Red'.'resVar_BYTE'.''
	Then Сравнение архивных данных 'MKO_CPU715i_P06_CONTROL_DATE'.'' с 'cpu715_LI_Red'.'resVar_DATE'.''
	Then Сравнение архивных данных 'MKO_CPU715i_P06_CONTROL_DINT'.'' с 'cpu715_LI_Red'.'resVar_DINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_P06_CONTROL_DWORD'.'' с 'cpu715_LI_Red'.'resVar_DWORD'.''
	Then Сравнение архивных данных 'MKO_CPU715i_P06_CONTROL_INT'.'' с 'cpu715_LI_Red'.'resVar_INT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_P06_CONTROL_LINT'.'' с 'cpu715_LI_Red'.'resVar_LINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_P06_CONTROL_LREAL'.'' с 'cpu715_LI_Red'.'resVar_LREAL'.''
	Then Сравнение архивных данных 'MKO_CPU715i_P06_CONTROL_LWORD'.'' с 'cpu715_LI_Red'.'resVar_LWORD'.''
	Then Сравнение архивных данных 'MKO_CPU715i_P06_CONTROL_REAL'.'' с 'cpu715_LI_Red'.'resVar_REAL'.''
	Then Сравнение архивных данных 'MKO_CPU715i_P06_CONTROL_SINT'.'' с 'cpu715_LI_Red'.'resVar_SINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_P06_CONTROL_TIME'.'' с 'cpu715_LI_Red'.'resVar_TIME'.''
	Then Сравнение архивных данных 'MKO_CPU715i_P06_CONTROL_UDINT'.'' с 'cpu715_LI_Red'.'resVar_UDINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_P06_CONTROL_UINT'.'' с 'cpu715_LI_Red'.'resVar_UINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_P06_CONTROL_ULINT'.'' с 'cpu715_LI_Red'.'resVar_ULINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_P06_CONTROL_USINT'.'' с 'cpu715_LI_Red'.'resVar_USINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_P06_CONTROL_WORD'.'' с 'cpu715_LI_Red'.'resVar_WORD'.''


	# Тест ошибок работы МКО
	# Источник - cpu715_LI_Red
	@EpicМКО/МРО
	@parentSuiteРасширенный_функционал_ПЛК @suiteМКО/МРО @subSuiteCPU715i_TeconikP06
	@critical
	Scenario: MKO_cpu715Li_TeconikP06_ErrorCheck

	# Анализ показателя ошибок на cpu715_LI_Red
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_LI_Red' в норме

	Then Сравниваю значение 'CPU715i_P06_ERRORCNT'.'' с допустимым '5'