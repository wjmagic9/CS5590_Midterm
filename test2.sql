#Only show years when total books # published are bigger than 1000
#running command: hive -f test2.sql
#Also you need to load data to table bxdataset first
select  * from(
 select yearofpublication, count(booktitle) row_number  from bxdataset group by yearofpublication) A
where row_number > 1000;

