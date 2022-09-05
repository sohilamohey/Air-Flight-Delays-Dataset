create table flight_delays(
year integer,
month integer,
DayofMonth integer,
DayOfWeek integer,
DepTime integer,
ArrTime integer,
FlightNum integer,
Tailnum varchar,
airtime integer,
ArrDelay integer,
DepDelay integer,
Origin varchar(3),
Dest varchar(3),
Distance integer
);
copy flight_delays from 'E:\Track\Data analysis\Dr Abd AlRahman Ashour\All folders On Drive\drive-download-20220430T214640Z-001\11. SQL Data Analysis\2nd Project\2007.csv' DELIMITER ',' CSV HEADER null 'NA';

select * from flight_delays;

---1. How many flights are in our table?

select count(FlightNum) as flight_number_in_table from flight_delays;
select count(*) as flight_number_in_table from flight_delays;

---2.
select distinct (DayOfWeek)from flight_delays;

---3.
SELECT SUM(airtime) FROM flight_delays;

---4.
select avg(ArrTime) as Arrive_Time, avg(DepDelay) as departure_Delays
from flight_delays;
---5.
select max(Distance) longest_air_fly_distance  , min(Distance) as shortest_air_fly_distance
from flight_delays;

---6
select origin, avg(DepDelay) as AVG_DepDelay
from flight_delays
group by origin;

---7
select month, sum(airtime) SummationOfAirTime
from flight_delays
group by month;
---8
select Origin, avg(DepDelay) as AVG_DepDelay
from flight_delays
where Distance > 2000
group by Origin;

---9.
select origin, count(*) 
from flight_delays 
group by origin 
order by count desc;

---10
select count(distinct(origin)) as CountOfAirports
from flight_delays 

---Assignment
SELECT COUNT(*), tailnum
FROM flight_delays
WHERE dayofweek = 7 AND dest IN ('PHX', 'SEA')
GROUP BY tailnum
ORDER BY count DESC
LIMIT 5;




