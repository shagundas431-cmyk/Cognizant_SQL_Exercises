# Exercise 1 - Create Stored Procedure (Retrieve Employees by Department)
Create a stored procedure to retrieve employee details based on DepartmentID.

The task is to retrieve employee details by DepartmentID using a stored procedure.  
Although the sample code may show an INSERT procedure, the actual requirement is retrieval.

- Stored Procedure in PostgreSQL
- PL/pgSQL
- SELECT Query
- Parameters (IN)

 Files Included

- schema.sql → Creates Employees table
- sample_data.sql → Inserts sample records
- solution.sql → Stored procedure to fetch employees by DepartmentID

 Stored Procedure Logic

The procedure takes DepartmentID as input and filters employees from the Employees table.


CREATE OR REPLACE PROCEDURE sp_get_employees_by_department(
    IN p_DepartmentID INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    RAISE NOTICE 'Department: %', p_DepartmentID;

    PERFORM *
    FROM Employees
    WHERE DepartmentID = p_DepartmentID;
END;
$$;