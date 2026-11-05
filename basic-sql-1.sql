-- sql for creating a database in MySQL
CREATE DATABASE company_dataset;

-- sql code for creating a table and add columns
CREATE TABLE EMPLOYEE(
	emp_id INT PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    email VARCHAR(40),
    phone INT,
    hire_date DATE,
    job_title VARCHAR(40),
    salary INT,
    dept_id INT,
    FOREIGN KEY (dept_id)
    REFERENCES DEPARTMENT(dept_id),
    branch_id INT,
    FOREIGN KEY (branch_id)
    REFERENCES BRANCH(branch_id),
    supplier_id INT,
    FOREIGN KEY (supplier_id)
    REFERENCES supplier(supplier_id)
);

-- To create a foreign key, a references key is needed. So if there is any foreign
-- key , it needs to be created later. example is given below
ALTER TABLE EMPLOYEE
ADD FOREIGN KEY (dept_id)
REFERENCES DEPARTMENT(dept_id);

-- To add a new command or code you need to finish the previous code using ";"

-- To insert values/ records 
INSERT INTO EMPLOYEE VALUES(1001, 'John', 'Smith', 'john.smith@gmail.com', 555101, '2020-03-15', 'Manager', 95000, 10, 1, Null)