CREATE COLUMN TABLE "PAL"."YELP_USER" ("yelping_since" NVARCHAR(4000),
	 "compliments.plain" INTEGER CS_INT,
	 "review_count" INTEGER CS_INT,
	 "friends" CLOB MEMORY THRESHOLD 1000,
	 "compliments.cute" INTEGER CS_INT,
	 "compliments.writer" INTEGER CS_INT,
	 "fans" INTEGER CS_INT,
	 "compliments.note" INTEGER CS_INT,
	 "type" NVARCHAR(4000),
	 "compliments.hot" INTEGER CS_INT,
	 "compliments.cool" INTEGER CS_INT,
	 "compliments.profile" INTEGER CS_INT,
	 "average_stars" DECIMAL(6,
	2) CS_FIXED,
	 "compliments.more" INTEGER CS_INT,
	 "elite" NVARCHAR(4000),
	 "name" NVARCHAR(4000),
	 "user_id" NVARCHAR(4000),
	 "votes.cool" INTEGER CS_INT,
	 "compliments.list" INTEGER CS_INT,
	 "votes.funny" INTEGER CS_INT,
	 "compliments.photos" INTEGER CS_INT,
	 "compliments.funny" INTEGER CS_INT,
	 "votes.useful" INTEGER CS_INT) UNLOAD PRIORITY 5 AUTO MERGE 
;
COMMENT ON COLUMN "PAL"."YELP_USER"."yelping_since" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."compliments.plain" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."review_count" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."friends" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."compliments.cute" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."compliments.writer" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."fans" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."compliments.note" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."type" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."compliments.hot" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."compliments.cool" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."compliments.profile" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."average_stars" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."compliments.more" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."elite" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."name" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."user_id" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."votes.cool" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."compliments.list" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."votes.funny" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."compliments.photos" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."compliments.funny" is ' '
;
COMMENT ON COLUMN "PAL"."YELP_USER"."votes.useful" is ' '