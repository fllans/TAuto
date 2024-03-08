Feature: SNMP
		
    @fromMirror  @fromGate
	@EpicTimeStamp	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex @suiteTimeStamp
    Scenario: GwEx2ex.Snmp_v2_NetSw28_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'Snmp_v2_NetSw28' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx2_1' в норме
    When Чтение исходных архивных данных 'UpTime'.'' из 'ArcWork'
    Then Сравнение архивных данных 'SnmpV2_UpTime'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Channel 09\InOctets'.'' из 'ArcWork'
    Then Сравнение архивных данных 'SnmpV2_InOctets_09'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Channel 09\OutOctets'.'' из 'ArcWork'
    Then Сравнение архивных данных 'SnmpV2_OutOctets_09'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Channel 10\InOctets'.'' из 'ArcWork'
    Then Сравнение архивных данных 'SnmpV2_InOctets_10'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Channel 10\OutOctets'.'' из 'ArcWork'
    Then Сравнение архивных данных 'SnmpV2_OutOctets_10'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryGwEx2ex
	@parentSuite2_ExchUtils_GwEx2ex	@suiteПроверка_Quality
	@critical
    Scenario: GwEx2ex.Snmp_v2_NetSw28_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'Snmp_v2_NetSw28' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx2_1' в норме
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_UpTime'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Speed_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_InOctets_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OutOctets_09'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OpStat_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Speed_10'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_InOctets_10'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OutOctets_10'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OpStat_10'.'Значение' 

   
	@fromMirror  @fromGate
	@EpicTimeStamp	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex @suiteTimeStamp
    Scenario: GwEx1ex.Snmp_v2_NetSw28_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'Snmp_v2_NetSw28' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'GwEx_1' в норме
	When Чтение исходных архивных данных 'UpTime'.'' из 'ArcWork'
    Then Сравнение архивных данных 'SnmpV2_UpTime'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Channel 09\InOctets'.'' из 'ArcWork'
    Then Сравнение архивных данных 'SnmpV2_InOctets_09'.'Значение' из 'ArcReciv'
    #When Чтение исходных архивных данных 'Channel 09\OutOctets'.'' из 'ArcWork'
    #Then Сравнение архивных данных 'SnmpV2_OutOctets_09'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Channel 10\InOctets'.'' из 'ArcWork'
    Then Сравнение архивных данных 'SnmpV2_InOctets_10'.'Значение' из 'ArcReciv'
    #When Чтение исходных архивных данных 'Channel 10\OutOctets'.'' из 'ArcWork'
    #Then Сравнение архивных данных 'SnmpV2_OutOctets_10'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryGwEx1ex
	@parentSuite2_ExchUtils_GwEx1ex	@suiteПроверка_Quality
	@critical
    Scenario: GwEx1ex.Snmp_v2_NetSw28_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'Snmp_v2_NetSw28' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'GwEx_1' в норме
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_UpTime'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Speed_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_InOctets_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OutOctets_09'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OpStat_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Speed_10'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_InOctets_10'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OutOctets_10'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OpStat_10'.'Значение' 

    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryModbus_TCP_Slave
	@parentSuite2_ExchUtils_Modbus_TCP_Slave	@suiteПроверка_Quality
	@critical
    Scenario: MbTcpSlave.Snmp_v2_NetSw28_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'Snmp_v2_NetSw28' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'ModbusTcp_1' в норме
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_UpTime'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Speed_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_InOctets_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OutOctets_09'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OpStat_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Speed_10'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_InOctets_10'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OutOctets_10'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OpStat_10'.'Значение' 

	@fromMirror  @fromGate
	@EpicTimeStamp	@Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave @suiteTimeStamp
    Scenario: Slave104.Snmp_v2_NetSw28_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'Snmp_v2_NetSw28' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'Iec104_Sp' в норме
	When Чтение исходных архивных данных 'UpTime'.'' из 'ArcWork'
    Then Сравнение архивных данных 'SnmpV2_UpTime'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Channel 09\InOctets'.'' из 'ArcWork'
    Then Сравнение архивных данных 'SnmpV2_InOctets_09'.'Значение' из 'ArcReciv'
    #When Чтение исходных архивных данных 'Channel 09\OutOctets'.'' из 'ArcWork'
    #Then Сравнение архивных данных 'SnmpV2_OutOctets_09'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Channel 10\InOctets'.'' из 'ArcWork'
    Then Сравнение архивных данных 'SnmpV2_InOctets_10'.'Значение' из 'ArcReciv'
    #When Чтение исходных архивных данных 'Channel 10\OutOctets'.'' из 'ArcWork'
    #Then Сравнение архивных данных 'SnmpV2_OutOctets_10'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicПроверка_Quality   @Storyiec104_Slave
	@parentSuite2_ExchUtils_iec104_Slave	@suiteПроверка_Quality
	@critical
    Scenario: Slave104.Snmp_v2_NetSw28_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'Snmp_v2_NetSw28' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'Iec104_Sp' в норме
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_UpTime'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Speed_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_InOctets_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OutOctets_09'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OpStat_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Speed_10'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_InOctets_10'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OutOctets_10'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OpStat_10'.'Значение' 

    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryGwEx1Proxy
	@parentSuite2_ExchUtils_GwEx1Proxy	@suiteПроверка_Quality
	@critical
    Scenario: GwEx1Proxy.Snmp_v2_NetSw28_GoodQual
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxyGwEx25_1' в норме
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_UpTime'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Speed_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_InOctets_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OutOctets_09'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OpStat_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Speed_10'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_InOctets_10'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OutOctets_10'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OpStat_10'.'Значение' 

	@fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryGwEx2Proxy
	@parentSuite2_ExchUtils_GwEx2Proxy	@suiteПроверка_Quality
	@critical
    Scenario: GwEx2Proxy.Snmp_v2_NetSw28_GoodQual
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'VerProxy2GwEx25_2' в норме
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_UpTime'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Speed_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_InOctets_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OutOctets_09'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OpStat_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Speed_10'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_InOctets_10'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OutOctets_10'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OpStat_10'.'Значение' 

	@fromMirror  @fromGate
	@EpicTimeStamp	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer @suiteTimeStamp
    Scenario: OpcUAServer.Snmp_v2_NetSw28_TimeStamp
	Given Шлюзы 'work' в работе
    Given Архив 'ArcWork' в работе
	Given Связь с 1 устройством 'Snmp_v2_NetSw28' в норме
    Given Шлюз 'DataReceiver' в работе
    Given Архив 'ArcReciv' в работе
	Given Связь с 2 устройством 'OPC_UA_1' в норме
	When Чтение исходных архивных данных 'UpTime'.'' из 'ArcWork'
    Then Сравнение архивных данных 'SnmpV2_UpTime'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Channel 09\InOctets'.'' из 'ArcWork'
    Then Сравнение архивных данных 'SnmpV2_InOctets_09'.'Значение' из 'ArcReciv'
    #When Чтение исходных архивных данных 'Channel 09\OutOctets'.'' из 'ArcWork'
    #Then Сравнение архивных данных 'SnmpV2_OutOctets_09'.'Значение' из 'ArcReciv'
    When Чтение исходных архивных данных 'Channel 10\InOctets'.'' из 'ArcWork'
    Then Сравнение архивных данных 'SnmpV2_InOctets_10'.'Значение' из 'ArcReciv'
    #When Чтение исходных архивных данных 'Channel 10\OutOctets'.'' из 'ArcWork'
    #Then Сравнение архивных данных 'SnmpV2_OutOctets_10'.'Значение' из 'ArcReciv'

    @fromMirror  @fromGate
	@EpicПроверка_Quality	@StoryOpcUAServer
	@parentSuite2_ExchUtils_OpcUAServer	@suiteПроверка_Quality
	@critical
    Scenario: OpcUAServer.Snmp_v2_NetSw28_GoodQual
	Given Шлюзы 'work' в работе
	Given Связь с устройством 'Snmp_v2_NetSw28' в норме
    Given Шлюз 'DataReceiver' в работе
	Given Связь с устройством 'OPC_UA_1' в норме
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_UpTime'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Speed_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_InOctets_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OutOctets_09'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OpStat_09'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_Speed_10'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_InOctets_10'.'Значение' 
	Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OutOctets_10'.'Значение' 
    Then Проверка Runtime качества 'Good' переменной 'SnmpV2_OpStat_10'.'Значение' 