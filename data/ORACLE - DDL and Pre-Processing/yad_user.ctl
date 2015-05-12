load data 
infile 'yad_user.csv' "str '\r\n'"
append
into table YELP_USER
fields terminated by ','
OPTIONALLY ENCLOSED BY '"' AND '"'
trailing nullcols
           ( YELPING_SINCE CHAR(4000),
             COMPLIMENTS_PLAIN CHAR(4000),
             REVIEW_COUNT CHAR(4000),
             FRIENDS CHAR(105000),
             COMPLIMENTS_CUTE CHAR(4000),
             COMPLIMENTS_WRITER CHAR(4000),
             FANS CHAR(4000),
             COMPLIMENTS_NOTE CHAR(4000),
             TYPE CHAR(4000),
             COMPLIMENTS_HOT CHAR(4000),
             COMPLIMENTS_COOL CHAR(4000),
             COMPLIMENTS_PROFILE CHAR(4000),
             AVERAGE_STARS CHAR(4000),
             COMPLIMENTS_MORE CHAR(4000),
             ELITE CHAR(4000),
             NAME CHAR(4000),
             USER_ID CHAR(4000),
             VOTES_COOL CHAR(4000),
             COMPLIMENTS_LIST CHAR(4000),
             VOTES_FUNNY CHAR(4000),
             COMPLIMENTS_PHOTO CHAR(4000),
             COMPLIMENTS_FUNNY CHAR(4000),
             VOTES_USEFUL CHAR(4000)
           )
