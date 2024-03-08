UPDATE OBJTYPEPARAM 
	SET PLC_VARNAME = '[0]__system_diagnostic/herd_cpu850_pri/hercules_diag/can/can1ubus0/__value'
	WHERE NAME = 'БЦП0_СостояниеШиныX2';
EXECUTE;
COMMIT;
	
UPDATE OBJTYPEPARAM 
	SET PLC_VARNAME = '[0]__system_diagnostic/herd_cpu850_pri/hercules_diag/can/can0ubus1/__value'
	WHERE NAME = 'БЦП0_СостояниеШиныX3';
EXECUTE;
COMMIT;
	
UPDATE OBJTYPEPARAM 
	SET PLC_VARNAME = '[1]__system_diagnostic/herd_cpu850_pri/hercules_diag/can/can1ubus0/__value'
	WHERE NAME = 'БЦП1_СостояниеШиныX2';
EXECUTE;
COMMIT;
	
UPDATE OBJTYPEPARAM 
	SET PLC_VARNAME = '[1]__system_diagnostic/herd_cpu850_pri/hercules_diag/can/can0ubus1/__value'
	WHERE NAME = 'БЦП1_СостояниеШиныX3';
EXECUTE;
COMMIT;