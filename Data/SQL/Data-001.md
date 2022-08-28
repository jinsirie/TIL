## ERD

- References#1
  - https://www.lucidchart.com/pages/er-diagrams#section_5

```bash
PK
FK
*두 가지 entity에서 관계를 확인할 수 있다.
```

## 구성요소 Structure

- Entity
- Relationship
- Attribute
  - 컬럼이름
  - 데이터 타입
    - 숫자
      - 정수
      - 실수
    - 문자
    - 날짜, 시간

## SubQuery

SELECT, FROM/WHERE

: 가상의 테이블을 하나 더 만든다!

```sql
SELECT daily_stats.week
				,AVG(daily_stats.incidents_daily)
FROM (
			SELECT week
						, date
						, COUNT(incident_id) as incidents_daily
      FROM crimes
			GROUP BY week,date
			)daily_stats
GROUP BY daily_stats.week
```

*AVG (2+0+3+1+1+1+2) / 7

### WHERE 절 서브 쿼리 예제

```sql
#1
SELECT *
FROM crimes
WHERE date = ( SELECT MIN(date) FROM crimes )

#2
SELECT *
FROM crimes
WHERE date IN ( SELECT date FROM crimes ORDER BY date DESC LIMIT 5 )
```





ex 1) 누가 제일 많이 버는지 / 같은 월급을 받는 자가 몇명인지

```sql
SELECT months * salary AS earnings
    , count(*)
FROM employee
WHERE months*salary=(SELECT MAX(months*salary)FROM employee)
GROUP BY earnings
```

### 윈도우 함수

- GROUP BY와 비슷: ) 짜부라트린걸 늘린다라는 표현이 적당한지 모르겠다

```sql
mysql> SELECT country, SUM(profit) AS country_profit
       FROM sales
       GROUP BY country
       ORDER BY country;
+---------+----------------+
| country | country_profit |
+---------+----------------+
| Finland |           1610 |
| India   |           1350 |
| USA     |           4575 |
+---------+----------------+
mysql> SELECT
         year, country, product, profit,
         SUM(profit) OVER() AS total_profit,
         SUM(profit) OVER(PARTITION BY country) AS country_profit
       FROM sales
       ORDER BY country, year, product, profit;
+------+---------+------------+--------+--------------+----------------+
| year | country | product    | profit | total_profit | country_profit |
+------+---------+------------+--------+--------------+----------------+
| 2000 | Finland | Computer   |   1500 |         7535 |           1610 |
| 2000 | Finland | Phone      |    100 |         7535 |           1610 |
| 2001 | Finland | Phone      |     10 |         7535 |           1610 |
| 2000 | India   | Calculator |     75 |         7535 |           1350 |
| 2000 | India   | Calculator |     75 |         7535 |           1350 |
| 2000 | India   | Computer   |   1200 |         7535 |           1350 |
| 2000 | USA     | Calculator |     75 |         7535 |           4575 |
| 2000 | USA     | Computer   |   1500 |         7535 |           4575 |
| 2001 | USA     | Calculator |     50 |         7535 |           4575 |
| 2001 | USA     | Computer   |   1200 |         7535 |           4575 |
| 2001 | USA     | Computer   |   1500 |         7535 |           4575 |
| 2001 | USA     | TV         |    100 |         7535 |           4575 |
| 2001 | USA     | TV         |    150 |         7535 |           4575 |
+------+---------+------------+--------+--------------+----------------+
```

## 모양새

- 함수(컬럼) OVER (PARTITION BY 컬럼 ORDER BY 컬럼) ㄴGROUP BY 같은 느낌[!]
- MAX(컬럼) OVER (PARTITION BY 컬럼)

### 순위 정하기

- ROW_NUMBER(), RANK(), DENSE_RACK()

  ```
   (1,2,3,4,5) / (1,1,1,3,3,6) / (1,1,1,2,2,2,3,3,3)
  ```

### 데이터 위치바꾸기

- LAG : 뒤로 밀어달라!
- LEAD : 뒤에 있는 데이터를 앞으로 당겨온다!
- 나머지는’0’으로 가져온다.
  - LAG(Temperature,2,0)
  - LEAD(Temperature,2,0)