# SQL-Practice
## This repository contains structured SQL scripts organized by topic for mastering SQL using **SQL Server Management Studio (SSMS)**. Each script contains hands-on practice examples with self-contained tables and sample data, ensuring clean, conflict-free execution per topic.
## Repository File Structure

## Topics Covered

###  1. DDL (Data Definition Language)
- **CREATE**: Tables, constraints, indexes
- **ALTER**: Add/drop columns, rename tables, modify constraints
- **DROP**: Remove tables and indexes safely
- **TRUNCATE**: Clear all records without deleting structure

###  2. DML (Data Manipulation Language)
- **INSERT**: Add new rows (single/multiple)
- **UPDATE**: Modify records with/without JOINs
- **DELETE**: Remove specific rows using conditions
- **SELECT**: Retrieve data with WHERE, ORDER BY, LIMIT, OFFSET

###  3. DCL (Data Control Language)
- **GRANT**: Assign privileges (SELECT, INSERT, etc.)
- **REVOKE**: Remove user privileges

###  4. DQL (Data Query Language)
- **SELECT** with:
  - Aggregations: COUNT, SUM, AVG, MIN, MAX
  - GROUP BY and HAVING for grouped filtering
  - ORDER BY for sorting results

###  5. TCL (Transaction Control Language)
- **COMMIT**: Save transactions permanently
- **ROLLBACK**: Undo current transactions
- **SAVEPOINT**: Set checkpoints within a transaction

###  6. Constraints
- **PRIMARY KEY**: Ensure row uniqueness
- **FOREIGN KEY**: Maintain referential integrity
- **UNIQUE**: Enforce column-level uniqueness
- **CHECK**: Restrict values in a column
- **NOT NULL**: Disallow NULL values

###  7. Joins
- **INNER JOIN**
- **LEFT JOIN**
- **RIGHT JOIN**
- **FULL JOIN**
- **CROSS JOIN**

Each join type is explained with real-world examples using custom sample tables.

###  8. Aggregation Functions & Clauses
- **Functions**: `SUM`, `AVG`, `COUNT`, `MIN`, `MAX`
- **Clauses**: `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`

###  9. SQL Operators
- **Arithmetic**: `+`, `-`, `*`, `/`
- **Comparison**: `=`, `!=`, `<`, `>`, `<=`, `>=`
- **Logical**: `AND`, `OR`, `NOT`
- **String Concatenation**: `||`

###  10. Procedures
- **CREATE PROCEDURE**: Build reusable logic blocks
- **ALTER PROCEDURE**: Modify procedure logic
- **DROP PROCEDURE**: Remove unwanted procedures
- **EXECUTE**: Run stored procedures with parameters

###  11. Subquery & CTE (Common Table Expression)
- **Subqueries**: Nested queries in SELECT, FROM, WHERE
- **CTEs**: Temporary named result sets for cleaner queries
- Includes simple and recursive CTE examples.

###  12. Views
- **CREATE VIEW**: Simplify complex queries
- **DROP VIEW**: Remove obsolete views

