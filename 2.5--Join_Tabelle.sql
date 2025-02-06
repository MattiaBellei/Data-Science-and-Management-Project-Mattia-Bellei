CREATE TABLE IF NOT EXISTS Joined_Experiments AS (
	SELECT
	all_experiments.*,
	train_data.feedrate,
	train_data.clamp_pressure,
	train_data.tool_condition,
	train_data.machining_finalized,
	train_data.passed_visual_inspection	
	FROM all_experiments
	JOIN train_data
	ON all_experiments.experiment_id = train_data."no"
	);

-- Preparo questa tabella in modo da utilizzarla direttamente per calcolare le correlazioni


-- Sostituisco 'unworn' con 0 e 'worn' con 1 per la colonna tool_condition

UPDATE Joined_Experiments
SET tool_condition = '0'
WHERE tool_condition = 'unworn';

UPDATE Joined_Experiments
SET tool_condition = '1'
WHERE tool_condition = 'worn';

ALTER TABLE Joined_Experiments
ALTER COLUMN tool_condition TYPE INT USING tool_condition::INTEGER;


-- Sostituisco 'no' con 0 e 'yes' con 1 per la colonna machining_finalized

UPDATE Joined_experiments
SET machining_finalized = '0'
WHERE machining_finalized = 'no';

UPDATE Joined_experiments
SET machining_finalized = '1'
WHERE machining_finalized = 'yes';

ALTER TABLE Joined_Experiments
ALTER COLUMN machining_finalized TYPE INT USING machining_finalized::INTEGER;


-- Sostituisco 'no' con 0 e 'yes' con 1 per la colonna passed_visual_inspection

UPDATE Joined_Experiments
SET passed_visual_inspection = '0'
WHERE passed_visual_inspection = 'no';

UPDATE Joined_Experiments
SET passed_visual_inspection = '1'
WHERE passed_visual_inspection = 'yes';

ALTER TABLE Joined_Experiments
ALTER COLUMN passed_visual_inspection TYPE INT USING passed_visual_inspection::INTEGER;



-- copio tabella su file csv da usare poi su colab
COPY joined_experiments TO 'C:\Program Files\PostgreSQL\16\data\File_tesina\Joined_Table.csv'
WITH (FORMAT CSV, HEADER);