PROGRAM HART_PULL_v2

(* Программа опроса устройств по HART-протоколу *)

(* В программе происходит поочерёдное переключение команд запроса/чтения *)
(* Команда опроса переключается по временному интервалу *)
(* Ошибки опроса не учитываются при переключении команды опроса *)


// Конфигурация ФБ HART_Communication
// HART_COMM - экземпляр ФБ HART_Communication
HART_COMM.Bus := 1;                                                               // Тип - UDINT. Адрес шины Unitbus
HART_COMM.Device := 2;                                                            // Тип - UDINT. Адрес шины Unitbus
HART_COMM.Channel := 3;                                                           // Тип - UDINT. Адрес канала модуля на шине Unitbus
HART_COMM.TimeOut := 500;                                                         // Тип - UDINT. Время ожидания выполения команды, с
HART_COMM ();                                                                     // Вызов ФБ HART_Communication

// Настройка таймера реального времени
// TIME_RV - экземпляр FB IMPRV
TIME_RV.W := 0;                                                                   // Тип - BOOL. Режим работы: 0-периодический, 1-одиночный
TIME_RV.Nh := 0;                                                                  // Тип - DINT. Значение часа
TIME_RV.Nm := 0;                                                                  // Тип - DINT. Значение минут
TIME_RV.Ns := TIME_PULL;                                                          // Тип - DINT. Значение секунд
TIME_RV.Timp := _PRESET_CYCLE_TIME;                                               // Тип - TIME. Длительность выходного импульса
TIME_RV ();                                                                       // Вызов блока IMPRV

// Таймер времени выполнения опроса
// PULL_TON - экземпляр FB TON
// _PRESET_CYCLE_TIME - время цикла ресурса
PULL_TON.IN := HART_COMM.Busy;                                                    // Сигнал выполнения блока HART
PULL_TON.PT := T#500ms;                                                           // Задержка по времени
PULL_TON ();                                                                      // Вызов блока TON

