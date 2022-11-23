1. Create and insert given data in table customer.

create table customer(
cust_id number,
cust_fname varchar2(10),
cust_lname varchar2(10),
territory varchar2(10),
cred_limit number(10),
mngr_id number(10),
marital_status varchar2(10),
income number(20)
);
insert into
customer(cust_id,cust_fname,cust_lname,territory,cred_limit,mngr_id,marital_status,income) values
(‘’,'','','America','','','','');
insert into
customer(cust_id,cust_fname,cust_lname,territory,cred_limit,mngr_id,marital_status,income) values
(‘’,'Meg','Sen','Italy','','','','');
insert into
customer(cust_id,cust_fname,cust_lname,territory,cred_limit,mngr_id,marital_status,income) values
(‘’,'','','India','5000','','single','');






Q.1. Write a SQL query to fetch the count of employees working in project ‘P1’.
select count(*) Count_of_Project

FROM [sampleDB].[dbo].[EmployeeSalary]

where Project=’P1' ;


Q.2. Write a SQL query to fetch employee names having salary greater than or equal to 5000 and less than or equal 10000.

SELECT EmpFN

FROM [sampleDB].[dbo].[EmployeeDetails]

WHERE Empid IN

(SELECT Empsid FROM [sampleDB].[dbo].[EmployeeSalary]
WHERE Salary BETWEEN 5000 AND 10000);


Q.3. Write a SQL query to fetch project-wise count of employees sorted by project’s count in descending order.

select Project, Count(Empsid) EmpProjectCount

FROM [sampleDB].[dbo].[EmployeeSalary]

Group By Project

Order By EmpProjectCount DESC;


Q.4. Write a query to fetch only the first name(string before space) from the FullName column of EmployeeDetails table.
SELECT SUBSTRING(EmpFN,0,CHARINDEX(‘ ‘,EmpFN))FirstName
FROM [sampleDB].[dbo].[EmployeeDetails];

SELECT LEFT(EmpFN, CHARINDEX(‘ ‘,EmpFN) — 1) FirstName
FROM [sampleDB].[dbo].[EmployeeDetails];



Q.5. Write a query to fetch employee names and salary records. Return employee details even if the salary record is not present for the employee.
SELECT E.EmpFN, S.Salary

FROM [sampleDB].[dbo].[EmployeeDetails]

E LEFT JOIN [sampleDB].[dbo].[EmployeeSalary] S

ON E.Empid = S.Empsid;


Q.6. Write a SQL query to fetch all the Employees who are also managers from EmployeeDetails table.
SELECT E.EmpFN

FROM [sampleDB].[dbo].[EmployeeDetails] E

INNER JOIN [sampleDB].[dbo].[EmployeeDetails] M

ON E.EmpiD = M.ManagrID;


Q.7. Write a SQL query to fetch all employee records from EmployeeDetails table who have a salary record in EmployeeSalary table.
SELECT * FROM [sampleDB].[dbo].[EmployeeDetails] E

WHERE EXISTS

(SELECT * FROM [sampleDB].[dbo].[EmployeeSalary] S

WHERE E.Empid = S.Empsid);




Q.8. Write a SQL query to fetch duplicate records from a table.
SELECT Project, COUNT(*) CountDup

FROM [sampleDB].[dbo].[EmployeeSalary]

GROUP BY Project

HAVING COUNT(*) > 1;





Q.9. Write a SQL query to remove duplicates from a table without using temporary table.
DELETE FROM [sampleDB].[dbo].[EmployeeSalary] HERE Project IN

(SELECT Project FROM [sampleDB].[dbo].[EmployeeSalary]

GROUP BY Project HAVING COUNT(*) > 1)

AND NOT Empid IN (SELECT min(Empid)

FROM [sampleDB].[dbo].[EmployeeSalary]

GROUP BY Project)



Q.10. Write a SQL query to fetch only odd and even rows from the table.
/* fetch ODD rows*/

SELECT E.EmpsId, E.Project, E.Salary

FROM (SELECT *, Row_Number() OVER(ORDER BY EmpsId) AS RowNumber FROM EmployeeSalary ) E

WHERE E.RowNumber % 2 = 1

/* fetch EVEN rows*/

SELECT E.EmpsId, E.Project, E.Salary

FROM (SELECT *, Row_Number() OVER(ORDER BY EmpsId) AS RowNumber FROM EmployeeSalary ) E

WHERE E.RowNumber % 2 = 0









Q.11. Write a SQL query to create a new table with data and structure copied from another table.
SELECT * INTO EmployeeData FROM EmployeeDetails


Q.12. Write a SQL query to create an empty table with the same structure as some other table.
SELECT * INTO EMP FROM EmployeeDetails WHERE 1 = 0;


Q.13. Write a SQL query to find the current date-time.
select getdate();




Write a SQL query to fetch top n records?
SELECT TOP(3) * FROM EmployeeSalary ORDER BY Salary DESC





