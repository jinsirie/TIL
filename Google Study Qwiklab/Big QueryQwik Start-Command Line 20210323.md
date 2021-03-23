# Big Query:Qwik Start-Command Line

​                                                                                                                                          2021-03-23

​                                                                                                                                



- bq : Bigquery line tool

```
bq show bigquery-public-data:samples.shakespeare
```



- `--use_legacy_sql=false` makes standard SQL the default query syntax

  ```sql
  bq query --use_legacy_sql=false \
  'SELECT
     word,
     SUM(word_count) AS count
   FROM
     `bigquery-public-data`.samples.shakespeare
   WHERE
     word LIKE "%raisin%"
   GROUP BY
     word'
  ```

- Search the dataset "Project ID" , ended the column(:)

```
bq ls bigquery-public-data:
```

- Configure table schema

```
QUERY: bq show babynames.names2010
```

```sql
 RESULT:
 Last modified         Schema         Total Rows   Total Bytes     Expiration      Time Partitioning   Clustered Fields   Labels
 ----------------- ------------------- ------------ ------------- ----------------- ------------------- ------------------ --------
  13 Aug 14:37:34   |- name: string     34073        654482        12 Oct 14:37:34
                    |- gender: string
                    |- count: integer
```



### Run Query

Be query the data return the result that i interested!

```
BASIC FORMAT: bq query "SELECT * FROM dataset.table where [ ] "


EXAMPLE:
bq query "SELECT name,count FROM babynames.names2010 WHERE gender = 'F' ORDER BY count DESC LIMIT 5"
```





### Remove the dataset

```
bq rm -r "table_name"
```



