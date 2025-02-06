COPY Experiment_1 FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\experiment_01.csv' DELIMITER ',' CSV HEADER;
COPY Experiment_2 FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\experiment_02.csv' DELIMITER ',' CSV HEADER;
COPY Experiment_3 FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\experiment_03.csv' DELIMITER ',' CSV HEADER;
COPY Experiment_4 FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\experiment_04.csv' DELIMITER ',' CSV HEADER;
COPY Experiment_5 FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\experiment_05.csv' DELIMITER ',' CSV HEADER;
COPY Experiment_6 FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\experiment_06.csv' DELIMITER ',' CSV HEADER;
COPY Experiment_7 FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\experiment_07.csv' DELIMITER ',' CSV HEADER;
COPY Experiment_8 FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\experiment_08.csv' DELIMITER ',' CSV HEADER;
COPY Experiment_9 FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\experiment_09.csv' DELIMITER ',' CSV HEADER;
COPY Experiment_10 FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\experiment_10.csv' DELIMITER ',' CSV HEADER;
COPY Experiment_11 FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\experiment_11.csv' DELIMITER ',' CSV HEADER;
COPY Experiment_12 FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\experiment_12.csv' DELIMITER ',' CSV HEADER;
COPY Experiment_13 FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\experiment_13.csv' DELIMITER ',' CSV HEADER;
COPY Experiment_14 FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\experiment_14.csv' DELIMITER ',' CSV HEADER;
COPY Experiment_15 FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\experiment_15.csv' DELIMITER ',' CSV HEADER;
COPY Experiment_16 FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\experiment_16.csv' DELIMITER ',' CSV HEADER;
COPY Experiment_17 FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\experiment_17.csv' DELIMITER ',' CSV HEADER;
COPY Experiment_18 FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\experiment_18.csv' DELIMITER ',' CSV HEADER;



-- aggiungo la colonna id a ogni esperimento
ALTER TABLE Experiment_1 ADD COLUMN IF NOT EXISTS experiment_id INT;
UPDATE Experiment_1 SET experiment_id = 1;

ALTER TABLE Experiment_2 ADD COLUMN IF NOT EXISTS experiment_id INT;
UPDATE Experiment_2 SET experiment_id = 2;

ALTER TABLE Experiment_3 ADD COLUMN IF NOT EXISTS experiment_id INT;
UPDATE Experiment_3 SET experiment_id = 3;

ALTER TABLE Experiment_4 ADD COLUMN IF NOT EXISTS experiment_id INT;
UPDATE Experiment_4 SET experiment_id = 4;

ALTER TABLE Experiment_5 ADD COLUMN IF NOT EXISTS experiment_id INT;
UPDATE Experiment_5 SET experiment_id = 5;

ALTER TABLE Experiment_6 ADD COLUMN IF NOT EXISTS experiment_id INT;
UPDATE Experiment_6 SET experiment_id = 6;

ALTER TABLE Experiment_7 ADD COLUMN IF NOT EXISTS experiment_id INT;
UPDATE Experiment_7 SET experiment_id = 7;

ALTER TABLE Experiment_8 ADD COLUMN IF NOT EXISTS experiment_id INT;
UPDATE Experiment_8 SET experiment_id = 8;

ALTER TABLE Experiment_9 ADD COLUMN IF NOT EXISTS experiment_id INT;
UPDATE Experiment_9 SET experiment_id = 9;

ALTER TABLE Experiment_10 ADD COLUMN IF NOT EXISTS experiment_id INT;
UPDATE Experiment_10 SET experiment_id = 10;

ALTER TABLE Experiment_11 ADD COLUMN IF NOT EXISTS experiment_id INT;
UPDATE Experiment_11 SET experiment_id = 11;

ALTER TABLE Experiment_12 ADD COLUMN IF NOT EXISTS experiment_id INT;
UPDATE Experiment_12 SET experiment_id = 12;

ALTER TABLE Experiment_13 ADD COLUMN IF NOT EXISTS experiment_id INT;
UPDATE Experiment_13 SET experiment_id = 13;

ALTER TABLE Experiment_14 ADD COLUMN IF NOT EXISTS experiment_id INT;
UPDATE Experiment_14 SET experiment_id = 14;

ALTER TABLE Experiment_15 ADD COLUMN IF NOT EXISTS experiment_id INT;
UPDATE Experiment_15 SET experiment_id = 15;

ALTER TABLE Experiment_16 ADD COLUMN IF NOT EXISTS experiment_id INT;
UPDATE Experiment_16 SET experiment_id = 16;

ALTER TABLE Experiment_17 ADD COLUMN IF NOT EXISTS experiment_id INT;
UPDATE Experiment_17 SET experiment_id = 17;

ALTER TABLE Experiment_18 ADD COLUMN IF NOT EXISTS experiment_id INT;
UPDATE Experiment_18 SET experiment_id = 18;
