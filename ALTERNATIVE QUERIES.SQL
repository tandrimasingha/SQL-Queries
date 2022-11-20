1.) P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).

SOL>
set @i = 21;
select repeat('* ', @i := @i-1) from information_schema.tables;

2.) P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* 
* * 
* * * 
* * * * 
* * * * *
Write a query to print the pattern P(20).

SQL>
set @i = 0;
select repeat('* ', @i := @i + 1) from information_schema.tables limit 20;
