-- Start a transaction
BEGIN TRANSACTION;

-- Step 1: Insert a new employee
INSERT INTO employees (id, name, dept_id, manager_id, hire_date)
VALUES (101, 'Test User 2', 1, NULL, '2025-06-09');

-- Step 2: Create a savepoint
SAVE TRANSACTION BeforeUpdate;

-- Step 3: Update the employee’s name
UPDATE employees
SET name = 'Prince'
WHERE id = 101;

-- Step 4: Rollback to savepoint
ROLLBACK TRANSACTION BeforeUpdate;

-- Step 5: View the result (name should be 'Test User')
SELECT * FROM employees WHERE id = 100;

-- Step 6: Commit the transaction to make the insert permanent
COMMIT;
