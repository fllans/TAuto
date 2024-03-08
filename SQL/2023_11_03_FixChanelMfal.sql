UPDATE objtypeparam
    SET objtypeparam.disc = 'PV1. Отказ контура'
    WHERE LEFT(objtypeparam.plc_varname, 4) = 'mfal'
        AND objtypeparam.pid IN (
            SELECT small_group.id 
            FROM objtype big_group
            INNER JOIN objtype small_group ON big_group.id = small_group.groupid
                WHERE big_group.name IN ('Одиночная', 'Двойная / Резервированная', 'Тройная'))