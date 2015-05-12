load data 
infile 'yelp_academic_dataset_review.002.002.001.002.002.004.002.003.csv' "str '\r\n'"
append
into table REVIEW
fields terminated by ','
OPTIONALLY ENCLOSED BY '"' AND '"'
trailing nullcols
           ( BUSINESS_ID CHAR(4000),
             REVIEW_DATE DATE "YYYY-MM-DD" NULLIF (REVIEW_DATE=BLANKS),
             REVIEW_ID CHAR(4000),
             STARS CHAR(4000),
             TEXT CHAR(100000),
             TYPE CHAR(4000),
             USER_ID CHAR(4000),
             VOTES_COOL CHAR(4000),
             VOTES_FUNNY CHAR(4000),
             VOTES_USEFUL CHAR(4000)
           )
