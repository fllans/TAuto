PROGRAM SampleBuffer


CurrentCycleTime_SF := _PRESET_CYCLE_TIME;

IF CntSampleBufferTest_SF = currentCntSampleBufferTest OR NOT StartSampleBufferTest_SF THEN
    SampleBuffer_BOOL_SF := FALSE;
    SampleBuffer_BYTE_SF := 0;
    SampleBuffer_DINT_SF := 0;
    SampleBuffer_DWORD_SF := 0;
    SampleBuffer_INT_SF := 0;
    SampleBuffer_LINT_SF := 0;
    SampleBuffer_LREAL_SF := 0;
    SampleBuffer_LWORD_SF := 0;
    SampleBuffer_REAL_SF := 0;
    SampleBuffer_SINT_SF := 0;
    SampleBuffer_TIME_SF := T#0ms;
    SampleBuffer_UDINT_SF := 0;
    SampleBuffer_UINT_SF := 0;
    SampleBuffer_ULINT_SF := 0;
    SampleBuffer_USINT_SF := 0;
    SampleBuffer_WORD_SF := 0;
            
    StartSampleBufferTest_SF := FALSE;
    currentCntSampleBufferTest := 0;    
END_IF;

IF StartSampleBufferTest_SF THEN
    currentTimeSampleBufferTest := currentTimeSampleBufferTest + _PRESET_CYCLE_TIME;

    IF currentTimeSampleBufferTest >= PulseTimeSampleBufferTest_SF THEN
        SampleBuffer_BOOL_SF := NOT SampleBuffer_BOOL_SF;
        SampleBuffer_LINT_SF := SampleBuffer_LINT_SF + 1;
        SampleBuffer_TIME_SF := SampleBuffer_TIME_SF + PulseTimeSampleBufferTest_SF;
        
        SampleBuffer_BYTE_SF := ANY_TO_BYTE(SampleBuffer_LINT_SF);
        SampleBuffer_DINT_SF := ANY_TO_DINT(SampleBuffer_LINT_SF);
        SampleBuffer_DWORD_SF := ANY_TO_DWORD(SampleBuffer_LINT_SF);
        SampleBuffer_INT_SF := ANY_TO_INT(SampleBuffer_LINT_SF);
        SampleBuffer_LREAL_SF := ANY_TO_LREAL(SampleBuffer_LINT_SF) / 100;
        SampleBuffer_LWORD_SF := ANY_TO_LWORD(SampleBuffer_LINT_SF);
        SampleBuffer_REAL_SF := ANY_TO_REAL(SampleBuffer_LINT_SF) / 10;
        SampleBuffer_SINT_SF := ANY_TO_SINT(SampleBuffer_LINT_SF);
        SampleBuffer_LREAL_SF := ANY_TO_LREAL(SampleBuffer_LINT_SF) / 100;
        SampleBuffer_LWORD_SF := ANY_TO_LWORD(SampleBuffer_LINT_SF);
        SampleBuffer_UDINT_SF := ANY_TO_UDINT(SampleBuffer_LINT_SF);
        SampleBuffer_UINT_SF := ANY_TO_UINT(SampleBuffer_LINT_SF);
        SampleBuffer_ULINT_SF := ANY_TO_ULINT(SampleBuffer_LINT_SF);
        SampleBuffer_USINT_SF := ANY_TO_USINT(SampleBuffer_LINT_SF);
        SampleBuffer_WORD_SF := ANY_TO_WORD(SampleBuffer_LINT_SF);

        currentTimeSampleBufferTest := T#0ms;
        currentCntSampleBufferTest := currentCntSampleBufferTest + 1;
    END_IF;
END_IF;


END_PROGRAM