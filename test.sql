#Count how many books were published each year
select yearofpublication, count(booktitle) from bxdataset group by yearofpublication;