# sql-challenge (PostgreSQL)

For this assignment, I was given a company's employee data (imaginary) to work with to clean, reassemble and analyze in order to find out various information about the employees. 

First, I set up table schemas for each csv file in order to work with the information on PostgreSQL. I assigned appropriate input syntax for each column, and I identified a primary key and foreign keys for each table, in the order that allows the schemas to be well integrated with each other. Primary/foreign keys are identified to work more easily between all the tables in case some values need manipulation in the future. 

Second, I generated an ERD (entity-relationship model) to visualize connections across the data (primary-foreign key link).

Third, I did some querying to find out various questions about employee data which could be answered with visualized tables mainly through JOINing two or more tables. For example, I made a list of employees who work in the 'Sales' deparment along with their last name, first name, and employee number, of which the department name was not included in the same csv as the other employee information and needed to be JOINed in order to show in the same table. 
