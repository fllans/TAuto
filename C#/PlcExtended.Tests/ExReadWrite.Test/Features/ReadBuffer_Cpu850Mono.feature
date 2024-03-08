Feature: ReadBuffer_CPU850


	# Тест чтения буфера
	# Источник - CPU850_MONO
	@EpicЧтение_буфера
	@parentSuiteРасширенный_функционал_ПЛК @suiteЧтение_буфера @subSuiteCPU850_MONO
	@critical
	Scenario: ReadBuffer_CPU850_MONO_check

	# Сравнение полученных на SF-ресурсе CPU850_RED переменных с источником
	Given Шлюзы 'work' в работе


	Given Соединение с 1 Архивом 'ArcWork'
	Given Соединение с 2 Архивом 'ArcWork'
	Given Связь с устройством 'CPU850_RED' в норме

	# When Чтение архивных данных 'SampleBuffer_DINT_SF'.''


	# When Запускаю генерацию 'StartSampleBufferTest_SF'.'' с параметрами: 'SF' ресурс, '1000' значений, '300' мс
	
	When Запускаю генерацию 'StartSampleBufferTest_SF'.'' с параметрами: 'SF' ресурс, '1000' значений, '10' мс
	Then Проверяю вычитывание 'SampleBuffer_DINT_SF'.'' из буффера
	
	# When Запускаю генерацию 'StartSampleBufferTest_SF'.'' с параметрами: 'SF' ресурс, '1000' значений, '50' мс
	# When Запускаю генерацию 'StartSampleBufferTest_SF'.'' с параметрами: 'SF' ресурс, '1000' значений, '30' мс
	# When Запускаю генерацию 'StartSampleBufferTest_SF'.'' с параметрами: 'SF' ресурс, '1000' значений, '0' мс

	# Then Проверяю вычитывание 'SampleBuffer_DINT_SF' из буффера
	# Then Генерация значений с параметрами: '1000' значений, '200' мс
	# Then Генерация значений с параметрами: '1000' значений, '200' мс

	# Then Запускаю генерацию 'StartSampleBufferTest' с параметрами: '1000' значений, '300' мс
	# Then Запускаю генерацию 'StartSampleBufferTest' с параметрами: '1000' значений, '200' мс
	# Then Запускаю генерацию 'StartSampleBufferTest' с параметрами: '1000' значений, '100' мс
	# Then Запускаю генерацию 'StartSampleBufferTest' с параметрами: '1000' значений, '50' мс
	# Then Запускаю генерацию 'StartSampleBufferTest' с параметрами: '1000' значений, '40' мс
	# Then Запускаю генерацию 'StartSampleBufferTest' с параметрами: '1000' значений, '30' мс
	# Then Запускаю генерацию 'StartSampleBufferTest' с параметрами: '1000' значений, '20' мс