insert into Department.Department ([Name],[Location])
values('Marketing','1st Floor');

insert into Department.Department ([Name],[Location])
values('Human Resources','1st Floor');

insert into Department.Department ([Name],[Location])
values('IT','1st Floor');

insert into Employee.Employee (Did,FirstName,LastName)
values(1,'Tina','Smith');

insert into Employee.Employee (Did,FirstName,LastName)
values(1,'John','Smith');

insert into Employee.Employee (Did,FirstName,LastName)
values(3,'Tim','Johnson');

insert into Employee.EmployeeDetails (Eid,Salary,Street,City,Province)
values(2,10000,'1234 First Street','Arlington','Texas');

insert into Employee.EmployeeDetails (Eid,Salary,Street,City,Province)
values(3,1234,'1234 Second Road','Dallas','Texas');

insert into Employee.EmployeeDetails (Eid,Salary,Street,City,Province)
values(2,35000,'2332 Center Street','Orlando','Florida');

Select * from Employee.Employee
where Did = 1;

select firstname,salary from Employee.Employee, Employee.EmployeeDetails
where firstname = 'Tina';
