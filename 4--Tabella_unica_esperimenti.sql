-- Creo la tabella All_Experiments, che contiene tutti i dati di tutti i file experiment
CREATE TABLE All_Experiments AS
SELECT * FROM Experiment_1 UNION ALL
SELECT * FROM Experiment_2 UNION ALL
SELECT * FROM Experiment_3 UNION ALL
SELECT * FROM Experiment_4 UNION ALL
SELECT * FROM Experiment_5 UNION ALL
SELECT * FROM Experiment_6 UNION ALL
SELECT * FROM Experiment_7 UNION ALL
SELECT * FROM Experiment_8 UNION ALL
SELECT * FROM Experiment_9 UNION ALL
SELECT * FROM Experiment_10 UNION ALL
SELECT * FROM Experiment_11 UNION ALL
SELECT * FROM Experiment_12 UNION ALL
SELECT * FROM Experiment_13 UNION ALL
SELECT * FROM Experiment_14 UNION ALL
SELECT * FROM Experiment_15 UNION ALL
SELECT * FROM Experiment_16 UNION ALL
SELECT * FROM Experiment_17 UNION ALL
SELECT * FROM Experiment_18;



-- elimino colonna m1_current_program_number
ALTER TABLE all_experiments DROP COLUMN m1_current_program_number;


-- elimino valori errati dalla tabella
DELETE FROM all_experiments
WHERE x1_actualposition = 198
OR  m1_current_feedrate = 50;


-- elimino colonna Machining Process perché è categorica e non permette di calcolare la correlazione
ALTER TABLE Joined_Experiments DROP COLUMN machining_process;


