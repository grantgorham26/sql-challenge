# sql-challenge
 
The purpose of this mini project was to create 6 tables in sql from 6 old csv files for a company and then perform data analysis using these tables. 

## Data modeling 
To begin this mini project I first constructed a ERD (Entity Relationship Diagram). This helped determine the relationships between each table as well as identifying primary and foreign keys. 

![QuickDBD-sql-challenge](https://github.com/grantgorham26/sql-challenge/assets/154031840/875f3750-4a73-4ea3-bead-1ad04d15b472)


## Data Engineering 
For the second step of the project I created 6 tables in sql. The tables had primary keys associated with them as well as foreign keys that linked the tables to one another. 2 of the six tables were composeed of composite keys (made up of 2 primary keys). Once the tables were designed I then imported the csv files. Creation and importing the tables had to be done in specific order so that the relationships bewtween the tables was correct.

## Data Analysis
From these tables I first gathered the employee number, last name, first name, sex, and salary of each employee by referencing and joing the employees table and salaries table. Following this I gathered the first name, last name, and hire date for the employees who were hired in 1986 by first querying first and last name and hire date from the employees table then wrapping it in another query to get the specific year. I sed Xpert Learning Assistant to convert the VARCHAR data in the hire_date column to DATETIME values. Next I used the department, dept_mananger, and employees tables to identify the manager of each department along with their department number, department name, employee number, last name, and first name by joining the three on the specified columns. A similar query was done next but instead of dept_manager I used dept_emp table. This query showed the department number for each employee along with that employee’s employee number, last name, first name, and department name.
