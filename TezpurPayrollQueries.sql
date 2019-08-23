-- 1
SELECT employee.emp_name FROM employee, department WHERE department.emp_id=employee.emp_id AND department.name="CSE";

-- 2
SELECT employee.emp_name FROM employee, salary WHERE salary.emp_id=employee.emp_id AND salary.Gross>21000;

-- 3
SELECT salary.da, salary.ta, salary.hra FROM salary, employee WHERE employee.emp_id=salary.emp_id AND employee.emp_name="Rob";

-- 4
SELECT employee.emp_name, time_off.Daysoff FROM time_off, employee WHERE employee.emp_id=time_off.emp_id;

-- 5
SELECT employee.emp_name, department.Name FROM department, employee WHERE employee.emp_id=department.emp_id;

-- 6
SELECT employee.name_grade FROM department, employee WHERE employee.emp_id=department.emp_id AND department.Name="CSE";

-- 7
SELECT employee.emp_name, salary.TAX FROM salary, employee WHERE employee.emp_id=salary.emp_id;

-- 8 
SELECT employee.emp_name FROM employee WHERE employee.join_date BETWEEN "2007-04-10" AND "2008-08-28";

-- 9
SELECT employee.email FROM department, employee WHERE employee.emp_id=department.emp_id AND department.Name="CSE";

-- 10
SELECT time_off.Daysoff FROM time_off, employee WHERE employee.emp_id=time_off.emp_id AND employee.emp_name="Rohim";

-- 11
ALTER TABLE employee ADD COLUMN employee_phone VARCHAR(20) NULL AFTER join_date;

-- 12
SELECT employee.emp_name FROM salary, employee WHERE employee.emp_id=salary.emp_id AND salary.base="8000";

-- 13
SELECT employee.emp_name FROM balance, employee WHERE employee.emp_id=balance.emp_id ORDER BY balance.Bank_Balance DESC LIMIT 1;

-- 14
SELECT employee.emp_name FROM balance, employee WHERE employee.emp_id=balance.emp_id AND balance.Loan_Amount>0;

-- 15
SELECT balance.Bank_Balance FROM balance, employee WHERE employee.emp_id=balance.emp_id AND employee.emp_name="CSEMP07001";