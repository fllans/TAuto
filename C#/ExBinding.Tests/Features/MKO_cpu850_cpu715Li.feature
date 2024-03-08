Feature: MKO_CPU850_CPU715i


	# Runtime-тест работы МКО
	# Источник - CPU850_RED, приёмник - cpu715_LI_Red
	@EpicМКО/МРО
	@parentSuiteРасширенный_функционал_ПЛК @suiteМКО/МРО @subSuiteCPU850_CPU715i
	@critical
	Scenario: MKO_cpu850Red_cpu715Li_RuntimeCheak

	# Сравнение полученных на cpu715_LI_Red переменных с источником
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_LI_Red' в норме

	Then Сравниваю значение 'MKO_CPU715i_CPU850_SF_BOOL'.'' с 'CPU850_RED'.'resVar_BOOL'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_SF_DINT'.'' с 'CPU850_RED'.'resVar_DINT'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_SF_INT'.'' с 'CPU850_RED'.'resVar_INT'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_SF_LINT'.'' с 'CPU850_RED'.'resVar_LINT'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_SF_LREAL'.'' с 'CPU850_RED'.'resVar_LREAL'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_SF_REAL'.'' с 'CPU850_RED'.'resVar_REAL'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_SF_SINT'.'' с 'CPU850_RED'.'resVar_SINT'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_SF_UDINT'.'' с 'CPU850_RED'.'resVar_UDINT'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_SF_UINT'.'' с 'CPU850_RED'.'resVar_UINT'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_SF_ULINT'.'' с 'CPU850_RED'.'resVar_ULINT'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_SF_USINT'.'' с 'CPU850_RED'.'resVar_USINT'.''

	Then Сравниваю значение 'MKO_CPU715i_CPU850_RT_BOOL'.'' с 'CPU850_RED'.'RT_resVar_BOOL'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_RT_DINT'.'' с 'CPU850_RED'.'RT_resVar_DINT'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_RT_INT'.'' с 'CPU850_RED'.'RT_resVar_INT'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_RT_LINT'.'' с 'CPU850_RED'.'RT_resVar_LINT'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_RT_LREAL'.'' с 'CPU850_RED'.'RT_resVar_LREAL'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_RT_REAL'.'' с 'CPU850_RED'.'RT_resVar_REAL'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_RT_SINT'.'' с 'CPU850_RED'.'RT_resVar_SINT'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_RT_UDINT'.'' с 'CPU850_RED'.'RT_resVar_UDINT'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_RT_UINT'.'' с 'CPU850_RED'.'RT_resVar_UINT'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_RT_ULINT'.'' с 'CPU850_RED'.'RT_resVar_ULINT'.''
	Then Сравниваю значение 'MKO_CPU715i_CPU850_RT_USINT'.'' с 'CPU850_RED'.'RT_resVar_USINT'.''

	# Сравнение вернувшихся на CPU850_RED переменных с источником
	Given Связь с устройством 'CPU850_RED' в норме

	Then Сравниваю значение 'MKO_CPU850_CPU715i_SF_CONTROL_BOOL'.'' с 'CPU850_RED'.'resVar_BOOL'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_SF_CONTROL_DINT'.'' с 'CPU850_RED'.'resVar_DINT'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_SF_CONTROL_INT'.'' с 'CPU850_RED'.'resVar_INT'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_SF_CONTROL_LINT'.'' с 'CPU850_RED'.'resVar_LINT'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_SF_CONTROL_LREAL'.'' с 'CPU850_RED'.'resVar_LREAL'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_SF_CONTROL_REAL'.'' с 'CPU850_RED'.'resVar_REAL'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_SF_CONTROL_SINT'.'' с 'CPU850_RED'.'resVar_SINT'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_SF_CONTROL_UDINT'.'' с 'CPU850_RED'.'resVar_UDINT'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_SF_CONTROL_UINT'.'' с 'CPU850_RED'.'resVar_UINT'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_SF_CONTROL_ULINT'.'' с 'CPU850_RED'.'resVar_ULINT'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_SF_CONTROL_USINT'.'' с 'CPU850_RED'.'resVar_USINT'.''

	Then Сравниваю значение 'MKO_CPU850_CPU715i_RT_CONTROL_BOOL'.'' с 'CPU850_RED'.'RT_resVar_BOOL'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_RT_CONTROL_DINT'.'' с 'CPU850_RED'.'RT_resVar_DINT'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_RT_CONTROL_INT'.'' с 'CPU850_RED'.'RT_resVar_INT'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_RT_CONTROL_LINT'.'' с 'CPU850_RED'.'RT_resVar_LINT'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_RT_CONTROL_LREAL'.'' с 'CPU850_RED'.'RT_resVar_LREAL'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_RT_CONTROL_REAL'.'' с 'CPU850_RED'.'RT_resVar_REAL'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_RT_CONTROL_SINT'.'' с 'CPU850_RED'.'RT_resVar_SINT'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_RT_CONTROL_UDINT'.'' с 'CPU850_RED'.'RT_resVar_UDINT'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_RT_CONTROL_UINT'.'' с 'CPU850_RED'.'RT_resVar_UINT'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_RT_CONTROL_ULINT'.'' с 'CPU850_RED'.'RT_resVar_ULINT'.''
	Then Сравниваю значение 'MKO_CPU850_CPU715i_RT_CONTROL_USINT'.'' с 'CPU850_RED'.'RT_resVar_USINT'.''


	# Тест архивных данных работы МКО
	# Источник - Архив 1/CPU850_RED, приёмник - Архив 2/cpu715_LI_Red
	@EpicМКО/МРО
	@parentSuiteРасширенный_функционал_ПЛК @suiteМКО/МРО @subSuiteCPU850_CPU715i
	@critical
	Scenario: MKO_cpu850Red_cpu715Li_ArchiveCheck

	# Сравнение архивных данных полученных на cpu715_LI_Red переменных с архивными данными источника
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'CPU850_RED' в норме
	Given Соединение с 1 Архивом 'ArcWork'
	Given Связь с устройством 'cpu715_LI_Red' в норме
	Given Соединение с 2 Архивом 'ArcWork'

	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_SF_BOOL'.'' с 'CPU850_RED'.'resVar_BOOL'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_SF_DINT'.'' с 'CPU850_RED'.'resVar_DINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_SF_INT'.'' с 'CPU850_RED'.'resVar_INT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_SF_LINT'.'' с 'CPU850_RED'.'resVar_LINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_SF_LREAL'.'' с 'CPU850_RED'.'resVar_LREAL'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_SF_REAL'.'' с 'CPU850_RED'.'resVar_REAL'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_SF_SINT'.'' с 'CPU850_RED'.'resVar_SINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_SF_UDINT'.'' с 'CPU850_RED'.'resVar_UDINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_SF_UINT'.'' с 'CPU850_RED'.'resVar_UINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_SF_ULINT'.'' с 'CPU850_RED'.'resVar_ULINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_SF_USINT'.'' с 'CPU850_RED'.'resVar_USINT'.''

	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_RT_BOOL'.'' с 'CPU850_RED'.'RT_resVar_BOOL'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_RT_DINT'.'' с 'CPU850_RED'.'RT_resVar_DINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_RT_INT'.'' с 'CPU850_RED'.'RT_resVar_INT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_RT_LINT'.'' с 'CPU850_RED'.'RT_resVar_LINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_RT_LREAL'.'' с 'CPU850_RED'.'RT_resVar_LREAL'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_RT_REAL'.'' с 'CPU850_RED'.'RT_resVar_REAL'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_RT_SINT'.'' с 'CPU850_RED'.'RT_resVar_SINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_RT_UDINT'.'' с 'CPU850_RED'.'RT_resVar_UDINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_RT_UINT'.'' с 'CPU850_RED'.'RT_resVar_UINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_RT_ULINT'.'' с 'CPU850_RED'.'RT_resVar_ULINT'.''
	Then Сравнение архивных данных 'MKO_CPU715i_CPU850_RT_USINT'.'' с 'CPU850_RED'.'RT_resVar_USINT'.''

	# Сравнение архивных данных вернувшихся на CPU850_RED переменных с архивными данными источника
	Given Связь с устройством 'CPU850_RED' в норме

	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_SF_CONTROL_BOOL'.'' с 'CPU850_RED'.'resVar_BOOL'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_SF_CONTROL_DINT'.'' с 'CPU850_RED'.'resVar_DINT'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_SF_CONTROL_INT'.'' с 'CPU850_RED'.'resVar_INT'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_SF_CONTROL_LINT'.'' с 'CPU850_RED'.'resVar_LINT'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_SF_CONTROL_LREAL'.'' с 'CPU850_RED'.'resVar_LREAL'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_SF_CONTROL_REAL'.'' с 'CPU850_RED'.'resVar_REAL'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_SF_CONTROL_SINT'.'' с 'CPU850_RED'.'resVar_SINT'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_SF_CONTROL_UDINT'.'' с 'CPU850_RED'.'resVar_UDINT'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_SF_CONTROL_UINT'.'' с 'CPU850_RED'.'resVar_UINT'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_SF_CONTROL_ULINT'.'' с 'CPU850_RED'.'resVar_ULINT'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_SF_CONTROL_USINT'.'' с 'CPU850_RED'.'resVar_USINT'.''

	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_RT_CONTROL_BOOL'.'' с 'CPU850_RED'.'RT_resVar_BOOL'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_RT_CONTROL_DINT'.'' с 'CPU850_RED'.'RT_resVar_DINT'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_RT_CONTROL_INT'.'' с 'CPU850_RED'.'RT_resVar_INT'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_RT_CONTROL_LINT'.'' с 'CPU850_RED'.'RT_resVar_LINT'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_RT_CONTROL_LREAL'.'' с 'CPU850_RED'.'RT_resVar_LREAL'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_RT_CONTROL_REAL'.'' с 'CPU850_RED'.'RT_resVar_REAL'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_RT_CONTROL_SINT'.'' с 'CPU850_RED'.'RT_resVar_SINT'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_RT_CONTROL_UDINT'.'' с 'CPU850_RED'.'RT_resVar_UDINT'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_RT_CONTROL_UINT'.'' с 'CPU850_RED'.'RT_resVar_UINT'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_RT_CONTROL_ULINT'.'' с 'CPU850_RED'.'RT_resVar_ULINT'.''
	Then Сравнение архивных данных 'MKO_CPU850_CPU715i_RT_CONTROL_USINT'.'' с 'CPU850_RED'.'RT_resVar_USINT'.''


	# Тест ошибок работы МКО
	# Источник - CPU850_RED
	@EpicМКО/МРО
	@parentSuiteРасширенный_функционал_ПЛК @suiteМКО/МРО @subSuiteCPU850_CPU715i
	@critical
	Scenario: MKO_cpu850Red_cpu715Li_ErrorCheck

	# Анализ показателя ошибок на CPU850_RED
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'CPU850_RED' в норме

	Then Сравниваю значение 'CPU850_CPU715i_SF_ERRORCNT'.'' с допустимым '3'
	Then Сравниваю значение 'CPU850_CPU715i_RT_ERRORCNT'.'' с допустимым '3'