-- Stored Procedures --
-- To Create table
CREATE TABLE procedure_orders_demo (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    order_date DATE,
    amount DECIMAL(10,2)
);

INSERT INTO procedure_orders_demo (order_id, customer_name, order_date, amount) VALUES
(1, 'Alice', '2024-12-10', 1200.50),
(2, 'Bob', '2024-12-12', 850.00),
(3, 'Charlie', '2025-01-05', 2350.75),
(4, 'David', '2025-02-14', 1490.25),
(5, 'Eve', '2025-03-03', 1950.00);

select * from procedure_orders_demo;

CREATE PROCEDURE GetHighValueOrders
    @MinAmount DECIMAL(10,2)
AS
BEGIN
    SELECT order_id, customer_name, order_date, amount
    FROM procedure_orders_demo
    WHERE amount >= @MinAmount;
END;

EXEC GetHighValueOrders @MinAmount = 1500;

CREATE PROCEDURE GetCustomerOrdersInRange
    @CustomerName VARCHAR(100),
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    SELECT order_id, order_date, amount
    FROM procedure_orders_demo
    WHERE customer_name = @CustomerName
      AND order_date BETWEEN @StartDate AND @EndDate;
END;

EXEC GetCustomerOrdersInRange 
    @CustomerName = 'Charlie', 
    @StartDate = '2024-12-01', 
    @EndDate = '2025-12-31';

DROP PROCEDURE GetHighValueOrders;
DROP PROCEDURE GetCustomerOrdersInRange;

SELECT name 
FROM sys.procedures;