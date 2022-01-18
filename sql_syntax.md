# SQL Syntax Guide
---
## Login into mysql from terminal

* sudo mysql -u root -p   Logs you in to sql server

---
## SHOW, CREATE, GRANT PRIVILEGES, SHOW PRIVILEGES, and REMOVE USERS from SQL

### SHOW USERS

Unfortunately, MySQL database does not have a SHOW USERS command to display the list of all users in the MySQL server. We can use the following query to see the list of all user in the database server:

* Select user from mysql.user; 

### CREATE USERS

Start by making a new user within the MySQL shell.

* CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';

### GRANT PRIVILEGES

Then grant them privilges as new users start with NO permissions.

* GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost';

Once you have finalized the permissions that you want to set up for your new users, always be sure to reload all the privileges.

* FLUSH PRIVILEGES;

### REVOKE PRIVILEGES

* REVOKE type_of_permission ON database_name.table_name FROM 'username'@'localhost';
 
### Review a User’s Current Permissions

* SHOW GRANTS FOR 'username'@'localhost';

---
## How to SHOW, DELETE & CREATE DATABASES & SELECT DATABASES

### CREATING

* CREATE DATABASE test;
or
* CREATE DATABASE IF NOT EXISTS test;

### SELECTING

* USE test;

### SHOW;

* show DATABASES;

### DELETE

* DROP DATABASE test;

---
## How to CREATE a TABLE with Columns and their data types

```
CREATE TABLE IF NOT EXISTS persons (
   id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(50) NOT NULL,
   birth_date DATE,
   phone VARCHAR(15) NOT NULL UNIQUE
);
```

| Data Type | Description |
|-----------|-------------|
| INT  | Stores numeric values in the range of -2147483648 to 2147483647  |
| DECIMAL  | Stores decimal values with exact precision.  |
| CHAR  | Stores fixed-length strings with a maximum size of 255 characters.  |
| VARCHAR  | Stores variable-length strings with a maximum size of 65,535 characters.  |
| TEXT  | Stores strings with a maximum size of 65,535 characters.  |
| DATE  | Stores date values in the YYYY-MM-DD format.  |
| DATETIME  | Stores combined date/time values in the YYYY-MM-DD HH:MM:SS format.  |
| TIMESTAMP  | Stores timestamp values. TIMESTAMP values are stored as the number of seconds since the Unix epoch ('1970-01-01 00:00:01' UTC).  |

---
## SHOW, UPDATE, DELETE & DROP Tables

### SHOW

* SELECT column1_name, column2_name, columnN_name FROM table_name;

or

* SELECT * FROM table_name;

### UPDATE

Use to update existing data in a table.

```
UPDATE employees SET emp_name = 'Sarah Ann Connor'
WHERE emp_id = 3;
```

Similarly, you can update multiple columns using a list of comma-separated column name and value pair.

```
UPDATE employees
SET salary = 6000, dept_id = 2
WHERE emp_id = 5;
```

### DELETE

The DELETE statement is used to remove one or more rows from a table.

* DELETE FROM table_name WHERE condition;

### DROP

The DROP TABLE statement is used to drop an existing table in a database.

* DROP TABLE table_name;

The TRUNCATE TABLE statement is used to delete the data inside a table, but not the table itself.

* TRUNCATE TABLE table_name;

---
## Insert ROWS & RECORDS (single and multiple)

 Specify both the column names and the values to be inserted:
 
* INSERT INTO Contacts (FirstName, LastName, Email, ...)
VALUES ('Moon', 'Moon', 'thebigdumb@mail.com', ...);
 
  If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query.
  
* INSERT INTO Contacts
VALUES ('John', 'Doe', 'chadGuy@mail.com', ...);

---
## How to add a new column and modify it

The ALTER TABLE statement is used to add, delete, or modify columns in an existing table. Its also used to add and drop various constraints on an existing table.

**Reminder** There are syntax differences between SQL Server / MS Access, My SQL / Oracle(prior version 10G), and Oracle 10G and later.

