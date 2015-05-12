CREATE COLUMN TABLE "PAL"."TIP" ("business_id" NVARCHAR(4000),
	 "date" NVARCHAR(4000),
	 "likes" INTEGER CS_INT,
	 "text" CLOB MEMORY THRESHOLD 1000,
	 "type" NVARCHAR(4000),
	 "user_id" NVARCHAR(4000)) UNLOAD PRIORITY 5 AUTO MERGE 
;
COMMENT ON COLUMN "PAL"."TIP"."business_id" is ' '
;
COMMENT ON COLUMN "PAL"."TIP"."date" is ' '
;
COMMENT ON COLUMN "PAL"."TIP"."likes" is ' '
;
COMMENT ON COLUMN "PAL"."TIP"."text" is ' '
;
COMMENT ON COLUMN "PAL"."TIP"."type" is ' '
;
COMMENT ON COLUMN "PAL"."TIP"."user_id" is ' '