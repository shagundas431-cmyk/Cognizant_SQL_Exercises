CREATE OR REPLACE FUNCTION fn_get_employees_by_department(p_DepartmentID INT)
RETURNS TABLE (
    EmployeeID INT,
    FirstName VARCHAR,
    LastName VARCHAR,
    DepartmentID INT,
    Salary DECIMAL,
    JoinDate DATE
)
AS $$
BEGIN
    RETURN QUERY
    SELECT e.*
    FROM Employees e
    WHERE e.DepartmentID = p_DepartmentID;
END;
$$ LANGUAGE plpgsql;