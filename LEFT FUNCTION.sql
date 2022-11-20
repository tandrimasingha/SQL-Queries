# Extract 5 characters from the text in the "CustomerName" column (starting from left):

SELECT LEFT(CustomerName, 5) AS ExtractString
FROM Customers;

# Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

Select CITY from STATION where LEFT(CITY,1) IN ('A','E','I','O','U');
