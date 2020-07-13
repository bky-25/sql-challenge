CREATE TABLE employees (
	id SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(25) NOT NULL,	
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date DATE NOT NULL,
	last_updated timestamp null DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE departments (
	id SERIAL PRIMARY KEY,
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(50) UNIQUE NOT NULL,
	last_updated timestamp null DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE dept_manager (
	id SERIAL PRIMARY KEY,
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	last_updated timestamp null DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE dept_emp(
	id SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	last_updated timestamp null DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE titles (
	id SERIAL PRIMARY KEY,
	title_id VARCHAR(50) NOT NULL,
	title VARCHAR(100) NOT NULL,
	last_updated timestamp null DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE salaries (
	id SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	last_updated timestamp null DEFAULT CURRENT_TIMESTAMP
);
