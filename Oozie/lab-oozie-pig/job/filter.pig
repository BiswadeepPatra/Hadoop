clickstream = load '$INPUT' using PigStorage(',') as (userid:int,url:chararray);
SPLIT clickstream INTO good_records IF userid is not null,  bad_records IF userid is null;
STORE good_records into '$OUTPUT';