```
-- Add Column
ALTER TABLE Customers
ADD Email varchar(255);

-- Drop Column
ALTER TABLE Customers
DROP COLUMN Email;

-- Change datatype of column
-- SQL Server / MS Access:
ALTER TABLE table_name
ALTER COLUMN column_name datatype;

-- My SQL / Oracle (prior version 10G) and Oracle 10G and later
ALTER TABLE table_name
MODIFY COLUMN column_name datatype;
```

---
## SELECT with the WHERE Clause

```
-- Use of the WHERE Clause in a basic form
SELECT * FROM employees
WHERE emp_id = 2;

-- Use of the WHERE Clause using a range
SELECT emp_id, emp_name, hire_date, salary
FROM employees
WHERE salary > 7000;
```

Operators Allowed in WHERE Clause

| Operator  | Description  |
|-----------|--------------|
| =  | Equal  |
| >  | Greater Than  |
| <  | Less than  |
| >=  | Greater than or equal  |
| <=  | Less than or equal  |
| LIKE  | Simple pattern matching	WHERE name LIKE 'Dav'  |
| IN  | Check whether a specified value matches any value in a list or subquery |
| BETWEEN  | Check whether a specified value is within a range of values  |

| LIKE Operator  | Description  |
|---|---|
| WHERE CustomerName LIKE 'a%'  | Finds any values that start with "a"  |
| WHERE CustomerName LIKE '%a'  | Finds any values that end with "a"  |
| WHERE CustomerName LIKE '%or%'  | Finds any values that have "or" in any position  |
| WHERE CustomerName LIKE '_r%' | Finds any values that have "r" in the second position  |
| WHERE CustomerName LIKE 'a__%'  | Finds any values that start with "a" and are at least 3 characters in length  |
| WHERE ContactName LIKE 'a%o'  | Finds any values that start with "a" and ends with "o"  |

### LIKE Operator

```
-- Use of the LIKE operator where the statement selects all customers with a CustomerName starting with "a":
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';
```

### IN Operator

The IN operator allows you to specify multiple values in a WHERE clause.

```
SELECT * FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);
```

---
## Order by

The ORDER BY clause is used to sort the data returned by a query in ascending or descending order. The basic syntax of this clause can be given with

```
-- This will return the items in ascending order but you could put DESC at the end to get descending
SELECT * FROM employees 
ORDER BY emp_name;

-- you can sort by a specified column in either order as well.

SELECT * FROM trainees 
ORDER BY first_name, last_name;
```

---
## Order by Distinct Rows

The SELECT DISTINCT statement is used to return only distinct (different) values.

* SELECT DISTINCT Country FROM Customers;

---
## Concatenate Columns (CONCAT() Function)

Add three columns into one "Address" column:

* SELECT CONCAT(Address, " ", PostalCode, " ", City) AS Address
FROM Customers;

---
## INDEX Statements

### CREATE INDEX
The CREATE INDEX statement is used to create indexes in tables.

Indexes are used to retrieve data from the database more quickly than otherwise. The users cannot see the indexes, they are just used to speed up searches/queries.

```
-- With Duplicates
CREATE INDEX index_name
ON table_name (column1, column2, ...);

-- Without Duplicates
CREATE INDEX UNIQUE index_name
ON table_name (column1, column2, ...);
```

### DROP INDEX

The DROP INDEX statement is used to delete an index in a table.

**REMINDER** Difference in syntax.

MySQL:

```
ALTER TABLE table_name
DROP INDEX index_name;
```

---
## Two Tables demonstrating a one to many relationship that shows a PK & FK

```
CREATE TABLE Customer (
   CUSTOMER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   FIRST_NAME CHAR(25),
   LAST_NAME CHAR(25),
	 EMAIL CHAR(20)
);

CREATE TABLE Orders(
   ORDER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   CUSTOMER_ID INT,
   FOREIGN KEY (CUSTOMER_ID) REFERENCES Customer(CUSTOMER_ID)
);
```

---
## Inner Join

SQL JOIN. A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

```
SELECT table1.column1, table2.column2...
FROM table1
INNER JOIN table2
ON table1.common_field = table2.common_field;
```

## JOIN Multiple Tables

```
   SELECT  ID, NAME, AMOUNT, DATE
   FROM CUSTOMERS
   LEFT JOIN ORDERS
   ON CUSTOMERS.ID = ORDERS.CUSTOMER_ID;
```