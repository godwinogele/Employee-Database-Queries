# Employee Database Queries
This repository contains SQL queries for working with an Employee Database. The following queries demonstrate how to retrieve and analyze data from the Employee_Details and Employee_Salary tables.

# Using 'Select' Statements
To retrieve data from the Employee_Details table, you can use the following SQL query:

```sql
SELECT *
FROM Employee_Details;
```

To retrieve specific columns (EmployeeID, FirstName, Age, Gender) from the Employee_Details table, you can use this query:

```sql
SELECT EmployeeID, FirstName, Age, Gender
FROM Employee_Details;
```

# Youngest Employees
To find the youngest employees in the Employee_Details table, you can use the following query:

```sql
SELECT EmployeeID, FirstName, Age, Gender
FROM Employee_Details
WHERE Age = (SELECT MIN(Age) FROM Employee_Details);
```

# Oldest Employees
To find the oldest employees in the Employee_Details table, you can use the following query:

```sql
SELECT EmployeeID, FirstName, Age, Gender
FROM Employee_Details
WHERE Age = (SELECT MAX(Age) FROM Employee_Details);
```

# Number of Employees
To know the number of employees in the Employee_Details table, you can use the following query:

```sql
SELECT COUNT(*) AS number_of_employees
FROM Employee_Details;
Employee Salary Analysis
To analyze employee salaries, you can use the following queries:
```

# Highest Salary
To find the highest-paid employee, you can use the following query:

```sql
SELECT MAX(Salary) AS highest_paid
FROM Employee_Salary;
```

# Lowest Salary
To find the lowest-paid employee, you can use the following query:

```sql
SELECT MIN(Salary) AS lowest_paid
FROM Employee_Salary;
```
# Average Salary
To calculate the average salary of all employees, you can use this query:

```sql
SELECT AVG(Salary) AS average_salary
FROM Employee_Salary;
```

# Employees under 30 Years
To count the number of employees who are under 30 years old, you can use the following query:

```sql
SELECT COUNT(*) AS age
FROM Employee_Details
WHERE Age < 30;
```

Feel free to use these SQL queries to retrieve and analyze data from your Employee Database.
