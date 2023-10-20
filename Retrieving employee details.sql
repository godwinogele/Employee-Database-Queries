---Using 'Select' statements

---Retrieving data from Employee details table
Select*
From Employee_Details;

---Retrieving EmployeeID, FirstName, Age, Gender data from Employee details table
Select EmployeeID, FirstName, Age, Gender
from Employee_Details;

---Youngest employees
Select EmployeeID, FirstName, Age, Gender
from Employee_Details
where age = (select min (age) from Employee_Details);

---Oldest employees
Select EmployeeID, FirstName, Age, Gender
from Employee_Details
where age = (select max (age) from Employee_Details);

---Number of columns in employee details tables
Select count(*) as number_of_employees
From Employee_Details;

---Highest salary
Select max (salary) as highest_paid
from Employee_Salary;

---Lowest salary
select min (salary) as lowest_paid
from Employee_Salary;

---Average salary
select avg (salary) as average_salary
from Employee_Salary;

---Staff who are less than 30years
select count(*) age
from Employee_Details
where age > 30;

---Staff who are less than 30years
Select EmployeeID, FirstName, Age, Gender
from Employee_Details
where age < 30
