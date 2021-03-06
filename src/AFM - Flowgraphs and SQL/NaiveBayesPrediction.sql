SET SCHEMA YELP;

DROP TYPE PAL_NBCPREDICT_PREDICTION_T;
DROP TYPE PAL_CONTROL_T;
DROP TYPE PAL_NBC_MODEL_T;
DROP TYPE PAL_NBCPREDICT_RESULT_T;
DROP TABLE PAL_NBCPREDICT_PDATA_TBL;
DROP TABLE PAL_NBCPREDICT_PREDICTION_TBL;
DROP TABLE #PAL_CONTROL_TBL;
DROP TABLE PAL_NBCPREDICT_RESULTS_TBL;

CREATE TYPE PAL_NBCPREDICT_PREDICTION_T AS TABLE(
	"ID" INTEGER,
	"SP" INTEGER,
	"WP" INTEGER,
	"WN" INTEGER,
	"SN" INTEGER
);

	
CREATE TYPE PAL_CONTROL_T AS TABLE(
	"NAME" VARCHAR (100),
	"INTARGS" INTEGER,
	"DOUBLEARGS" DOUBLE,
	"STRINGARGS" VARCHAR (100)
);


CREATE TYPE PAL_NBC_MODEL_T AS TABLE(
	"ID" INTEGER,
	"MODEL" VARCHAR(5000)
);


CREATE TYPE PAL_NBCPREDICT_RESULT_T AS TABLE(
	"ID" INTEGER,
	"CLASS" VARCHAR(100)
);


CREATE COLUMN TABLE PAL_NBCPREDICT_PDATA_TBL(
	"POSITION" INTEGER,
	"SCHEMA_NAME" VARCHAR(100),
	"TYPE_NAME" VARCHAR(100),
	"PARAMETER_TYPE" VARCHAR(100)
);
INSERT INTO PAL_NBCPREDICT_PDATA_TBL VALUES (1, 'YELP', 'PAL_NBCPREDICT_PREDICTION_T', 'IN'); 
INSERT INTO PAL_NBCPREDICT_PDATA_TBL VALUES (2, 'YELP', 'PAL_CONTROL_T', 'IN'); 
INSERT INTO PAL_NBCPREDICT_PDATA_TBL VALUES (3, 'YELP', 'PAL_NBC_MODEL_T', 'IN'); 
INSERT INTO PAL_NBCPREDICT_PDATA_TBL VALUES (4, 'YELP', 'PAL_NBCPREDICT_RESULT_T', 'OUT'); 

CALL "SYS".AFLLANG_WRAPPER_PROCEDURE_DROP('YELP', 'PAL_NBCPREDICT_PROC');

CALL "SYS".AFLLANG_WRAPPER_PROCEDURE_CREATE('AFLPAL', 'NBCPREDICT', 'YELP', 'PAL_NBCPREDICT_PROC', PAL_NBCPREDICT_PDATA_TBL);



CREATE COLUMN TABLE PAL_NBCPREDICT_PREDICTION_TBL LIKE PAL_NBCPREDICT_PREDICTION_T;

INSERT INTO PAL_NBCPREDICT_PREDICTION_TBL(ID, SP, WP, WN,SN)
SELECT  ID, SP, WP, WN, SN FROM TEST_DATA;


CREATE LOCAL TEMPORARY COLUMN TABLE #PAL_CONTROL_TBL (
	"NAME" VARCHAR (100),
	"INTARGS" INTEGER,
	"DOUBLEARGS" DOUBLE,
	"STRINGARGS" VARCHAR (100)
);
INSERT INTO #PAL_CONTROL_TBL VALUES ('THREAD_NUMBER',1,null,null);
INSERT INTO #PAL_CONTROL_TBL VALUES ('LAPLACE', null,1.0,null);
INSERT INTO #PAL_CONTROL_TBL VALUES ('MODEL_FORMAT', 0,null,null);


CREATE COLUMN TABLE PAL_NBCPREDICT_RESULTS_TBL LIKE PAL_NBCPREDICT_RESULT_T;

CALL "YELP".PAL_NBCPREDICT_PROC(PAL_NBCPREDICT_PREDICTION_TBL, "#PAL_CONTROL_TBL","PAL_DEV"."NBC_PAL_NBC_MODEL_TBL", PAL_NBCPREDICT_RESULTS_TBL) with overview;


SELECT * FROM PAL_NBCPREDICT_RESULTS_TBL;