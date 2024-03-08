FUNCTION_BLOCK MB_PULL

(* MB_PULL v.3 *)

(* MB_PULL - функциональный блок опроса по протоколу Modbus *)

(* Внешне задаются такие параметры как:
   - Команда выполнения/остановки цикла (ExecuteType);
   - Адрес/номер Slave-устройства (SlaveId);
   - Команда Modbus, которая реализована в FB MB_RTU_MASTER (Mode; 1, 2, 3, 4, 5, 6, 15, 16);
   - Начальный адрес регистров (Address);
   - Количество считываемых/записываемых данных (Count). *)
(* Внешне реализованы функции чтения/записи массива данных, в зависимости от  выбранной функции *)
(* Внутри функционального блока опроса используются следующие библиотечные функции:
   - MB_RTU_MASTER - функциональный блок Modbus;
   - MB_MASTER_QUEUE - структура созданная для команд Modbus. *)

// Первоначальная проверка, блок не выполняется
// MB_MS - экземпляр FB MB_RTU_MASTER
IF NOT MB_MS.Busy THEN                                                            // True - выполняется команда, False - не выполняется клманда
      
   QUEUE_INDEX := MB_Q.CurrentCommandIndex;                                       // Тип QUEUE_INDEX - INT. MB_Q - экземпляр MB_MASTER_QUEUE

   // Текущая команда завершилась
   IF MB_MS.Done THEN                                                             // Признак того, что команда завершилась
      
      // Текущий индекс команды             
      MB_Q.CurrentCommandIndex := MB_Q.CurrentCommandIndex + 1;

      // Нет ошибок при выполнении FB
      IF MB_MS.Error = 0 THEN                                                     // 1. 0 - ошибок нет. 2. Диапазон 1..1000 - ошибки устройства Modbus. 3. Диапазон 1000..2000 - ошибки СПО. 4. Диапазон 2000+ - ошибки блока MB_RTU_MASTER

         // Задан корреткный режим выполнения
         IF  MB_Q.Commands[QUEUE_INDEX].ExecuteType <> 0 THEN

            // Сброс флага для режима "одиночного выполнения"
            IF MB_Q.Commands[QUEUE_INDEX].ExecuteType = 255 THEN
            
               MB_Q.Commands[QUEUE_INDEX].ExecuteType := 0;

            END_IF;

            (* Закомментированно потому что реализовано во внешних ST-программах *)

            // // Для операций чтения данных (1, 2, 3, 4 функции Modbus)
            // IF MB_Q.Commands[QUEUE_INDEX].Mode = 1                                // Чтение значений из нескольких регистров флагов - Read Coil Status
            //   OR MB_Q.Commands[QUEUE_INDEX].Mode = 2                              // Чтение значений из нескольких дискретных входов - Read Discrete Inputs
            //   OR MB_Q.Commands[QUEUE_INDEX].Mode = 3                              // Чтение значений из нескольких регистров хранения - Read Holding Registers
            //   OR MB_Q.Commands[QUEUE_INDEX].Mode = 4 THEN                         // Чтение значений из нескольких регистров ввода - Read Input Registers
            
            //   // Копирование данных полученных с устройства
            //   MB_Q.Commands[QUEUE_INDEX].Data := MB_MS.DataOut;                   // Массив считанных данных из Slave-устройства

            // END_IF;
         END_IF;
      END_IF;
   END_IF;


   // Сброс индекса запросов
   IF QUEUE_INDEX = 49 THEN

      MB_Q.CurrentCommandIndex := 0;

   END_IF;

   // Циклический перебор "карты памяти"
   FOR COMMAND_INDEX := MB_Q.CurrentCommandIndex TO 49 DO                            // Тип COMMAND_INDEX - INT

      // Сохранение текущего индекса
      MB_Q.CurrentCommandIndex := COMMAND_INDEX;

      // Задан корреткный режим выполнения
      IF MB_Q.Commands[COMMAND_INDEX].ExecuteType <> 0 THEN

         // Режим "выполнить один раз"
         IF MB_Q.Commands[COMMAND_INDEX].ExecuteType = 2 THEN

            MB_Q.Commands[COMMAND_INDEX].ExecuteType := 255;

         END_IF;

         (* Закомментированно потому что реализовано во внешних ST-программах *)

         // // Для операций записи данных (5, 6, 15, 16 функции Modbus)
         // IF  MB_Q.Commands[COMMAND_INDEX].Mode = 5                                   // Запись значения одного флага - Force Single Coil
         //    OR MB_Q.Commands[COMMAND_INDEX].Mode = 6                                 // Запись значения в один регистр хранения - Preset Single Register
         //    OR MB_Q.Commands[COMMAND_INDEX].Mode = 15                                // Запись значений в несколько регистров флагов - Force Multiple Coils
         //    OR MB_Q.Commands[COMMAND_INDEX].Mode = 16 THEN                           // Запись значений в несколько регистров хранения - Preset Multiple Registers

         //    // Копирование данных для записи в устройство
         //    MB_MS.DataIn := MB_Q.Commands[COMMAND_INDEX].Data;                       // Массив данных для записи в Slave-устройство

         // END_IF;

         // Настрока FB MB_RTU_MASTER
         MB_MS.Request := MB_REQUEST;                                                // Тип MB_REQUEST - BOOL. Команда выполнения/остановки опроса. Срабатывает по фронту, т.е. при смене входа с False на True
         MB_MS.SlaveId := MB_Q.Commands[COMMAND_INDEX].SlaveId;                      // Адрес/номер Slave-устройства 
         MB_MS.Mode := MB_Q.Commands[COMMAND_INDEX].Mode;                            // Команда Modbus (1, 2, 3, 4, 5, 6, 15, 16)
         MB_MS.Address := MB_Q.Commands[COMMAND_INDEX].Address;                      // Начальный адрес register/coil (0 - 65535)
         MB_MS.Count := MB_Q.Commands[COMMAND_INDEX].Count;                          // Количество считываемых/записываемых данных. Зависит от типа данных register/coil (0 -123 для регистров , 0-246 для бит)

         EXIT;
      END_IF;
   END_FOR;