// Инициализация опроса
IF REQUEST AND TIME_RV.Out THEN

    // Приращение номера ветвления
    // IF CMD_DONE OR ERROR_VALID THEN

        STEP_PULL := STEP_PULL + 1;                                               // Переключение после каждого завершённого шага

    // END_IF;

    // Сброс команды выполнения опроса
    // REQUEST_CASE := TRUE;

    CASE STEP_PULL OF

        1:  (* Функция 0 - чтение уникального идентификатора/адреса устройства *)
            // Сброс предыдущего опроса
            CMD_DONE := FALSE;
            ERROR_VALID := FALSE;
            HART_PULL_ERROR := FALSE;
            // HART_COMM.DataIn := 0;

            // Индикация выполняемой функции
            // HART_FUNC := 'Функция 0';                                             // Текущая функция опроса
            HART_FUNCTIONS := 0;                                                  // Текущая функция опроса

            // Вызов блока запроса
            HART_REQUEST_CMD_00 ();                                               // HART_REQUEST_CMD_00 - экземпляр ФБ HART_Cmd0_Request
            HART_COMM.DataIn.Command := HART_REQUEST_CMD_00.Out.Command;          // Формирование команды
            HART_COMM.DataIn.Data := HART_REQUEST_CMD_00.Out.Data;                // Формирование данных

            REQUEST_CASE := TRUE;
            HART_COMM.Request := REQUEST_CASE;                                    // Команда выполнения опроса

            // Ошибка по времени выполнения опроса
            HART_PULL_ERROR := PULL_TON.Q;                                        // Тип - BOOL

            IF HART_COMM.Done AND HART_COMM.Error = 0 THEN

                // Вызов блока разбора ответа
                // HART_RESPONCE_CMD_00 - экземпляр ФБ HART_Cmd0_Responce
                HART_RESPONCE_CMD_00.In := HART_COMM.DataOut;                     // Данные для разбора
                HART_RESPONCE_CMD_00 ();                                          // Вызов ФБ HART_Cmd0_Responce

                // Соотвтетсвие переданных данных
                IF HART_RESPONCE_CMD_00.IsValid THEN

                    // Успешное завершение опроса
                    CMD_DONE := TRUE;

                    // Ошибка соотвтетсвия данных
                    ELSE ERROR_VALID := TRUE;

                END_IF;
            END_IF;

            // Ошибка опроса
            IF HART_COMM.Error <> 0 THEN 

                // Выходной сигнал ошибки
                HART_PULL_ERROR := TRUE;

            END_IF;

            // Сохранение ошибки опроса
            IF ERROR_VALID OR HART_PULL_ERROR THEN

                HART_CMD_00_ERROR := HART_COMM.Error;

            END_IF;

            // Завершение опроса
            REQUEST_CASE := FALSE;

        2:  (* Функция 1 - чтение первичной переменной *)

            // Сброс предыдущего опроса
            CMD_DONE := FALSE;
            ERROR_VALID := FALSE;
            HART_PULL_ERROR := FALSE;
            // HART_COMM.DataIn := 0;

            // Индикация выполняемой функции
            // HART_FUNC := 'Функция 1';                                             // Текущая функция опроса
            HART_FUNCTIONS := 1;                                                  // Текущая функция опроса

            // Вызов блока запроса
            HART_REQUEST_CMD_01 ();                                               // HART_REQUEST_CMD_01 - экземпляр ФБ HART_Cmd1_Request
            HART_COMM.DataIn.Command := HART_REQUEST_CMD_01.Out.Command;          // Формирование команды
            HART_COMM.DataIn.Data := HART_REQUEST_CMD_01.Out.Data;                // Формирование данных 

            REQUEST_CASE := TRUE;
            HART_COMM.Request := REQUEST_CASE;                                    // Команда выполнения опроса
          
            // Ошибка по времени выполнения опроса
            HART_PULL_ERROR := PULL_TON.Q;                                        // Тип - BOOL

            IF HART_COMM.Done AND HART_COMM.Error = 0 THEN

                // Вызов блока разбора ответа
                // HART_RESPONCE_CMD_01 - экземпляр ФБ HART_Cmd0_Responce
                HART_RESPONCE_CMD_01.In := HART_COMM.DataOut;                     // Данные для разбора
                HART_RESPONCE_CMD_01 ();                                          // Вызов ФБ HART_Cmd1_Responce

                // Соотвтетсвие переданных данных
                IF HART_RESPONCE_CMD_01.IsValid THEN

                    // Успешное завершение опроса
                    CMD_DONE := TRUE;

                    // Ошибка соотвтетсвия данных
                    ELSE ERROR_VALID := TRUE;

                END_IF;
            END_IF;

            // Ошибка опроса
            IF HART_COMM.Error <> 0 THEN 

                // Выходной сигнал ошибки
                HART_PULL_ERROR := TRUE;

            END_IF;

            // Сохранение ошибки опроса
            IF ERROR_VALID OR HART_PULL_ERROR THEN

                HART_CMD_01_ERROR := HART_COMM.Error;

            END_IF;

            // Завершение опроса
            REQUEST_CASE := FALSE;

        3:  (* Функция 2 - чтение первичной переменной как величины тока и в процентах от диапазона *)

            // Сброс предыдущего опроса
            CMD_DONE := FALSE;
            ERROR_VALID := FALSE;
            HART_PULL_ERROR := FALSE;
            // HART_COMM.DataIn := 0;

            // Индикация выполняемой функции
            // HART_FUNC := 'Функция 2';                                             // Текущая функция опроса
            HART_FUNCTIONS := 2;                                                  // Текущая функция опроса

            // Вызов блока запроса
            HART_REQUEST_CMD_02 ();                                               // HART_REQUEST_CMD_02 - экземпляр ФБ HART_Cmd1_Request
            HART_COMM.DataIn.Command := HART_REQUEST_CMD_02.Out.Command;          // Формирование команды
            HART_COMM.DataIn.Data := HART_REQUEST_CMD_02.Out.Data;                // Формирование данных

            // Инициализация опроса            
            REQUEST_CASE := TRUE;
            HART_COMM.Request := REQUEST_CASE;                                    // Команда выполнения опроса
            
            // Ошибка по времени выполнения опроса
            HART_PULL_ERROR := PULL_TON.Q;                                        // Тип - BOOL

            IF HART_COMM.Done AND HART_COMM.Error = 0 THEN

                // Вызов блока разбора ответа
                // HART_RESPONCE_CMD_02 - экземпляр ФБ HART_Cmd0_Responce
                HART_RESPONCE_CMD_02.In := HART_COMM.DataOut;                     // Данные для разбора
                HART_RESPONCE_CMD_02 ();                                          // Вызов ФБ HART_Cmd1_Responce

                // Соотвтетсвие переданных данных
                IF HART_RESPONCE_CMD_02.IsValid THEN

                    // Успешное завершение опроса
                    CMD_DONE := TRUE;

                    // Ошибка соотвтетсвия данных
                    ELSE ERROR_VALID := TRUE;

                END_IF;
            END_IF;

            // Ошибка опроса
            IF HART_COMM.Error <> 0 THEN 

                // Выходной сигнал ошибки
                HART_PULL_ERROR := TRUE;

            END_IF;

            // Сохранение ошибки опроса
            IF ERROR_VALID OR HART_PULL_ERROR THEN

                HART_CMD_02_ERROR := HART_COMM.Error;

            END_IF;

            // Завершение опроса
            REQUEST_CASE := FALSE;

        4:  (* Функция 3 - чтение динамических переменных и токового значения первичной переменной *)

            // Сброс предыдущего опроса
            CMD_DONE := FALSE;
            ERROR_VALID := FALSE;
            HART_PULL_ERROR := FALSE;
            // HART_COMM.DataIn := 0;

            // Индикация выполняемой функции
            // HART_FUNC := 'Функция 3';                                             // Текущая функция опроса
            HART_FUNCTIONS := 3;                                                  // Текущая функция опроса

            // Вызов блока запроса
            HART_REQUEST_CMD_03 ();                                               // HART_REQUEST_CMD_03 - экземпляр ФБ HART_Cmd1_Request
            HART_COMM.DataIn.Command := HART_REQUEST_CMD_03.Out.Command;          // Формирование команды
            HART_COMM.DataIn.Data := HART_REQUEST_CMD_03.Out.Data;                // Формирование данных

            // Инициализация опроса            
            REQUEST_CASE := TRUE;
            HART_COMM.Request := REQUEST_CASE;                                    // Команда выполнения опроса
            
            // Ошибка по времени выполнения опроса
            HART_PULL_ERROR := PULL_TON.Q;                                        // Тип - BOOL

            IF HART_COMM.Done AND HART_COMM.Error = 0 THEN

                // Вызов блока разбора ответа
                // HART_RESPONCE_CMD_03 - экземпляр ФБ HART_Cmd0_Responce
                HART_RESPONCE_CMD_03.In := HART_COMM.DataOut;                     // Данные для разбора
                HART_RESPONCE_CMD_03 ();                                          // Вызов ФБ HART_Cmd3_Responce

                // Соотвтетсвие переданных данных
                IF HART_RESPONCE_CMD_03.IsValid THEN

                    // Успешное завершение опроса
                    CMD_DONE := TRUE;

                    // Ошибка соотвтетсвия данных
                    ELSE ERROR_VALID := TRUE;

                END_IF;
            END_IF;

            // Ошибка опроса
            IF HART_COMM.Error <> 0 THEN 

                // Выходной сигнал ошибки
                HART_PULL_ERROR := TRUE;

            END_IF;

            // Сохранение ошибки опроса
            IF ERROR_VALID OR HART_PULL_ERROR THEN

                HART_CMD_03_ERROR := HART_COMM.Error;

            END_IF;

            // Завершение опроса
            REQUEST_CASE := FALSE;

        5:  (* Функция 6 - запись адреса устройства *)

            // Сброс предыдущего опроса
            CMD_DONE := FALSE;
            ERROR_VALID := FALSE;
            HART_PULL_ERROR := FALSE;
            // HART_COMM.DataIn := 0;

            // Индикация выполняемой функции
            // HART_FUNC := 'Функция 6';                                             // Текущая функция опроса
            HART_FUNCTIONS := 6;                                                  // Текущая функция опроса

            // Вызов блока запроса
            HART_REQUEST_CMD_06 ();                                               // HART_REQUEST_CMD_06 - экземпляр ФБ HART_Cmd1_Request
            HART_COMM.DataIn.Command := HART_REQUEST_CMD_06.Out.Command;          // Формирование команды
            HART_COMM.DataIn.Data := HART_REQUEST_CMD_06.Out.Data;                // Формирование данных

            // Инициализация опроса            
            REQUEST_CASE := TRUE;
            HART_COMM.Request := REQUEST_CASE;                                    // Команда выполнения опроса
            
            // Ошибка по времени выполнения опроса
            HART_PULL_ERROR := PULL_TON.Q;                                        // Тип - BOOL

            IF HART_COMM.Done AND HART_COMM.Error = 0 THEN

                // Вызов блока разбора ответа
                // HART_RESPONCE_CMD_06 - экземпляр ФБ HART_Cmd0_Responce
                HART_RESPONCE_CMD_06.In := HART_COMM.DataOut;                     // Данные для разбора
                HART_RESPONCE_CMD_06 ();                                          // Вызов ФБ HART_Cmd6_Responce

                // Соотвтетсвие переданных данных
                IF HART_RESPONCE_CMD_06.IsValid THEN

                    // Успешное завершение опроса
                    CMD_DONE := TRUE;

                    // Ошибка соотвтетсвия данных
                    ELSE ERROR_VALID := TRUE;

                END_IF;
            END_IF;

            // Ошибка опроса
            IF HART_COMM.Error <> 0 THEN 

                // Выходной сигнал ошибки
                HART_PULL_ERROR := TRUE;

            END_IF;

            // Сохранение ошибки опроса
            IF ERROR_VALID OR HART_PULL_ERROR THEN

                HART_CMD_06_ERROR := HART_COMM.Error;

            END_IF;

            // Завершение опроса
            REQUEST_CASE := FALSE;

        6:  (* Функция 12 - чтение сообщения, содержащегося в устройстве *)

            // Сброс предыдущего опроса
            CMD_DONE := FALSE;
            ERROR_VALID := FALSE;
            HART_PULL_ERROR := FALSE;
            // HART_COMM.DataIn := 0;

            // Индикация выполняемой функции
            // HART_FUNC := 'Функция 12';                                            // Текущая функция опроса
            HART_FUNCTIONS := 12;                                                 // Текущая функция опроса

            // Вызов блока запроса
            HART_REQUEST_CMD_12 ();                                               // HART_REQUEST_CMD_12 - экземпляр ФБ HART_Cmd1_Request
            HART_COMM.DataIn.Command := HART_REQUEST_CMD_12.Out.Command;          // Формирование команды
            HART_COMM.DataIn.Data := HART_REQUEST_CMD_12.Out.Data;                // Формирование данных

            // Инициализация опроса            
            REQUEST_CASE := TRUE;
            HART_COMM.Request := REQUEST_CASE;                                    // Команда выполнения опроса
            
            // Ошибка по времени выполнения опроса
            HART_PULL_ERROR := PULL_TON.Q;                                        // Тип - BOOL

            IF HART_COMM.Done AND HART_COMM.Error = 0 THEN

                // Вызов блока разбора ответа
                // HART_RESPONCE_CMD_12 - экземпляр ФБ HART_Cmd0_Responce
                HART_RESPONCE_CMD_12.In := HART_COMM.DataOut;                     // Данные для разбора
                HART_RESPONCE_CMD_12 ();                                          // Вызов ФБ HART_Cmd12_Responce

                // Соотвтетсвие переданных данных
                IF HART_RESPONCE_CMD_12.IsValid THEN

                    // Успешное завершение опроса
                    CMD_DONE := TRUE;

                    // Ошибка соотвтетсвия данных
                    ELSE ERROR_VALID := TRUE;

                END_IF;
            END_IF;

            // Ошибка опроса
            IF HART_COMM.Error <> 0 THEN 

                // Выходной сигнал ошибки
                HART_PULL_ERROR := TRUE;

            END_IF;

            // Сохранение ошибки опроса
            IF ERROR_VALID OR HART_PULL_ERROR THEN

                HART_CMD_12_ERROR := HART_COMM.Error;

            END_IF;

            // Завершение опроса
            REQUEST_CASE := FALSE;

        7:  (* Функция 13 - чтение текстового тега, описателя и даты *)

            // Сброс предыдущего опроса
            CMD_DONE := FALSE;
            ERROR_VALID := FALSE;
            HART_PULL_ERROR := FALSE;
            // HART_COMM.DataIn := 0;

            // Индикация выполняемой функции
            // HART_FUNC := 'Функция 13';                                            // Текущая функция опроса
            HART_FUNCTIONS := 13;                                                 // Текущая функция опроса

            // Вызов блока запроса
            HART_REQUEST_CMD_13 ();                                               // HART_REQUEST_CMD_13 - экземпляр ФБ HART_Cmd1_Request
            HART_COMM.DataIn.Command := HART_REQUEST_CMD_13.Out.Command;          // Формирование команды
            HART_COMM.DataIn.Data := HART_REQUEST_CMD_13.Out.Data;                // Формирование данных

            // Инициализация опроса            
            REQUEST_CASE := TRUE;
            HART_COMM.Request := REQUEST_CASE;                                    // Команда выполнения опроса
            
            // Ошибка по времени выполнения опроса
            HART_PULL_ERROR := PULL_TON.Q;                                        // Тип - BOOL

            IF HART_COMM.Done AND HART_COMM.Error = 0 THEN

                // Вызов блока разбора ответа
                // HART_RESPONCE_CMD_13 - экземпляр ФБ HART_Cmd0_Responce
                HART_RESPONCE_CMD_13.In := HART_COMM.DataOut;                     // Данные для разбора
                HART_RESPONCE_CMD_13 ();                                          // Вызов ФБ HART_Cmd13_Responce

                // Соотвтетсвие переданных данных
                IF HART_RESPONCE_CMD_13.IsValid THEN

                    // Успешное завершение опроса
                    CMD_DONE := TRUE;

                    // Ошибка соотвтетсвия данных
                    ELSE ERROR_VALID := TRUE;

                END_IF;
            END_IF;

            // Ошибка опроса
            IF HART_COMM.Error <> 0 THEN 

                // Выходной сигнал ошибки
                HART_PULL_ERROR := TRUE;

            END_IF;

            // Сохранение ошибки опроса
            IF ERROR_VALID OR HART_PULL_ERROR THEN

                HART_CMD_13_ERROR := HART_COMM.Error;

            END_IF;

            // Завершение опроса
            REQUEST_CASE := FALSE;

        8:  (* Функция 14 - чтение информации сенсора первичной переменной *)

            // Сброс предыдущего опроса
            CMD_DONE := FALSE;
            ERROR_VALID := FALSE;
            HART_PULL_ERROR := FALSE;
            // HART_COMM.DataIn := 0;

            // Индикация выполняемой функции
            // HART_FUNC := 'Функция 14';                                            // Текущая функция опроса
            HART_FUNCTIONS := 14;                                                 // Текущая функция опроса

            // Вызов блока запроса
            HART_REQUEST_CMD_14 ();                                               // HART_REQUEST_CMD_14 - экземпляр ФБ HART_Cmd1_Request
            HART_COMM.DataIn.Command := HART_REQUEST_CMD_14.Out.Command;          // Формирование команды
            HART_COMM.DataIn.Data := HART_REQUEST_CMD_14.Out.Data;                // Формирование данных

            // Инициализация опроса            
            REQUEST_CASE := TRUE;
            HART_COMM.Request := REQUEST_CASE;                                    // Команда выполнения опроса
            
            // Ошибка по времени выполнения опроса
            HART_PULL_ERROR := PULL_TON.Q;                                        // Тип - BOOL

            IF HART_COMM.Done AND HART_COMM.Error = 0 THEN

                // Вызов блока разбора ответа
                // HART_RESPONCE_CMD_14 - экземпляр ФБ HART_Cmd0_Responce
                HART_RESPONCE_CMD_14.In := HART_COMM.DataOut;                     // Данные для разбора
                HART_RESPONCE_CMD_14 ();                                          // Вызов ФБ HART_Cmd14_Responce

                // Соотвтетсвие переданных данных
                IF HART_RESPONCE_CMD_14.IsValid THEN

                    // Успешное завершение опроса
                    CMD_DONE := TRUE;

                    // Ошибка соотвтетсвия данных
                    ELSE ERROR_VALID := TRUE;

                END_IF;
            END_IF;

            // Ошибка опроса
            IF HART_COMM.Error <> 0 THEN 

                // Выходной сигнал ошибки
                HART_PULL_ERROR := TRUE;

            END_IF;

            // Сохранение ошибки опроса
            IF ERROR_VALID OR HART_PULL_ERROR THEN

                HART_CMD_14_ERROR := HART_COMM.Error;

            END_IF;

            // Завершение опроса
            REQUEST_CASE := FALSE;

        9:  (* Функция 15 - чтение информации о выходном сигнале по первичной переменной *)

            // Сброс предыдущего опроса
            CMD_DONE := FALSE;
            ERROR_VALID := FALSE;
            HART_PULL_ERROR := FALSE;
            // HART_COMM.DataIn := 0;

            // Индикация выполняемой функции
            // HART_FUNC := 'Функция 15';                                            // Текущая функция опроса
            HART_FUNCTIONS := 15;                                                 // Текущая функция опроса

            // Вызов блока запроса
            HART_REQUEST_CMD_15 ();                                               // HART_REQUEST_CMD_15 - экземпляр ФБ HART_Cmd1_Request
            HART_COMM.DataIn.Command := HART_REQUEST_CMD_15.Out.Command;          // Формирование команды
            HART_COMM.DataIn.Data := HART_REQUEST_CMD_15.Out.Data;                // Формирование данных

            // Инициализация опроса            
            REQUEST_CASE := TRUE;
            HART_COMM.Request := REQUEST_CASE;                                    // Команда выполнения опроса
            
            // Ошибка по времени выполнения опроса
            HART_PULL_ERROR := PULL_TON.Q;                                        // Тип - BOOL

            IF HART_COMM.Done AND HART_COMM.Error = 0 THEN

                // Вызов блока разбора ответа
                // HART_RESPONCE_CMD_15 - экземпляр ФБ HART_Cmd0_Responce
                HART_RESPONCE_CMD_15.In := HART_COMM.DataOut;                     // Данные для разбора
                HART_RESPONCE_CMD_15 ();                                          // Вызов ФБ HART_Cmd15_Responce

                // Соотвтетсвие переданных данных
                IF HART_RESPONCE_CMD_15.IsValid THEN

                    // Успешное завершение опроса
                    CMD_DONE := TRUE;

                    // Ошибка соотвтетсвия данных
                    ELSE ERROR_VALID := TRUE;

                END_IF;
            END_IF;

            // Ошибка опроса
            IF HART_COMM.Error <> 0 THEN 

                // Выходной сигнал ошибки
                HART_PULL_ERROR := TRUE;

            END_IF;

            // Сохранение ошибки опроса
            IF ERROR_VALID OR HART_PULL_ERROR THEN

                HART_CMD_15_ERROR := HART_COMM.Error;

            END_IF;

            // Завершение опроса
            REQUEST_CASE := FALSE;

        10:  (* Функция 16 - чтение сборочного номера устройства *)

            // Сброс предыдущего опроса
            CMD_DONE := FALSE;
            ERROR_VALID := FALSE;
            HART_PULL_ERROR := FALSE;
            // HART_COMM.DataIn := 0;

            // Индикация выполняемой функции
            // HART_FUNC := 'Функция 16';                                            // Текущая функция опроса
            HART_FUNCTIONS := 16;                                                 // Текущая функция опроса

            // Вызов блока запроса
            HART_REQUEST_CMD_16 ();                                               // HART_REQUEST_CMD_16 - экземпляр ФБ HART_Cmd1_Request
            HART_COMM.DataIn.Command := HART_REQUEST_CMD_16.Out.Command;          // Формирование команды
            HART_COMM.DataIn.Data := HART_REQUEST_CMD_16.Out.Data;                // Формирование данных

            // Инициализация опроса            
            REQUEST_CASE := TRUE;
            HART_COMM.Request := REQUEST_CASE;                                    // Команда выполнения опроса
            
            // Ошибка по времени выполнения опроса
            HART_PULL_ERROR := PULL_TON.Q;                                        // Тип - BOOL

            IF HART_COMM.Done AND HART_COMM.Error = 0 THEN

                // Вызов блока разбора ответа
                // HART_RESPONCE_CMD_16 - экземпляр ФБ HART_Cmd0_Responce
                HART_RESPONCE_CMD_16.In := HART_COMM.DataOut;                     // Данные для разбора
                HART_RESPONCE_CMD_16 ();                                          // Вызов ФБ HART_Cmd16_Responce

                // Соотвтетсвие переданных данных
                IF HART_RESPONCE_CMD_16.IsValid THEN

                    // Успешное завершение опроса
                    CMD_DONE := TRUE;

                    // Ошибка соотвтетсвия данных
                    ELSE ERROR_VALID := TRUE;

                END_IF;
            END_IF;

            // Ошибка опроса
            IF HART_COMM.Error <> 0 THEN 

                // Выходной сигнал ошибки
                HART_PULL_ERROR := TRUE;

            END_IF;

            // Сохранение ошибки опроса
            IF ERROR_VALID OR HART_PULL_ERROR THEN

                HART_CMD_16_ERROR := HART_COMM.Error;

            END_IF;

            // Завершение опроса
            REQUEST_CASE := FALSE;

        11:  (* Функция 33 - чтение переменных датчика *)

            // Сброс предыдущего опроса
            CMD_DONE := FALSE;
            ERROR_VALID := FALSE;
            HART_PULL_ERROR := FALSE;
            // HART_COMM.DataIn := 0;

            // Индикация выполняемой функции
            // HART_FUNC := 'Функция 33';                                            // Текущая функция опроса
            HART_FUNCTIONS := 33;                                                 // Текущая функция опроса

            // Вызов блока запроса
            HART_REQUEST_CMD_33 ();                                               // HART_REQUEST_CMD_33 - экземпляр ФБ HART_Cmd1_Request
            HART_COMM.DataIn.Command := HART_REQUEST_CMD_33.Out.Command;          // Формирование команды
            HART_COMM.DataIn.Data := HART_REQUEST_CMD_33.Out.Data;                // Формирование данных

            // Инициализация опроса            
            REQUEST_CASE := TRUE;
            HART_COMM.Request := REQUEST_CASE;                                    // Команда выполнения опроса
            
            // Ошибка по времени выполнения опроса
            HART_PULL_ERROR := PULL_TON.Q;                                        // Тип - BOOL

            IF HART_COMM.Done AND HART_COMM.Error = 0 THEN

                // Вызов блока разбора ответа
                // HART_RESPONCE_CMD_33 - экземпляр ФБ HART_Cmd0_Responce
                HART_RESPONCE_CMD_33.In := HART_COMM.DataOut;                     // Данные для разбора
                HART_RESPONCE_CMD_33 ();                                          // Вызов ФБ HART_Cmd33_Responce

                // Соотвтетсвие переданных данных
                IF HART_RESPONCE_CMD_33.IsValid THEN

                    // Успешное завершение опроса
                    CMD_DONE := TRUE;

                    // Ошибка соотвтетсвия данных
                    ELSE ERROR_VALID := TRUE;

                END_IF;
            END_IF;

            // Ошибка опроса
            IF HART_COMM.Error <> 0 THEN 

                // Выходной сигнал ошибки
                HART_PULL_ERROR := TRUE;

            END_IF;

            // Сохранение ошибки опроса
            IF ERROR_VALID OR HART_PULL_ERROR THEN

                HART_CMD_33_ERROR := HART_COMM.Error;

            END_IF;

            // Завершение опроса
            REQUEST_CASE := FALSE;

        12:  (* Функция 34 - запись значения демпфирования первичной переменной *)

            // Сброс предыдущего опроса
            CMD_DONE := FALSE;
            ERROR_VALID := FALSE;
            HART_PULL_ERROR := FALSE;
            // HART_COMM.DataIn := 0;

            // Индикация выполняемой функции
            // HART_FUNC := 'Функция 34';                                            // Текущая функция опроса
            HART_FUNCTIONS := 34;                                                 // Текущая функция опроса

            // Вызов блока запроса
            HART_REQUEST_CMD_34 ();                                               // HART_REQUEST_CMD_34 - экземпляр ФБ HART_Cmd1_Request
            HART_COMM.DataIn.Command := HART_REQUEST_CMD_34.Out.Command;          // Формирование команды
            HART_COMM.DataIn.Data := HART_REQUEST_CMD_34.Out.Data;                // Формирование данных

            // Инициализация опроса            
            REQUEST_CASE := TRUE;
            HART_COMM.Request := REQUEST_CASE;                                    // Команда выполнения опроса
            
            // Ошибка по времени выполнения опроса
            HART_PULL_ERROR := PULL_TON.Q;                                        // Тип - BOOL

            IF HART_COMM.Done AND HART_COMM.Error = 0 THEN

                // Вызов блока разбора ответа
                // HART_RESPONCE_CMD_34 - экземпляр ФБ HART_Cmd0_Responce
                HART_RESPONCE_CMD_34.In := HART_COMM.DataOut;                     // Данные для разбора
                HART_RESPONCE_CMD_34 ();                                          // Вызов ФБ HART_Cmd34_Responce

                // Соотвтетсвие переданных данных
                IF HART_RESPONCE_CMD_34.IsValid THEN

                    // Успешное завершение опроса
                    CMD_DONE := TRUE;

                    // Ошибка соотвтетсвия данных
                    ELSE ERROR_VALID := TRUE;

                END_IF;
            END_IF;

            // Ошибка опроса
            IF HART_COMM.Error <> 0 THEN 

                // Выходной сигнал ошибки
                HART_PULL_ERROR := TRUE;

            END_IF;

            // Сохранение ошибки опроса
            IF ERROR_VALID OR HART_PULL_ERROR THEN

                HART_CMD_34_ERROR := HART_COMM.Error;

            END_IF;

            // Завершение опроса
            REQUEST_CASE := FALSE;

        13:  (* Функция 35 - запись значения диапазона первичной переменной *)

            // Сброс предыдущего опроса
            CMD_DONE := FALSE;
            ERROR_VALID := FALSE;
            HART_PULL_ERROR := FALSE;
            // HART_COMM.DataIn := 0;

            // Индикация выполняемой функции
            // HART_FUNC := 'Функция 35';                                            // Текущая функция опроса
            HART_FUNCTIONS := 35;                                                 // Текущая функция опроса

            // Вызов блока запроса
            HART_REQUEST_CMD_35 ();                                               // HART_REQUEST_CMD_35 - экземпляр ФБ HART_Cmd1_Request
            HART_COMM.DataIn.Command := HART_REQUEST_CMD_35.Out.Command;          // Формирование команды
            HART_COMM.DataIn.Data := HART_REQUEST_CMD_35.Out.Data;                // Формирование данных

            // Инициализация опроса            
            REQUEST_CASE := TRUE;
            HART_COMM.Request := REQUEST_CASE;                                    // Команда выполнения опроса
            
            // Ошибка по времени выполнения опроса
            HART_PULL_ERROR := PULL_TON.Q;                                        // Тип - BOOL

            IF HART_COMM.Done AND HART_COMM.Error = 0 THEN

                // Вызов блока разбора ответа
                // HART_RESPONCE_CMD_35 - экземпляр ФБ HART_Cmd0_Responce
                HART_RESPONCE_CMD_35.In := HART_COMM.DataOut;                     // Данные для разбора
                HART_RESPONCE_CMD_35 ();                                          // Вызов ФБ HART_Cmd35_Responce

                // Соотвтетсвие переданных данных
                IF HART_RESPONCE_CMD_35.IsValid THEN

                    // Успешное завершение опроса
                    CMD_DONE := TRUE;

                    // Ошибка соотвтетсвия данных
                    ELSE ERROR_VALID := TRUE;

                END_IF;
            END_IF;

            // Ошибка опроса
            IF HART_COMM.Error <> 0 THEN 

                // Выходной сигнал ошибки
                HART_PULL_ERROR := TRUE;

            END_IF;

            // Сохранение ошибки опроса
            IF ERROR_VALID OR HART_PULL_ERROR THEN

                HART_CMD_35_ERROR := HART_COMM.Error;

            END_IF;

            // Завершение опроса
            REQUEST_CASE := FALSE;

        14:  (* Функция 48 - чтение дополнительного состояния датчика *)

            // Сброс предыдущего опроса
            CMD_DONE := FALSE;
            ERROR_VALID := FALSE;
            HART_PULL_ERROR := FALSE;
            // HART_COMM.DataIn := 0;

            // Индикация выполняемой функции
            // HART_FUNC := 'Функция 48';                                            // Текущая функция опроса
            HART_FUNCTIONS := 48;                                                 // Текущая функция опроса

            // Вызов блока запроса
            HART_REQUEST_CMD_48 ();                                               // HART_REQUEST_CMD_48 - экземпляр ФБ HART_Cmd1_Request
            HART_COMM.DataIn.Command := HART_REQUEST_CMD_48.Out.Command;          // Формирование команды
            HART_COMM.DataIn.Data := HART_REQUEST_CMD_48.Out.Data;                // Формирование данных

            // Инициализация опроса            
            REQUEST_CASE := TRUE;
            HART_COMM.Request := REQUEST_CASE;                                    // Команда выполнения опроса
            
            // Ошибка по времени выполнения опроса
            HART_PULL_ERROR := PULL_TON.Q;                                        // Тип - BOOL

            IF HART_COMM.Done AND HART_COMM.Error = 0 THEN

                // Вызов блока разбора ответа
                // HART_RESPONCE_CMD_48 - экземпляр ФБ HART_Cmd0_Responce
                HART_RESPONCE_CMD_48.In := HART_COMM.DataOut;                     // Данные для разбора
                HART_RESPONCE_CMD_48 ();                                          // Вызов ФБ HART_Cmd48_Responce

                // Соотвтетсвие переданных данных
                IF HART_RESPONCE_CMD_48.IsValid THEN

                    // Успешное завершение опроса
                    CMD_DONE := TRUE;

                    // Ошибка соотвтетсвия данных
                    ELSE ERROR_VALID := TRUE;

                END_IF;
            END_IF;

            // Ошибка опроса
            IF HART_COMM.Error <> 0 THEN 

                // Выходной сигнал ошибки
                HART_PULL_ERROR := TRUE;

            END_IF;

            // Сохранение ошибки опроса
            IF ERROR_VALID OR HART_PULL_ERROR THEN

                HART_CMD_48_ERROR := HART_COMM.Error;

            END_IF;

            // Завершение опроса
            REQUEST_CASE := FALSE;

        15:  (* Функция 50 - чтение назначения динамических переменных *)

            // Сброс предыдущего опроса
            CMD_DONE := FALSE;
            ERROR_VALID := FALSE;
            HART_PULL_ERROR := FALSE;
            // HART_COMM.DataIn := 0;

            // Индикация выполняемой функции
            // HART_FUNC := 'Функция 50';                                            // Текущая функция опроса
            HART_FUNCTIONS := 50;                                                 // Текущая функция опроса

            // Вызов блока запроса
            HART_REQUEST_CMD_50 ();                                               // HART_REQUEST_CMD_50 - экземпляр ФБ HART_Cmd1_Request
            HART_COMM.DataIn.Command := HART_REQUEST_CMD_50.Out.Command;          // Формирование команды
            HART_COMM.DataIn.Data := HART_REQUEST_CMD_50.Out.Data;                // Формирование данных

            // Инициализация опроса            
            REQUEST_CASE := TRUE;
            HART_COMM.Request := REQUEST_CASE;                                    // Команда выполнения опроса
            
            // Ошибка по времени выполнения опроса
            HART_PULL_ERROR := PULL_TON.Q;                                        // Тип - BOOL

            IF HART_COMM.Done AND HART_COMM.Error = 0 THEN

                // Вызов блока разбора ответа
                // HART_RESPONCE_CMD_50 - экземпляр ФБ HART_Cmd0_Responce
                HART_RESPONCE_CMD_50.In := HART_COMM.DataOut;                     // Данные для разбора
                HART_RESPONCE_CMD_50 ();                                          // Вызов ФБ HART_Cmd50_Responce

                // Соотвтетсвие переданных данных
                IF HART_RESPONCE_CMD_50.IsValid THEN

                    // Успешное завершение опроса
                    CMD_DONE := TRUE;

                    // Ошибка соотвтетсвия данных
                    ELSE ERROR_VALID := TRUE;

                END_IF;
            END_IF;

            // Ошибка опроса
            IF HART_COMM.Error <> 0 THEN 

                // Выходной сигнал ошибки
                HART_PULL_ERROR := TRUE;

            END_IF;

            // Сохранение ошибки опроса
            IF ERROR_VALID OR HART_PULL_ERROR THEN

                HART_CMD_50_ERROR := HART_COMM.Error;

            END_IF;

            // Завершение опроса
            REQUEST_CASE := FALSE;

        16:  (* Функция 54 - чтение информации о переменной датчика *)

            // Сброс предыдущего опроса
            CMD_DONE := FALSE;
            ERROR_VALID := FALSE;
            HART_PULL_ERROR := FALSE;
            // HART_COMM.DataIn := 0;

            // Индикация выполняемой функции
            // HART_FUNC := 'Функция 54';                                            // Текущая функция опроса
            HART_FUNCTIONS := 54;                                                 // Текущая функция опроса

            // Вызов блока запроса
            HART_REQUEST_CMD_54 ();                                               // HART_REQUEST_CMD_54 - экземпляр ФБ HART_Cmd1_Request
            HART_COMM.DataIn.Command := HART_REQUEST_CMD_54.Out.Command;          // Формирование команды
            HART_COMM.DataIn.Data := HART_REQUEST_CMD_54.Out.Data;                // Формирование данных

            // Инициализация опроса            
            REQUEST_CASE := TRUE;
            HART_COMM.Request := REQUEST_CASE;                                    // Команда выполнения опроса
            
            // Ошибка по времени выполнения опроса
            HART_PULL_ERROR := PULL_TON.Q;                                        // Тип - BOOL

            IF HART_COMM.Done AND HART_COMM.Error = 0 THEN

                // Вызов блока разбора ответа
                // HART_RESPONCE_CMD_54 - экземпляр ФБ HART_Cmd0_Responce
                HART_RESPONCE_CMD_54.In := HART_COMM.DataOut;                     // Данные для разбора
                HART_RESPONCE_CMD_54 ();                                          // Вызов ФБ HART_Cmd54_Responce

                // Соотвтетсвие переданных данных
                IF HART_RESPONCE_CMD_54.IsValid THEN

                    // Успешное завершение опроса
                    CMD_DONE := TRUE;

                    // Ошибка соотвтетсвия данных
                    ELSE ERROR_VALID := TRUE;

                END_IF;
            END_IF;

            // Ошибка опроса
            IF HART_COMM.Error <> 0 THEN 

                // Выходной сигнал ошибки
                HART_PULL_ERROR := TRUE;

            END_IF;

            // Сохранение ошибки опроса
            IF ERROR_VALID OR HART_PULL_ERROR THEN

                HART_CMD_54_ERROR := HART_COMM.Error;

            END_IF;

            // Завершение опроса
            REQUEST_CASE := FALSE;

            STEP_PULL := 0;
    
    END_CASE;
END_IF;


END_PROGRAM