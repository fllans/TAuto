PROGRAM HART_PULL_v1

(* Программа опроса устройств по HART-протоколу *)

(* В программе происходит поочерёдное переключение команд запроса/чтения *)
(* Команда опроса переключается по временному интервалу *)
(* Ошибки опроса не учитываются при переключении команды опроса *)


// Конфигурация FB HART_Communication
HART_BUS := 1;
HART_DEVICE := 2;
HART_CHANNEL := 3;
HART_TIMEOUT := 500;

// Настройка таймера реального времени
// TIME_RV - экземпляр FB IMPRV
TIME_RV.W := FALSE;                                              // Режим работы: FALSE - периодический, TRUE - одиночный
TIME_RV.Nh := 0;
TIME_RV.Nm := 0;
TIME_RV.Ns := TIME_PULL;
TIME_RV.Timp := _PRESET_CYCLE_TIME;
TIME_RV ();

// Инициализация опроса
IF REQUEST AND TIME_RV.Out THEN

    // Приращение номера ветвления
    STEP_PULL := STEP_PULL + 1;

    CASE STEP_PULL OF

        1:  (* Функция 0 - чтение уникального идентификатора/адреса устройства *)
            FINAL_PULL := FALSE;
            HART_COMM_54.Request := FALSE;

            HART_COMM_00.Request := TRUE;
            HART_COMM_00.Bus := HART_BUS;
            HART_COMM_00.Device := HART_DEVICE;
            HART_COMM_00.Channel := HART_CHANNEL;
            HART_COMM_00.TimeOut := HART_TIMEOUT;

            // HART_FUNC := 'Функция 0';
            HART_FUNCTIONS := 0;                                 

        2:  (* Функция 1 - чтение первичной переменной *)
            HART_COMM_00.Request := FALSE;

            HART_COMM_01.Request := TRUE;
            HART_COMM_01.Bus := HART_BUS;
            HART_COMM_01.Device := HART_DEVICE;
            HART_COMM_01.Channel := HART_CHANNEL;
            HART_COMM_01.TimeOut := HART_TIMEOUT;

            // HART_FUNC := 'Функция 1';
            HART_FUNCTIONS := 1;

        3:  (* Функция 2 - чтение первичной переменной как величины тока и в процентах от диапазона *)
            HART_COMM_01.Request := FALSE;

            HART_COMM_02.Request := TRUE;
            HART_COMM_02.Bus := HART_BUS;
            HART_COMM_02.Device := HART_DEVICE;
            HART_COMM_02.Channel := HART_CHANNEL;
            HART_COMM_02.TimeOut := HART_TIMEOUT;

            HART_FUNC := 'Функция 2';
            HART_FUNCTIONS := 2;

        4:  (* Функция 3 - чтение динамических переменных и токового значения первичной переменной *)
            HART_COMM_02.Request := FALSE;

            HART_COMM_03.Request := TRUE;
            HART_COMM_03.Bus := HART_BUS;
            HART_COMM_03.Device := HART_DEVICE;
            HART_COMM_03.Channel := HART_CHANNEL;
            HART_COMM_03.TimeOut := HART_TIMEOUT;

            // HART_FUNC := 'Функция 3';
            HART_FUNCTIONS := 3;

        5:  (* Функция 6 - запись адреса устройства *)
            HART_COMM_03.Request := FALSE;
            HART_COMM_06.Request := TRUE;

            HART_COMM_06.Request := TRUE;
            HART_COMM_06.Bus := HART_BUS;
            HART_COMM_06.Device := HART_DEVICE;
            HART_COMM_06.Channel := HART_CHANNEL;
            HART_COMM_06.TimeOut := HART_TIMEOUT;

            HART_FUNC := 'Функция 6';
            HART_FUNCTIONS := 6;

        6:  (* Функция 12 - чтение сообщения, содержащегося в устройстве *)
            HART_COMM_06.Request := FALSE;

            HART_COMM_12.Request := TRUE;
            HART_COMM_12.Bus := HART_BUS;
            HART_COMM_12.Device := HART_DEVICE;
            HART_COMM_12.Channel := HART_CHANNEL;
            HART_COMM_12.TimeOut := HART_TIMEOUT;

            // HART_FUNC := 'Функция 12';
            HART_FUNCTIONS := 12;

        7:  (* Функция 13 - чтение текстового тега, описателя и даты *)
            HART_COMM_12.Request := FALSE;

            HART_COMM_13.Request := TRUE;
            HART_COMM_13.Bus := HART_BUS;
            HART_COMM_13.Device := HART_DEVICE;
            HART_COMM_13.Channel := HART_CHANNEL;
            HART_COMM_13.TimeOut := HART_TIMEOUT;

            // HART_FUNC := 'Функция 13';
            HART_FUNCTIONS := 13;

        8:  (* Функция 14 - чтение информации сенсора первичной переменной *)
            HART_COMM_13.Request := FALSE;

            HART_COMM_14.Request := TRUE;
            HART_COMM_14.Bus := HART_BUS;
            HART_COMM_14.Device := HART_DEVICE;
            HART_COMM_14.Channel := HART_CHANNEL;
            HART_COMM_14.TimeOut := HART_TIMEOUT;

            // HART_FUNC := 'Функция 14';
            HART_FUNCTIONS := 14;

        9:  (* Функция 15 - чтение информации о выходном сигнале по первичной переменной *)
            HART_COMM_14.Request := FALSE;

            HART_COMM_15.Request := TRUE;
            HART_COMM_15.Bus := HART_BUS;
            HART_COMM_15.Device := HART_DEVICE;
            HART_COMM_15.Channel := HART_CHANNEL;
            HART_COMM_15.TimeOut := HART_TIMEOUT;

            // HART_FUNC := 'Функция 15';
            HART_FUNCTIONS := 15;

        10: (* Функция 16 - чтение сборочного номера устройства *)
            HART_COMM_15.Request := FALSE;

            HART_COMM_16.Request := TRUE;
            HART_COMM_16.Bus := HART_BUS;
            HART_COMM_16.Device := HART_DEVICE;
            HART_COMM_16.Channel := HART_CHANNEL;
            HART_COMM_16.TimeOut := HART_TIMEOUT;

            // HART_FUNC := 'Функция 16';
            HART_FUNCTIONS := 16;

        11: (* Функция 33 - чтение переменных датчика *)
            HART_COMM_16.Request := FALSE;

            HART_COMM_33.Request := TRUE;
            HART_COMM_33.Bus := HART_BUS;
            HART_COMM_33.Device := HART_DEVICE;
            HART_COMM_33.Channel := HART_CHANNEL;
            HART_COMM_33.TimeOut := HART_TIMEOUT;

            // HART_FUNC := 'Функция 33';
            HART_FUNCTIONS := 33;

        12: (* Функция 34 - запись значения демпфирования первичной переменной *)
            HART_COMM_33.Request := FALSE;

            HART_COMM_34.Request := TRUE;
            HART_COMM_34.Bus := HART_BUS;
            HART_COMM_34.Device := HART_DEVICE;
            HART_COMM_34.Channel := HART_CHANNEL;
            HART_COMM_34.TimeOut := HART_TIMEOUT;

            // HART_FUNC := 'Функция 34';
            HART_FUNCTIONS := 34;

        13: (* Функция 35 - запись значения диапазона первичной переменной *)
            HART_COMM_34.Request := FALSE;

            HART_COMM_35.Request := TRUE;
            HART_COMM_35.Bus := HART_BUS;
            HART_COMM_35.Device := HART_DEVICE;
            HART_COMM_35.Channel := HART_CHANNEL;
            HART_COMM_35.TimeOut := HART_TIMEOUT;

            // HART_FUNC := 'Функция 35';
            HART_FUNCTIONS := 35;

        14: (* Функция 48 - чтение дополнительного состояния датчика *)
            HART_COMM_35.Request := FALSE;

            HART_COMM_48.Request := TRUE;
            HART_COMM_48.Bus := HART_BUS;
            HART_COMM_48.Device := HART_DEVICE;
            HART_COMM_48.Channel := HART_CHANNEL;
            HART_COMM_48.TimeOut := HART_TIMEOUT;

            // HART_FUNC := 'Функция 48';
            HART_FUNCTIONS := 48;

        15: (* Функция 50 - чтение назначения динамических переменных *)
            HART_COMM_48.Request := FALSE;

            HART_COMM_50.Request := TRUE;
            HART_COMM_50.Bus := HART_BUS;
            HART_COMM_50.Device := HART_DEVICE;
            HART_COMM_50.Channel := HART_CHANNEL;
            HART_COMM_50.TimeOut := HART_TIMEOUT;

            // HART_FUNC := 'Функция 50';
            HART_FUNCTIONS := 50;

        16: (* Функция 54 - чтение информации о переменной датчика *)
            HART_COMM_50.Request := FALSE;

            HART_COMM_54.Request := TRUE;
            HART_COMM_54.Bus := HART_BUS;
            HART_COMM_54.Device := HART_DEVICE;
            HART_COMM_54.Channel := HART_CHANNEL;
            HART_COMM_54.TimeOut := HART_TIMEOUT;

            // HART_FUNC := 'Функция 54';
            HART_FUNCTIONS := 54;

            STEP_PULL := 0;
            FINAL_PULL := TRUE;

    END_CASE;
END_IF;

// Ошибка опроса
IF HART_COMM_00.Error <> 0
    OR HART_COMM_01.Error <> 0
    OR HART_COMM_02.Error <> 0
    OR HART_COMM_03.Error <> 0
    OR HART_COMM_06.Error <> 0
    OR HART_COMM_12.Error <> 0
    OR HART_COMM_13.Error <> 0
    OR HART_COMM_14.Error <> 0
    OR HART_COMM_15.Error <> 0
    OR HART_COMM_16.Error <> 0
    OR HART_COMM_33.Error <> 0
    OR HART_COMM_34.Error <> 0
    OR HART_COMM_35.Error <> 0
    OR HART_COMM_48.Error <> 0
    OR HART_COMM_50.Error <> 0
    OR HART_COMM_54.Error <> 0 THEN

    HART_PULL_ERROR := TRUE;

END_IF;


END_PROGRAM