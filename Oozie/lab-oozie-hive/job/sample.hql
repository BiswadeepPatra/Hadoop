create table product_dtl ( product_id int, product_name string, product_price float, product_category string) 
row format delimited 
fields terminated by ','; 

load data inpath '/user/training/lab-oozie-hive/input'
into table product_dtl;

INSERT OVERWRITE DIRECTORY '/user/training/lab-oozie-hive/output' select * from default.product_dtl;
