# Extract 5 characters from the text in the "CustomerName" column (starting from left):

SELECT LEFT(CustomerName, 5) AS ExtractString
FROM Customers;

# Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

Select CITY from STATION where LEFT(CITY,1) IN ('A','E','I','O','U');

# Extract 5 characters from the text in the "CustomerName" column (starting from right):

SELECT RIGHT(CustomerName, 5) AS ExtractString
FROM Customers;

# Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

Select DISTINCT CITY from STATION where RIGHT(CITY,1) IN ('a','e','i','o','u');

# Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) IN ('A','E','I','O','U') AND RIGHT(CITY,1) IN ('a','e','i','o','u');

# Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) NOT IN ('A','E','I','O','U') OR RIGHT(CITY,1)  NOT IN ('a','e','i','o','u');
