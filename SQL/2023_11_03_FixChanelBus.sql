UPDATE objtypeparam
    SET objtypeparam.disc = 'Качество линий TMB шины УСО'
    WHERE LEFT(objtypeparam.plc_varname, 3) = 'bus'
        AND objtypeparam.pid IN (
            SELECT small_group.id 
            FROM objtype big_group
            INNER JOIN objtype small_group ON big_group.id = small_group.groupid
                WHERE big_group.name IN ('Одиночная', 'Двойная / Резервированная', 'Тройная'))