END_IF;

// Настройка параметров обмена FB MB_RTU_MASTER
MB_MS.BaudRate := MB_BaudRate;                                                       // Тип MB_BaudRate - UDINT. Скорость (9600, 19200, 38400, 57600, 115200 и др.)
MB_MS.Parity := MB_Parity;                                                           // Тип MB_Parity - BOOL. Бит чётности (True - есть контроль чётности)
MB_MS.StopBit := MB_StopBit;                                                         // Тип MB_StopBit - USINT. Количество стоповых бит (1, 2)
MB_MS.DataBit := MB_DataBit;                                                         // Тип MB_DataBit - USINT. Количество бит данных (7, 8)
MB_MS.TimeOut := MB_TimeOut;                                                         // Тип MB_TimeOut - UDINT. Время ожидания выполнения команды, мс
MB_MS.BusNumber := MB_BusNumber;                                                     // Тип MB_BusNumber - USINT. Локальная шина БЦП - 0,1; TCM/MI01 - 2-99
MB_MS.PortNumber := MB_PortNumber;                                                   // Тип MB_PortNumber - USINT. Номер порта/канала (0, 1. Если используется ТСМ, то значения: 0-7)
MB_MS();                                                                             // Вызов блока MB_RTUMASTER

// Вывод информации из блока MB_RTU_MASTER
// MB_DataOut := MB_MS.DataOut;                                                      // Тип MB_DataOut - USINT_0_245. Результаты выполнения опроса
MB_Busy := MB_MS.Busy;                                                            // Тип MB_Busy - BOOL. Выставляется в true если выполняется команда
MB_Done := MB_MS.Done;                                                            // Тип MB_Done - BOOL. Признак того, что команда завершилась
MB_Error := MB_MS.Error;                                                          // Тип MB_Error - UDINT. Ошибка
MB_ExecutionTime := MB_MS.ExecutionTime;                                          // Тип MB_ExecutionTime - UDINT. Время выполнения последней команды, мс
MB_AverageExecutionTime := MB_MS.AverageExecutionTime;                            // Тип MB_AverageExecutionTime - UDINT. Время выполнения последних четырёх команд, мс

// Сброс команды выполнения
// Закоментировать без вызова блока MB_RTUMASTER
IF MB_MS.Request THEN                                                             // Команда выполнения/остановки опроса. Срабатывает по фронту, т.е. при смене входа с False на True

   MB_MS.Request := False;                                                        // Остановка команды выполнения опроса

END_IF;


END_FUNCTION_BLOCK