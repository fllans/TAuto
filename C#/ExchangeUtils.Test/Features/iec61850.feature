Feature: iec61850
		
    @fromMirror  @fromGate
	@EpicTimeStamp	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex @suiteTimeStamp
    Scenario: GwEx2ex.iec61850TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'RzaTecon300' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx2_1' в норме
	When Чтение исходных архивных данных 'Var_BOOL01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'VarBuff_BOOL01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_BOOL_buff'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Var_DINT01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'VarBuff_DINT01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_DINT_buff'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Var_REAL01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'VarBuff_REAL01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_REAL_buff'.'Значение' из 'ArcReciv'
    
    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteПроверка_Quality
	@critical
    Scenario: GwEx2ex.iec61850GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'RzaTecon300' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
    Then Проверка Runtime качества 'Good' переменной 'iec61850_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec61850_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec61850_REAL_const'.'Значение' 
   
    @fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx2ex.iec61850ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'RzaTecon300' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
	When Записываю Runtime значение 'True' в 'iec61850_ExBOOL_true'.'Значение'
	Then Проверяю значение переменной тех объекта 'iec61850_BOOL_external'.'Значение' = 'True'
	When Записываю Runtime значение 'True' в 'iec61850_ExBOOL_false'.'Значение'
	Then Проверяю значение переменной тех объекта 'iec61850_BOOL_external'.'Значение' = 'False'
	
	@ignore
	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx2ex.iec61850WhiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'RzaTecon300' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
	Then Проверка записи 'iec61850BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec61850BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec61850WORD_wr'.'Значение' не в белом списке


	@fromMirror  @fromGate
	@EpicTimeStamp	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex @suiteTimeStamp
    Scenario: GwEx1ex.iec61850TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'RzaTecon300' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx_1' в норме
	When Чтение исходных архивных данных 'Var_BOOL01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'VarBuff_BOOL01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_BOOL_buff'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Var_DINT01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'VarBuff_DINT01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_DINT_buff'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Var_REAL01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'VarBuff_REAL01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_REAL_buff'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteПроверка_Quality
	@critical
    Scenario: GwEx1ex.iec61850GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'RzaTecon300' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
    Then Проверка Runtime качества 'Good' переменной 'iec61850_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec61850_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec61850_REAL_const'.'Значение' 


    @fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx1ex.iec61850ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'RzaTecon300' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
	When Записываю Runtime значение 'True' в 'iec61850_ExBOOL_true'.'Значение'
	Then Проверяю значение переменной тех объекта 'iec61850_BOOL_external'.'Значение' = 'True'
	When Записываю Runtime значение 'True' в 'iec61850_ExBOOL_false'.'Значение'
	Then Проверяю значение переменной тех объекта 'iec61850_BOOL_external'.'Значение' = 'False'
	

	@ignore
	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx1ex.iec61850WhiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'RzaTecon300' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
	Then Проверка записи 'iec61850BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec61850BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec61850WORD_wr'.'Значение' не в белом списке

    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteПроверка_Quality
	@critical
    Scenario: MbTcpSlave.iec61850GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'RzaTecon300' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
    Then Проверка Runtime качества 'Good' переменной 'iec61850_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec61850_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec61850_REAL_const'.'Значение' 

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: MbTcpSlave.iec61850ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'RzaTecon300' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	When Записываю Runtime значение 'True' в 'iec61850_ExBOOL_true'.'Значение'
	Then Проверяю значение переменной тех объекта 'iec61850_BOOL_external'.'Значение' = 'True'
	When Записываю Runtime значение 'True' в 'iec61850_ExBOOL_false'.'Значение'
	Then Проверяю значение переменной тех объекта 'iec61850_BOOL_external'.'Значение' = 'False'

	@ignore
	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave    @suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: MbTcpSlave.iec61850WhiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'RzaTecon300' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
	Then Проверка записи 'iec61850BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec61850BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec61850WORD_wr'.'Значение' не в белом списке

	@fromMirror  @fromGate
	@EpicTimeStamp	@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave @suiteTimeStamp
    Scenario: Slave104.iec61850TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'RzaTecon300' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'Iec104_Sp' в норме
	When Чтение исходных архивных данных 'Var_BOOL01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'VarBuff_BOOL01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_BOOL_buff'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Var_DINT01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'VarBuff_DINT01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_DINT_buff'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Var_REAL01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'VarBuff_REAL01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_REAL_buff'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicПроверка_Quality   @Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteПроверка_Quality
	@critical
    Scenario: Slave104.iec61850GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'RzaTecon300' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
    Then Проверка Runtime качества 'Good' переменной 'iec61850_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec61850_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec61850_REAL_const'.'Значение' 

	@fromMirror  @fromGate
	@EpicЧтение_Запись  @Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave    @suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: Slave104.iec61850ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'RzaTecon300' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
	When Записываю Runtime значение 'True' в 'iec61850_ExBOOL_true'.'Значение'
	Then Проверяю значение переменной тех объекта 'iec61850_BOOL_external'.'Значение' = 'True'
	When Записываю Runtime значение 'True' в 'iec61850_ExBOOL_false'.'Значение'
	Then Проверяю значение переменной тех объекта 'iec61850_BOOL_external'.'Значение' = 'False'

    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteПроверка_Quality
	@critical
    Scenario: GwEx1Proxy.iec61850GoodQual
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
    Then Проверка Runtime качества 'Good' переменной 'iec61850_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec61850_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec61850_REAL_const'.'Значение' 

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx1Proxy.iec61850ReadWrite
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
	When Записываю Runtime значение 'True' в 'iec61850_ExBOOL_true'.'Значение'
	Then Проверяю значение переменной тех объекта 'iec61850_BOOL_external'.'Значение' = 'True'
	When Записываю Runtime значение 'True' в 'iec61850_ExBOOL_false'.'Значение'
	Then Проверяю значение переменной тех объекта 'iec61850_BOOL_external'.'Значение' = 'False'

	@ignore
	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx1Proxy.iec61850WhiteList
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
	Then Проверка записи 'iec61850BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec61850BYTE_wr'.'Значение' не в белом списке


	@fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteПроверка_Quality
	@critical
    Scenario: GwEx2Proxy.iec61850GoodQual
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
    Then Проверка Runtime качества 'Good' переменной 'iec61850_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec61850_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec61850_REAL_const'.'Значение' 

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: GwEx2Proxy.iec61850ReadWrite
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
	When Записываю Runtime значение 'True' в 'iec61850_ExBOOL_true'.'Значение'
	Then Проверяю значение переменной тех объекта 'iec61850_BOOL_external'.'Значение' = 'True'
	When Записываю Runtime значение 'True' в 'iec61850_ExBOOL_false'.'Значение'
	Then Проверяю значение переменной тех объекта 'iec61850_BOOL_external'.'Значение' = 'False'

	@ignore
	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: GwEx2Proxy.iec61850WhiteList
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
	Then Проверка записи 'iec61850BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec61850BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec61850WORD_wr'.'Значение' не в белом списке

	@fromMirror  @fromGate
	@EpicTimeStamp	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer @suiteTimeStamp
    Scenario: OpcUAServer.iec61850TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'RzaTecon300' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'OPC_UA_1' в норме
	When Чтение исходных архивных данных 'Var_BOOL01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_BOOL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'VarBuff_BOOL01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_BOOL_buff'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Var_DINT01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_DINT'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'VarBuff_DINT01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_DINT_buff'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Var_REAL01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_REAL'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'VarBuff_REAL01'.'Значение' из 'ArcWork'
    Then Сравнение архивных данных 'iec61850_REAL_buff'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteПроверка_Quality
	@critical
    Scenario: OpcUAServer.iec61850GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'RzaTecon300' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
    Then Проверка Runtime качества 'Good' переменной 'iec61850_BOOL_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec61850_DINT_const'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'iec61850_REAL_const'.'Значение' 

	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteЧтение_Запись	@subSuiteРазрешенные_переменные
	@critical
    Scenario: OpcUAServer.iec61850ReadWrite
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'RzaTecon300' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
	When Записываю Runtime значение 'True' в 'iec61850_ExBOOL_true'.'Значение'
	Then Проверяю значение переменной тех объекта 'iec61850_BOOL_external'.'Значение' = 'True'
	When Записываю Runtime значение 'True' в 'iec61850_ExBOOL_false'.'Значение'
	Then Проверяю значение переменной тех объекта 'iec61850_BOOL_external'.'Значение' = 'False'

	@ignore
	@fromMirror  @fromGate
	@EpicЧтение_Запись	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteЧтение_Запись	@subSuiteЗапись_запрещена
	Scenario: OpcUAServer.iec61850WhiteList
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'RzaTecon300' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
	Then Проверка записи 'iec61850BOOL_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec61850BYTE_wr'.'Значение' не в белом списке
	Then Проверка записи 'iec61850WORD_wr'.'Значение' не в белом списке
