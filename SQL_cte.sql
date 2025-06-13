-- Common Table Expressions --
CREATE TABLE cte_sales_demo (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    quantity INT,
    price_per_unit DECIMAL(10,2),
    region VARCHAR(50)
);

INSERT INTO cte_sales_demo (sale_id, product_name, quantity, price_per_unit, region) VALUES
(1, 'Laptop', 2, 55000, 'North'),
(2, 'Mouse', 10, 500, 'South'),
(3, 'Keyboard', 5, 800, 'North'),
(4, 'Monitor', 3, 12000, 'East'),
(5, 'Laptop', 1, 60000, 'West'),
(6, 'Mouse', 15, 450, 'East'),
(7, 'Monitor', 4, 11000, 'North');

select * from cte_sales_demo;

WITH SalesTotal AS (
    SELECT 
        sale_id,
        product_name,
        quantity,
        price_per_unit,
        quantity * price_per_unit AS total_sale
    FROM cte_sales_demo
)
SELECT * FROM SalesTotal;

WITH RegionRevenue AS (
    SELECT 
        region,
        quantity * price_per_unit AS total_sale
    FROM cte_sales_demo
)
SELECT region, SUM(total_sale) AS total_revenue
FROM RegionRevenue
GROUP BY region;

WITH Numbers AS (
    SELECT 1 AS num
    UNION ALL
    SELECT num + 1
    FROM Numbers
    WHERE num < 10
)
SELECT * FROM Numbers;

