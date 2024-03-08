﻿@ignore
Feature: DeviceEvents

	@fromMirror
	@EpicДиагностика_Связи
	@parentSuite2_ExchUtils_События_Диагностики @suiteSysEvents
	@package_Зеркало_Системеные_События_Последн
	Scenario Outline: SysEvents
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	Then Поверка Системных событий '<Dev>'
	Examples: 
	| Dev                |
	| cpu715_Mono        |
	| cpu715_Red         |
	| cpu715_Cluster     |
	| CPU850_RED         |
	| GwExch_v1          |
	| GwExch_v2          |
	| GwExch_2_v1        |
	| GwExch_2_v2        |
	| VerProxy52_GE_v1   |
	| VerProxy52_GE_v2   |
	| VerProxy52_GE_2_v1 |
	| VerProxy52_GE_2_v2 |
	| Mb_Rtu11_1         |
	| Mb_Rtu11_211       |
	| Mb_Rtu12_1         |
	| Mb_RoT40115_1      |
	| Mb_RoT40115_211    |
	| Mb_RoT40116_1      |
	| Mb_Tcp502_1        |
	| Mb_Tcp502_211      |
	| Mb_Tcp552_1        |
	| Mb_Udp602_1        |
	| Mb_Udp602_211      |
	| Mb_Udp662_1        |
	| Mb2_Rtu21_1        |
	| Mb2_Rtu21_211      |
	| Mb2_Rtu22_1        |
	| Mb2_RoT40215_1     |
	| Mb2_RoT40215_211   |
	| Mb2_RoT40216_1     |
	| Mb2_Tcp522_1       |
	| Mb2_Tcp522_2       |
	| Mb2_Tcp522_211     |
	| Mb2_Udp622_1       |
	| Mb2_Udp622_2       |
	| Mb2_Udp622_211     |
	| OpcDa_Subs         |
	| OpcDa_Async        |
	| OpcDaProxy_Subs    |
	| OpcDaProxy_Async   |
	| OpcUa_ASt5000_Lin  |
	| OpcUa_ASt5000_Red  |
	| AA1E1Q05A1         |
	| RzaTecon300        |
	| iec104_sporadic    |
	| Snmp_v1_NetSw27    |
	| Snmp_v2_NetSw28    |
	| Snmp_v3_NetSw27    |

	@fromMirror
	@EpicДиагностика_Связи
	@parentSuite2_ExchUtils_События_Диагностики @suiteСобытия
	Scenario: DiagEvents_00
	Given Шлюзы 'work' в работе
	Given Зеркало Шлюза 'MirrorWork' в работе
	Given Связь с устройством 'MirrorWork' в норме
	When Получаю события группы 'Системные' в новый буфер
	When Получаю события группы 'Аппаратные' в буфер
	When Получаю события группы 'Диагностика ПТК' в буфер

	@fromMirror
    @EpicДиагностика_Связи
	@parentSuite2_ExchUtils_События_Диагностики @suiteСобытияНорм
	@package_Зеркало_Системеные_События_Все
	Scenario Outline: DiagEvents_01
	Then Проверяю в буфере событие <val> по параметру '<Dev>'.'<Chan>'.'' 
	Examples: 
	| Dev               | Chan                     | val   |
	| work              | Системные СОБЫТИЯ        | 10001 |
	| work              | Системные СОБЫТИЯ        | 10002 |
	| work              | Системные СОБЫТИЯ        | 10012 |
	| work              | Системные СОБЫТИЯ        | 10013 |
	| work              | Системные СОБЫТИЯ        | 10014 |
	#| OpcUa_ASt5000_Win | Системные СОБЫТИЯ        | 2     |
	#| OpcUa_ASt5000_Win | Состояние Data сервера 1 | 0     |
	#| OpcUa_ASt5000_Win | Состояние Data сервера 2 | 0     |
	| OpcUa_ASt5000_Lin | Системные СОБЫТИЯ        | 2     |
	| OpcUa_ASt5000_Lin | Состояние Data сервера 1 | 0     |
	| OpcUa_ASt5000_Lin | Состояние Data сервера 2 | 0     |
	| OpcUa_ASt5000_Red | Системные СОБЫТИЯ        | 2     |
	| OpcUa_ASt5000_Red | Состояние Data сервера 1 | 0     |
	| OpcUa_ASt5000_Red | Состояние Data сервера 2 | 0     |
	| cpu715_Mono       | Ошибки связи             | 48    |
	#| cpu715_Mono       | Ошибки связи             | 51    |
	| cpu715_Red        | Ошибки связи             | 240   |
	#| cpu715_Red        | Ошибки связи             | 255   |
	| cpu715_Cluster    | Ошибки связи             | 240   |
	#| cpu715_Cluster    | Ошибки связи             | 255   
	| CPU850_RED       | Состояние           | 0    |
	| GwExch_v1         | Системные события        | 10002 |
	#| GwExch_v1         | Системные события        | 10003 |
	| GwExch_v2         | Системные события        | 10002 |
	#| GwExch_v2         | Системные события        | 10003 |
	| GwExch_2_v1       | Системные события        | 10002 |
	#| GwExch_2_v1       | Системные события        | 10003 |
	| GwExch_2_v2       | Системные события        | 10002 |
	#| GwExch_2_v2       | Системные события        | 10003 |
	| VerProxy52_GE_v1         | Системные события        | 10002 |
	| VerProxy52_GE_v2         | Системные события        | 10002 |
	| VerProxy52_GE_2_v1         | Системные события        | 10002 |
	| VerProxy52_GE_2_v2         | Системные события        | 10002 |
	#| Mb_Rtu11_1        | Системные СОБЫТИЯ        | 0     |
	| Mb_Rtu11_1        | Системные СОБЫТИЯ        | 2     |
	#| Mb_Rtu11_211      | Системные СОБЫТИЯ        | 0     |
	| Mb_Rtu11_211      | Системные СОБЫТИЯ        | 2     |
	#| Mb_Rtu12_1        | Системные СОБЫТИЯ        | 0     |
	| Mb_Rtu12_1        | Системные СОБЫТИЯ        | 2     |
	#| Mb_RoT40115_1     | Системные СОБЫТИЯ        | 0     |
	| Mb_RoT40115_1     | Системные СОБЫТИЯ        | 2     |
	#| Mb_RoT40115_211   | Системные СОБЫТИЯ        | 0     |
	| Mb_RoT40115_211   | Системные СОБЫТИЯ        | 2     |
	#| Mb_RoT40116_1     | Системные СОБЫТИЯ        | 0     |
	| Mb_RoT40116_1     | Системные СОБЫТИЯ        | 2     |
	#| Mb_Tcp502_1       | Системные СОБЫТИЯ        | 0     |
	| Mb_Tcp502_1       | Системные СОБЫТИЯ        | 2     |
	#| Mb_Tcp502_211     | Системные СОБЫТИЯ        | 0     |
	| Mb_Tcp502_211     | Системные СОБЫТИЯ        | 2     |
	#| Mb_Tcp552_1       | Системные СОБЫТИЯ        | 0     |
	| Mb_Tcp552_1       | Системные СОБЫТИЯ        | 2     |
	#| Mb_Udp602_1       | Системные СОБЫТИЯ        | 0     |
	| Mb_Udp602_1       | Системные СОБЫТИЯ        | 2     |
	#| Mb_Udp602_211     | Системные СОБЫТИЯ        | 0     |
	| Mb_Udp602_211     | Системные СОБЫТИЯ        | 2     |
	#| Mb_Udp662_1       | Системные СОБЫТИЯ        | 0     |
	| Mb_Udp662_1       | Системные СОБЫТИЯ        | 2     |
	#| Mb2_Rtu21_1       | Системные СОБЫТИЯ        | 0     |
	| Mb2_Rtu21_1       | Системные СОБЫТИЯ        | 2     |
	#| Mb2_Rtu21_211     | Системные СОБЫТИЯ        | 0     |
	| Mb2_Rtu21_211     | Системные СОБЫТИЯ        | 2     |
	#| Mb2_Rtu22_1       | Системные СОБЫТИЯ        | 0     |
	| Mb2_Rtu22_1       | Системные СОБЫТИЯ        | 2     |
	#| Mb2_RoT40215_1    | Системные СОБЫТИЯ        | 0     |
	| Mb2_RoT40215_1    | Системные СОБЫТИЯ        | 2     |
	#| Mb2_RoT40215_211  | Системные СОБЫТИЯ        | 0     |
	| Mb2_RoT40215_211  | Системные СОБЫТИЯ        | 2     |
	#| Mb2_RoT40216_1    | Системные СОБЫТИЯ        | 0     |
	| Mb2_RoT40216_1    | Системные СОБЫТИЯ        | 2     |
	#| Mb2_Tcp522_1      | Системные СОБЫТИЯ        | 0     |
	| Mb2_Tcp522_1      | Системные СОБЫТИЯ        | 2     |
	#| Mb2_Tcp522_2      | Системные СОБЫТИЯ        | 0     |
	| Mb2_Tcp522_2      | Системные СОБЫТИЯ        | 2     |
	#| Mb2_Tcp522_211    | Системные СОБЫТИЯ        | 0     |
	| Mb2_Tcp522_211    | Системные СОБЫТИЯ        | 2     |
	#| Mb2_Udp622_1      | Системные СОБЫТИЯ        | 0     |
	| Mb2_Udp622_1      | Системные СОБЫТИЯ        | 2     |
	#| Mb2_Udp622_2      | Системные СОБЫТИЯ        | 0     |
	| Mb2_Udp622_2      | Системные СОБЫТИЯ        | 2     |
	#| Mb2_Udp622_211    | Системные СОБЫТИЯ        | 0     |
	| Mb2_Udp622_211    | Системные СОБЫТИЯ        | 2     |
	#| OpcDa_Subs        | Системные СОБЫТИЯ        | 0     |
	| OpcDa_Subs        | Системные СОБЫТИЯ        | 2     |
	#| OpcDa_Async       | Системные СОБЫТИЯ        | 0     |
	| OpcDa_Async       | Системные СОБЫТИЯ        | 2     |
	#| OpcDaProxy_Subs   | Системные СОБЫТИЯ        | 0     |
	| OpcDaProxy_Subs   | Системные СОБЫТИЯ        | 2     |
	#| OpcDaProxy_Async  | Системные СОБЫТИЯ        | 0     |
	| OpcDaProxy_Async  | Системные СОБЫТИЯ        | 2     |
	| AA1E1Q05A1        | Системные СОБЫТИЯ        | 14    |
	| AA1E1Q05A1        | Системные СОБЫТИЯ        | 13    |
	| AA1E1Q05A1        | Системные СОБЫТИЯ        | 12    |
	#| iec104_sporadic   | Системные СОБЫТИЯ        | 0     |
	| iec104_sporadic   | Системные СОБЫТИЯ        | 2     |
	#| Snmp_v1_NetSw27   | Состояние связи          | 1     |
	| Snmp_v1_NetSw27   | Состояние связи          | 2     |
	#| Snmp_v2_NetSw28   | Состояние связи          | 1     |
	| Snmp_v2_NetSw28   | Состояние связи          | 2     |
	| Snmp_v3_NetSw27   | Состояние связи          | 2     |
	| Scada2_at02   | Системные СОБЫТИЯ (SDK)  | 10025 |
	#| Scada2_at02   | Системные СОБЫТИЯ (SDK)  | 10022 |
	| Scada2_at06   | Системные СОБЫТИЯ (SDK)  | 10025 |
	#| Scada2_at06   | Системные СОБЫТИЯ (SDK)  | 10022 |
	| Scada2_at04   | Системные СОБЫТИЯ (SDK)  | 10025 |
	#| Scada2_at04   | Системные СОБЫТИЯ (SDK)  | 10022 |
