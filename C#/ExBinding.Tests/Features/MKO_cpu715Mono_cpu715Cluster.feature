Feature: MKO_CPU715_MONO_CPU715_CLUSTER	


	# Runtime-тест работы МКО
	# Источник - cpu715_Mono, приёмник - cpu715_Cluster
	@EpicМКО/МРО
	@parentSuiteРасширенный_функционал_ПЛК @suiteМКО/МРО @subSuiteCPU715_MONO_CPU715_CLUSTER
	@critical
	Scenario: MKO_cpu715Mono_cpu715Cluster_RuntimeCheak

	# Сравнение полученных на cpu715_Cluster переменных с источником
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Cluster' в норме

	Then Сравниваю значение 'MKO_CPU715_CLUSTER_CPU715_MONO_BOOL'.'' с 'cpu715_Mono'.'resVar_BOOL'.''
	Then Сравниваю значение 'MKO_CPU715_CLUSTER_CPU715_MONO_BYTE'.'' с 'cpu715_Mono'.'resVar_BYTE'.''
	Then Сравниваю значение 'MKO_CPU715_CLUSTER_CPU715_MONO_DATE'.'' с 'cpu715_Mono'.'resVar_DATE'.''
	Then Сравниваю значение 'MKO_CPU715_CLUSTER_CPU715_MONO_DINT'.'' с 'cpu715_Mono'.'resVar_DINT'.''
	Then Сравниваю значение 'MKO_CPU715_CLUSTER_CPU715_MONO_DWORD'.'' с 'cpu715_Mono'.'resVar_DWORD'.''
	Then Сравниваю значение 'MKO_CPU715_CLUSTER_CPU715_MONO_INT'.'' с 'cpu715_Mono'.'resVar_INT'.''
	Then Сравниваю значение 'MKO_CPU715_CLUSTER_CPU715_MONO_LINT'.'' с 'cpu715_Mono'.'resVar_LINT'.''
	Then Сравниваю значение 'MKO_CPU715_CLUSTER_CPU715_MONO_LREAL'.'' с 'cpu715_Mono'.'resVar_LREAL'.''
	Then Сравниваю значение 'MKO_CPU715_CLUSTER_CPU715_MONO_LWORD'.'' с 'cpu715_Mono'.'resVar_LWORD'.''
	Then Сравниваю значение 'MKO_CPU715_CLUSTER_CPU715_MONO_REAL'.'' с 'cpu715_Mono'.'resVar_REAL'.''
	Then Сравниваю значение 'MKO_CPU715_CLUSTER_CPU715_MONO_SINT'.'' с 'cpu715_Mono'.'resVar_SINT'.''
	Then Сравниваю значение 'MKO_CPU715_CLUSTER_CPU715_MONO_TIME'.'' с 'cpu715_Mono'.'resVar_TIME'.''
	Then Сравниваю значение 'MKO_CPU715_CLUSTER_CPU715_MONO_UDINT'.'' с 'cpu715_Mono'.'resVar_UDINT'.''
	Then Сравниваю значение 'MKO_CPU715_CLUSTER_CPU715_MONO_UINT'.'' с 'cpu715_Mono'.'resVar_UINT'.''
	Then Сравниваю значение 'MKO_CPU715_CLUSTER_CPU715_MONO_ULINT'.'' с 'cpu715_Mono'.'resVar_ULINT'.''
	Then Сравниваю значение 'MKO_CPU715_CLUSTER_CPU715_MONO_USINT'.'' с 'cpu715_Mono'.'resVar_USINT'.''
	Then Сравниваю значение 'MKO_CPU715_CLUSTER_CPU715_MONO_WORD'.'' с 'cpu715_Mono'.'resVar_WORD'.''

	# Сравнение вернувшихся на cpu715_Mono переменных с источником
	Given Связь с устройством 'cpu715_Mono' в норме

	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_BOOL_CPU1'.'' с 'cpu715_Mono'.'resVar_BOOL'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_BYTE_CPU1'.'' с 'cpu715_Mono'.'resVar_BYTE'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DATE_CPU1'.'' с 'cpu715_Mono'.'resVar_DATE'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DINT_CPU1'.'' с 'cpu715_Mono'.'resVar_DINT'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DWORD_CPU1'.'' с 'cpu715_Mono'.'resVar_DWORD'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_INT_CPU1'.'' с 'cpu715_Mono'.'resVar_INT'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LINT_CPU1'.'' с 'cpu715_Mono'.'resVar_LINT'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LREAL_CPU1'.'' с 'cpu715_Mono'.'resVar_LREAL'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LWORD_CPU1'.'' с 'cpu715_Mono'.'resVar_LWORD'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_REAL_CPU1'.'' с 'cpu715_Mono'.'resVar_REAL'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_SINT_CPU1'.'' с 'cpu715_Mono'.'resVar_SINT'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_TIME_CPU1'.'' с 'cpu715_Mono'.'resVar_TIME'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_UDINT_CPU1'.'' с 'cpu715_Mono'.'resVar_UDINT'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_UINT_CPU1'.'' с 'cpu715_Mono'.'resVar_UINT'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_ULINT_CPU1'.'' с 'cpu715_Mono'.'resVar_ULINT'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_USINT_CPU1'.'' с 'cpu715_Mono'.'resVar_USINT'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_WORD_CPU1'.'' с 'cpu715_Mono'.'resVar_WORD'.''

	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_BOOL_CPU2'.'' с 'cpu715_Mono'.'resVar_BOOL'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_BYTE_CPU2'.'' с 'cpu715_Mono'.'resVar_BYTE'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DATE_CPU2'.'' с 'cpu715_Mono'.'resVar_DATE'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DINT_CPU2'.'' с 'cpu715_Mono'.'resVar_DINT'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DWORD_CPU2'.'' с 'cpu715_Mono'.'resVar_DWORD'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_INT_CPU2'.'' с 'cpu715_Mono'.'resVar_INT'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LINT_CPU2'.'' с 'cpu715_Mono'.'resVar_LINT'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LREAL_CPU2'.'' с 'cpu715_Mono'.'resVar_LREAL'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LWORD_CPU2'.'' с 'cpu715_Mono'.'resVar_LWORD'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_REAL_CPU2'.'' с 'cpu715_Mono'.'resVar_REAL'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_SINT_CPU2'.'' с 'cpu715_Mono'.'resVar_SINT'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_TIME_CPU2'.'' с 'cpu715_Mono'.'resVar_TIME'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_UDINT_CPU2'.'' с 'cpu715_Mono'.'resVar_UDINT'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_UINT_CPU2'.'' с 'cpu715_Mono'.'resVar_UINT'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_ULINT_CPU2'.'' с 'cpu715_Mono'.'resVar_ULINT'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_USINT_CPU2'.'' с 'cpu715_Mono'.'resVar_USINT'.''
	Then Сравниваю значение 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_WORD_CPU2'.'' с 'cpu715_Mono'.'resVar_WORD'.''


	# Тест архивных данных работы МКО
	# Источник - Архив 1/cpu715_Mono, приёмник - Архив 2/cpu715_Cluster
	@EpicМКО/МРО
	@parentSuiteРасширенный_функционал_ПЛК @suiteМКО/МРО @subSuiteCPU715_MONO_CPU715_CLUSTER
	@critical
	Scenario: MKO_cpu715Mono_cpu715Cluster_ArchiveCheck

	# Сравнение архивных данных полученных на cpu715_Cluster переменных с архивными данными источника
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Mono' в норме
	Given Соединение с 1 Архивом 'ArcWork'
	Given Связь с устройством 'cpu715_Cluster' в норме
	Given Соединение с 2 Архивом 'ArcWork'

	Then Сравнение архивных данных 'MKO_CPU715_CLUSTER_CPU715_MONO_BOOL'.'' с 'cpu715_Mono'.'resVar_BOOL'.''
	Then Сравнение архивных данных 'MKO_CPU715_CLUSTER_CPU715_MONO_BYTE'.'' с 'cpu715_Mono'.'resVar_BYTE'.''
	Then Сравнение архивных данных 'MKO_CPU715_CLUSTER_CPU715_MONO_DATE'.'' с 'cpu715_Mono'.'resVar_DATE'.''
	Then Сравнение архивных данных 'MKO_CPU715_CLUSTER_CPU715_MONO_DINT'.'' с 'cpu715_Mono'.'resVar_DINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_CLUSTER_CPU715_MONO_DWORD'.'' с 'cpu715_Mono'.'resVar_DWORD'.''
	Then Сравнение архивных данных 'MKO_CPU715_CLUSTER_CPU715_MONO_INT'.'' с 'cpu715_Mono'.'resVar_INT'.''
	Then Сравнение архивных данных 'MKO_CPU715_CLUSTER_CPU715_MONO_LINT'.'' с 'cpu715_Mono'.'resVar_LINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_CLUSTER_CPU715_MONO_LREAL'.'' с 'cpu715_Mono'.'resVar_LREAL'.''
	Then Сравнение архивных данных 'MKO_CPU715_CLUSTER_CPU715_MONO_LWORD'.'' с 'cpu715_Mono'.'resVar_LWORD'.''
	Then Сравнение архивных данных 'MKO_CPU715_CLUSTER_CPU715_MONO_REAL'.'' с 'cpu715_Mono'.'resVar_REAL'.''
	Then Сравнение архивных данных 'MKO_CPU715_CLUSTER_CPU715_MONO_SINT'.'' с 'cpu715_Mono'.'resVar_SINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_CLUSTER_CPU715_MONO_TIME'.'' с 'cpu715_Mono'.'resVar_TIME'.''
	Then Сравнение архивных данных 'MKO_CPU715_CLUSTER_CPU715_MONO_UDINT'.'' с 'cpu715_Mono'.'resVar_UDINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_CLUSTER_CPU715_MONO_UINT'.'' с 'cpu715_Mono'.'resVar_UINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_CLUSTER_CPU715_MONO_ULINT'.'' с 'cpu715_Mono'.'resVar_ULINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_CLUSTER_CPU715_MONO_USINT'.'' с 'cpu715_Mono'.'resVar_USINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_CLUSTER_CPU715_MONO_WORD'.'' с 'cpu715_Mono'.'resVar_WORD'.''

	# Сравнение архивных данных вернувшихся на cpu715_Mono переменных с архивными данными источника
	Given Связь с устройством 'cpu715_Mono' в норме

	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_BOOL_CPU1'.'' с 'cpu715_Mono'.'resVar_BOOL'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_BYTE_CPU1'.'' с 'cpu715_Mono'.'resVar_BYTE'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DATE_CPU1'.'' с 'cpu715_Mono'.'resVar_DATE'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DINT_CPU1'.'' с 'cpu715_Mono'.'resVar_DINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DWORD_CPU1'.'' с 'cpu715_Mono'.'resVar_DWORD'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_INT_CPU1'.'' с 'cpu715_Mono'.'resVar_INT'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LINT_CPU1'.'' с 'cpu715_Mono'.'resVar_LINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LREAL_CPU1'.'' с 'cpu715_Mono'.'resVar_LREAL'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LWORD_CPU1'.'' с 'cpu715_Mono'.'resVar_LWORD'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_REAL_CPU1'.'' с 'cpu715_Mono'.'resVar_REAL'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_SINT_CPU1'.'' с 'cpu715_Mono'.'resVar_SINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_TIME_CPU1'.'' с 'cpu715_Mono'.'resVar_TIME'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_UDINT_CPU1'.'' с 'cpu715_Mono'.'resVar_UDINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_UINT_CPU1'.'' с 'cpu715_Mono'.'resVar_UINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_ULINT_CPU1'.'' с 'cpu715_Mono'.'resVar_ULINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_USINT_CPU1'.'' с 'cpu715_Mono'.'resVar_USINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_WORD_CPU1'.'' с 'cpu715_Mono'.'resVar_WORD'.''

	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_BOOL_CPU2'.'' с 'cpu715_Mono'.'resVar_BOOL'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_BYTE_CPU2'.'' с 'cpu715_Mono'.'resVar_BYTE'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DATE_CPU2'.'' с 'cpu715_Mono'.'resVar_DATE'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DINT_CPU2'.'' с 'cpu715_Mono'.'resVar_DINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_DWORD_CPU2'.'' с 'cpu715_Mono'.'resVar_DWORD'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_INT_CPU2'.'' с 'cpu715_Mono'.'resVar_INT'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LINT_CPU2'.'' с 'cpu715_Mono'.'resVar_LINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LREAL_CPU2'.'' с 'cpu715_Mono'.'resVar_LREAL'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_LWORD_CPU2'.'' с 'cpu715_Mono'.'resVar_LWORD'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_REAL_CPU2'.'' с 'cpu715_Mono'.'resVar_REAL'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_SINT_CPU2'.'' с 'cpu715_Mono'.'resVar_SINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_TIME_CPU2'.'' с 'cpu715_Mono'.'resVar_TIME'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_UDINT_CPU2'.'' с 'cpu715_Mono'.'resVar_UDINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_UINT_CPU2'.'' с 'cpu715_Mono'.'resVar_UINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_ULINT_CPU2'.'' с 'cpu715_Mono'.'resVar_ULINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_USINT_CPU2'.'' с 'cpu715_Mono'.'resVar_USINT'.''
	Then Сравнение архивных данных 'MKO_CPU715_MONO_CPU715_CLUSTER_CONTROL_WORD_CPU2'.'' с 'cpu715_Mono'.'resVar_WORD'.''


	# Тест ошибок работы МКО
	# Источник - cpu715_Mono
	@EpicМКО/МРО
	@parentSuiteРасширенный_функционал_ПЛК @suiteМКО/МРО @subSuiteCPU715_MONO_CPU715_CLUSTER
	@critical
	Scenario: MKO_cpu715Mono_cpu715Cluster_ErrorCheck

	# Анализ показателя ошибок на cpu715_Mono
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'cpu715_Mono' в норме

	Then Сравниваю значение 'CPU715_MONO_CPU715_CLUSTER_ERRORCNT'.'' с допустимым '0'