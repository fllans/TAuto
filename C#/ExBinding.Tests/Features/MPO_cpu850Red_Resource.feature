Feature: MPO_CPU850_RESOURCE


	# Runtime-тест работы МРО
	# Источник - CPU850_RED/RT, приёмник - CPU850_RED/SF
	@EpicМКО/МРО
	@parentSuiteРасширенный_функционал_ПЛК @suiteМКО/МРО @subSuiteCPU850_Resource
	@critical
	Scenario: MPO_cpu850Red_Resource_RuntimeCheak

	# Сравнение полученных на SF-ресурсе CPU850_RED переменных с источником
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'CPU850_RED' в норме

	Then Сравниваю значение 'BIND_LOOP_SF_RT_BOOL'.'' с 'CPU850_RED'.'RT_resVar_BOOL'.''
	Then Сравниваю значение 'BIND_LOOP_SF_RT_BYTE'.'' с 'CPU850_RED'.'RT_resVar_BYTE'.''
	Then Сравниваю значение 'BIND_LOOP_SF_RT_DATE'.'' с 'CPU850_RED'.'RT_resVar_DATE'.''
	Then Сравниваю значение 'BIND_LOOP_SF_RT_DINT'.'' с 'CPU850_RED'.'RT_resVar_DINT'.''
	Then Сравниваю значение 'BIND_LOOP_SF_RT_DWORD'.'' с 'CPU850_RED'.'RT_resVar_DWORD'.''
	Then Сравниваю значение 'BIND_LOOP_SF_RT_INT'.'' с 'CPU850_RED'.'RT_resVar_INT'.''
	Then Сравниваю значение 'BIND_LOOP_SF_RT_LINT'.'' с 'CPU850_RED'.'RT_resVar_LINT'.''
	Then Сравниваю значение 'BIND_LOOP_SF_RT_LREAL'.'' с 'CPU850_RED'.'RT_resVar_LREAL'.''
	Then Сравниваю значение 'BIND_LOOP_SF_RT_LWORD'.'' с 'CPU850_RED'.'RT_resVar_LWORD'.''
	Then Сравниваю значение 'BIND_LOOP_SF_RT_REAL'.'' с 'CPU850_RED'.'RT_resVar_REAL'.''
	Then Сравниваю значение 'BIND_LOOP_SF_RT_SINT'.'' с 'CPU850_RED'.'RT_resVar_SINT'.''
	Then Сравниваю значение 'BIND_LOOP_SF_RT_TIME'.'' с 'CPU850_RED'.'RT_resVar_TIME'.''
	Then Сравниваю значение 'BIND_LOOP_SF_RT_UDINT'.'' с 'CPU850_RED'.'RT_resVar_UDINT'.''
	Then Сравниваю значение 'BIND_LOOP_SF_RT_UINT'.'' с 'CPU850_RED'.'RT_resVar_UINT'.''
	Then Сравниваю значение 'BIND_LOOP_SF_RT_ULINT'.'' с 'CPU850_RED'.'RT_resVar_ULINT'.''
	Then Сравниваю значение 'BIND_LOOP_SF_RT_USINT'.'' с 'CPU850_RED'.'RT_resVar_USINT'.''
	Then Сравниваю значение 'BIND_LOOP_SF_RT_WORD'.'' с 'CPU850_RED'.'RT_resVar_WORD'.''

	# Сравнение вернувшихся на RT-ресурс CPU850_RED переменных с источником
	Then Сравниваю значение 'BIND_CONTROL_BOOL'.'' с 'CPU850_RED'.'RT_resVar_BOOL'.''
	Then Сравниваю значение 'BIND_CONTROL_BYTE'.'' с 'CPU850_RED'.'RT_resVar_BYTE'.''
	Then Сравниваю значение 'BIND_CONTROL_DATE'.'' с 'CPU850_RED'.'RT_resVar_DATE'.''
	Then Сравниваю значение 'BIND_CONTROL_DINT'.'' с 'CPU850_RED'.'RT_resVar_DINT'.''
	Then Сравниваю значение 'BIND_CONTROL_DWORD'.'' с 'CPU850_RED'.'RT_resVar_DWORD'.''
	Then Сравниваю значение 'BIND_CONTROL_INT'.'' с 'CPU850_RED'.'RT_resVar_INT'.''
	Then Сравниваю значение 'BIND_CONTROL_LINT'.'' с 'CPU850_RED'.'RT_resVar_LINT'.''
	Then Сравниваю значение 'BIND_CONTROL_LREAL'.'' с 'CPU850_RED'.'RT_resVar_LREAL'.''
	Then Сравниваю значение 'BIND_CONTROL_LWORD'.'' с 'CPU850_RED'.'RT_resVar_LWORD'.''
	Then Сравниваю значение 'BIND_CONTROL_REAL'.'' с 'CPU850_RED'.'RT_resVar_REAL'.''
	Then Сравниваю значение 'BIND_CONTROL_SINT'.'' с 'CPU850_RED'.'RT_resVar_SINT'.''
	Then Сравниваю значение 'BIND_CONTROL_TIME'.'' с 'CPU850_RED'.'RT_resVar_TIME'.''
	Then Сравниваю значение 'BIND_CONTROL_UDINT'.'' с 'CPU850_RED'.'RT_resVar_UDINT'.''
	Then Сравниваю значение 'BIND_CONTROL_UINT'.'' с 'CPU850_RED'.'RT_resVar_UINT'.''
	Then Сравниваю значение 'BIND_CONTROL_ULINT'.'' с 'CPU850_RED'.'RT_resVar_ULINT'.''
	Then Сравниваю значение 'BIND_CONTROL_USINT'.'' с 'CPU850_RED'.'RT_resVar_USINT'.''
	Then Сравниваю значение 'BIND_CONTROL_WORD'.'' с 'CPU850_RED'.'RT_resVar_WORD'.''


	# Тест архивных данных работы МРО
	# Источник - Архив 1/CPU850_RED/RT, приёмник - Архив 2/CPU850_RED/SF
	@EpicМКО/МРО
	@parentSuiteРасширенный_функционал_ПЛК @suiteМКО/МРО @subSuiteCPU850_Resource
	@critical
	Scenario: MPO_cpu850Red_Resource_ArchiveCheck

	# Сравнение архивных данных полученных на SF-ресурсе CPU850_RED переменных с архивными данными источника
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'CPU850_RED' в норме
	Given Соединение с 1 Архивом 'ArcWork'
	Given Связь с устройством 'CPU850_RED' в норме
	Given Соединение с 2 Архивом 'ArcWork'

	Then Сравнение архивных данных 'BIND_LOOP_SF_RT_BOOL'.'' с 'CPU850_RED'.'RT_resVar_BOOL'.''
	Then Сравнение архивных данных 'BIND_LOOP_SF_RT_BYTE'.'' с 'CPU850_RED'.'RT_resVar_BYTE'.''
	Then Сравнение архивных данных 'BIND_LOOP_SF_RT_DATE'.'' с 'CPU850_RED'.'RT_resVar_DATE'.''
	Then Сравнение архивных данных 'BIND_LOOP_SF_RT_DINT'.'' с 'CPU850_RED'.'RT_resVar_DINT'.''
	Then Сравнение архивных данных 'BIND_LOOP_SF_RT_DWORD'.'' с 'CPU850_RED'.'RT_resVar_DWORD'.''
	Then Сравнение архивных данных 'BIND_LOOP_SF_RT_INT'.'' с 'CPU850_RED'.'RT_resVar_INT'.''
	Then Сравнение архивных данных 'BIND_LOOP_SF_RT_LINT'.'' с 'CPU850_RED'.'RT_resVar_LINT'.''
	Then Сравнение архивных данных 'BIND_LOOP_SF_RT_LREAL'.'' с 'CPU850_RED'.'RT_resVar_LREAL'.''
	Then Сравнение архивных данных 'BIND_LOOP_SF_RT_LWORD'.'' с 'CPU850_RED'.'RT_resVar_LWORD'.''
	Then Сравнение архивных данных 'BIND_LOOP_SF_RT_REAL'.'' с 'CPU850_RED'.'RT_resVar_REAL'.''
	Then Сравнение архивных данных 'BIND_LOOP_SF_RT_SINT'.'' с 'CPU850_RED'.'RT_resVar_SINT'.''
	Then Сравнение архивных данных 'BIND_LOOP_SF_RT_TIME'.'' с 'CPU850_RED'.'RT_resVar_TIME'.''
	Then Сравнение архивных данных 'BIND_LOOP_SF_RT_UDINT'.'' с 'CPU850_RED'.'RT_resVar_UDINT'.''
	Then Сравнение архивных данных 'BIND_LOOP_SF_RT_UINT'.'' с 'CPU850_RED'.'RT_resVar_UINT'.''
	Then Сравнение архивных данных 'BIND_LOOP_SF_RT_ULINT'.'' с 'CPU850_RED'.'RT_resVar_ULINT'.''
	Then Сравнение архивных данных 'BIND_LOOP_SF_RT_USINT'.'' с 'CPU850_RED'.'RT_resVar_USINT'.''
	Then Сравнение архивных данных 'BIND_LOOP_SF_RT_WORD'.'' с 'CPU850_RED'.'RT_resVar_WORD'.''

	# Сравнение архивных данных вернувшихся на RT-ресурс CPU850_RED переменных с архивными данными источника
	Then Сравнение архивных данных 'BIND_CONTROL_BOOL'.'' с 'CPU850_RED'.'RT_resVar_BOOL'.''
	Then Сравнение архивных данных 'BIND_CONTROL_BYTE'.'' с 'CPU850_RED'.'RT_resVar_BYTE'.''
	Then Сравнение архивных данных 'BIND_CONTROL_DATE'.'' с 'CPU850_RED'.'RT_resVar_DATE'.''
	Then Сравнение архивных данных 'BIND_CONTROL_DINT'.'' с 'CPU850_RED'.'RT_resVar_DINT'.''
	Then Сравнение архивных данных 'BIND_CONTROL_DWORD'.'' с 'CPU850_RED'.'RT_resVar_DWORD'.''
	Then Сравнение архивных данных 'BIND_CONTROL_INT'.'' с 'CPU850_RED'.'RT_resVar_INT'.''
	Then Сравнение архивных данных 'BIND_CONTROL_LINT'.'' с 'CPU850_RED'.'RT_resVar_LINT'.''
	Then Сравнение архивных данных 'BIND_CONTROL_LREAL'.'' с 'CPU850_RED'.'RT_resVar_LREAL'.''
	Then Сравнение архивных данных 'BIND_CONTROL_LWORD'.'' с 'CPU850_RED'.'RT_resVar_LWORD'.''
	Then Сравнение архивных данных 'BIND_CONTROL_REAL'.'' с 'CPU850_RED'.'RT_resVar_REAL'.''
	Then Сравнение архивных данных 'BIND_CONTROL_SINT'.'' с 'CPU850_RED'.'RT_resVar_SINT'.''
	Then Сравнение архивных данных 'BIND_CONTROL_TIME'.'' с 'CPU850_RED'.'RT_resVar_TIME'.''
	Then Сравнение архивных данных 'BIND_CONTROL_UDINT'.'' с 'CPU850_RED'.'RT_resVar_UDINT'.''
	Then Сравнение архивных данных 'BIND_CONTROL_UINT'.'' с 'CPU850_RED'.'RT_resVar_UINT'.''
	Then Сравнение архивных данных 'BIND_CONTROL_ULINT'.'' с 'CPU850_RED'.'RT_resVar_ULINT'.''
	Then Сравнение архивных данных 'BIND_CONTROL_USINT'.'' с 'CPU850_RED'.'RT_resVar_USINT'.''
	Then Сравнение архивных данных 'BIND_CONTROL_WORD'.'' с 'CPU850_RED'.'RT_resVar_WORD'.''


	# Тест ошибок работы МРО
	# Источник - CPU850_RED/RT
	@EpicМКО/МРО
	@parentSuiteРасширенный_функционал_ПЛК @suiteМКО/МРО @subSuiteCPU850_Resource
	@critical
	Scenario: MPO_Cpu850Red_Resource_ErrorCheck

	# Анализ показателя ошибок на CPU850_RED/RT
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'CPU850_RED' в норме

	Then Сравниваю значение 'BindingLoop_ErrorCnt'.'' с допустимым '0'