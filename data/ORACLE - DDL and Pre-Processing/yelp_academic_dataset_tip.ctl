load data 
infile 'yelp_academic_dataset_tip.csv' "str '\r\n'"
append
into table TIP
fields terminated by ','
OPTIONALLY ENCLOSED BY '"' AND '"'
trailing nullcols
           ( BUSINESS_ID CHAR(4000),
             TIP_DATE DATE "YYYY-MM-DD" NULLIF (TIP_DATE=BLANKS),
             LIKES CHAR(4000),
             TEXT CHAR(4000),
             TYPE CHAR(4000),
             USER_ID CHAR(4000)
           )