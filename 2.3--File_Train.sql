CREATE TABLE IF NOT EXISTS Train_Data (
    No	INT,
    material	VARCHAR(512),
    feedrate	INT,
    clamp_pressure	NUMERIC(10,1),
    tool_condition	VARCHAR(512),
    machining_finalized	VARCHAR(512),
    passed_visual_inspection	VARCHAR(512)
);


COPY Train_Data FROM 'C:\Program Files\PostgreSQL\16\data\File_tesina\train.csv' DELIMITER ',' CSV HEADER;


-- cambio i valori nulli di passed_visual_inspection in no
UPDATE train_data SET passed_visual_inspection = 'no' WHERE passed_visual_inspection is null;