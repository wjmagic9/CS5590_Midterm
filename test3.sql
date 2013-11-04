add jar /home/idcuser/rank.jar;
create temporary function rank as 'com.example.hive.udf.Rank';
select yearofpublication, booktitle, row_number from (
   select yearofpublication, booktitle, rank(booktitle) as row_number from(
      select *  from bxdataset where yearofpublication is not null
             distribute by booktitle
             sort by booktitle, yearofpublication
      ) A
   )B
where row_number >5;