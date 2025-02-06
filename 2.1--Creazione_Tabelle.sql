-- uso ciclo for per creare tutte le tabelle degli esperimenti

DO $$ 
DECLARE 
    i INT;
BEGIN 
    FOR i IN 1..18 LOOP
        EXECUTE format('
            CREATE TABLE IF NOT EXISTS Experiment_%s (
                X1_ActualPosition    double precision,
                X1_ActualVelocity    double precision,
                X1_ActualAcceleration    double precision,
                X1_CommandPosition    double precision,
                X1_CommandVelocity    double precision,
                X1_CommandAcceleration    double precision,
                X1_CurrentFeedback    double precision,
                X1_DCBusVoltage    double precision,
                X1_OutputCurrent    double precision,
                X1_OutputVoltage    double precision,
                X1_OutputPower    double precision,
                Y1_ActualPosition    double precision,
                Y1_ActualVelocity    double precision,
                Y1_ActualAcceleration    double precision,
                Y1_CommandPosition    double precision,
                Y1_CommandVelocity    double precision,
                Y1_CommandAcceleration    double precision,
                Y1_CurrentFeedback    double precision,
                Y1_DCBusVoltage    double precision,
                Y1_OutputCurrent    double precision,
                Y1_OutputVoltage    double precision,
                Y1_OutputPower    double precision,
                Z1_ActualPosition    double precision,
                Z1_ActualVelocity    double precision,
                Z1_ActualAcceleration    double precision,
                Z1_CommandPosition    double precision,
                Z1_CommandVelocity    double precision,
                Z1_CommandAcceleration    double precision,
                Z1_CurrentFeedback    double precision,
                Z1_DCBusVoltage    double precision,
                Z1_OutputCurrent    double precision,
                Z1_OutputVoltage    double precision,
                S1_ActualPosition    double precision,
                S1_ActualVelocity    double precision,
                S1_ActualAcceleration    double precision,
                S1_CommandPosition    double precision,
                S1_CommandVelocity    double precision,
                S1_CommandAcceleration    double precision,
                S1_CurrentFeedback    double precision,
                S1_DCBusVoltage    double precision,
                S1_OutputCurrent    double precision,
                S1_OutputVoltage    double precision,
                S1_OutputPower    double precision,
                S1_SystemInertia    double precision,
                M1_CURRENT_PROGRAM_NUMBER    double precision,
                M1_sequence_number    double precision,
                M1_CURRENT_FEEDRATE    double precision,
                Machining_Process    VARCHAR(512)
            );', i);
    END LOOP;
END $$;

