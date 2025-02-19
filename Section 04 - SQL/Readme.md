# Section 04 - SQL

## Overview
This section introduces **SQL (Structured Query Language)**, a powerful language used for managing and querying relational databases. The course covers SQL from beginner to advanced levels, focusing on database structures, query languages, and data manipulation techniques for data analytics.

## Topics Covered
1. **SQL Basics and Installation**
   - SQL Timeline and Evolution
   - Installing MySQL and MySQL Workbench
   - Overview of Relational Databases and Database Management Systems (DBMS)

2. **SQL Query Fundamentals**
   - **Data Definition Language (DDL)**
     - `CREATE TABLE`, `ALTER TABLE`, `DROP TABLE`
   - **Data Query Language (DQL)**
     - `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`, `HAVING`
   - **Data Manipulation Language (DML)**
     - `INSERT`, `UPDATE`, `DELETE`
   - **Data Control Language (DCL)**
     - `GRANT`, `REVOKE`

3. **SQL Joins and Relationships**
   - **INNER JOIN** – Returns matching records from both tables
   - **LEFT JOIN** – Returns all records from the left table and matching records from the right table
   - **RIGHT JOIN** – Returns all records from the right table and matching records from the left table
   - **FULL JOIN** – Returns all records from both tables

4. **Advanced SQL Concepts**
   - **Aggregate Functions**: `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`
   - **Nested Queries and Subqueries**
   - **Views**: Creating and managing virtual tables
   - **Stored Procedures**: Writing reusable SQL scripts
   - **Triggers**: Automating database actions
   - **Window Functions**: `ROW_NUMBER()`, `RANK()`, `FIRST_VALUE()`

5. **Importing and Exporting Data**
   - Manual importing/exporting
   - Importing data via MySQL Workbench and command-line methods

6. **SQL-Python Connectivity**
   - Using `pymysql` for connecting SQL databases with Python
   - Running SQL queries using Python

## Learning Outcomes
By the end of this section, you will:
- Understand the fundamentals of SQL and relational databases.
- Write **DDL, DML, DQL, and DCL** queries.
- Perform **data analysis** using SQL queries and aggregate functions.
- Work with **Joins, Subqueries, Views, and Stored Procedures**.
- Connect a Python application with an SQL database.

## Resources
- **MySQL Official Website**: [MySQL](https://www.mysql.com/)
- **SQL W3Schools Tutorial**: [W3Schools SQL](https://www.w3schools.com/sql/)
- **MySQL Workbench Installation**:
  ```bash
  sudo apt install mysql-workbench  # Linux
  brew install mysqlworkbench  # MacOS
  ```
- **Install Python SQL Connector**:
  ```bash
  pip install pymysql
  ```

## Code Examples

### Creating a Table
```sql
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    salary DECIMAL(10,2)
);
```

### Inserting Data
```sql
INSERT INTO employees (id, name, age, salary)
VALUES (1, 'Alice', 30, 75000.00);
```

### Fetching Data
```sql
SELECT name, salary FROM employees WHERE age > 25;
```

### Joining Tables
```sql
SELECT e.name, d.department_name 
FROM employees e 
INNER JOIN departments d ON e.department_id = d.id;
```

### Using Python to Connect to SQL
```python
import pymysql

conn = pymysql.connect(host="localhost", user="root", password="root", database="company_db")
cursor = conn.cursor()
cursor.execute("SELECT * FROM employees")
for row in cursor.fetchall():
    print(row)
conn.close()
```

## Next Steps
Proceed to the next section: [Section 05 - Microsoft Excel](./Section%2005%20-%20Microsoft%20Excel) (link to the next section).