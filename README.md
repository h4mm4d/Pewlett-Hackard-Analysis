# Pewlett-Hackard-Analysis
## Overview
Pewlett-Hackard is having is trying to determine how many of its employees are retiring. As those employees retire there will be room for new employees and those employees needs to be trained. Therefore, the second part of the project is to identify which employees can be mentors to new employees coming in. SQL is a powerful query language for relational databases is used to help with this issue. The process was to create employee database using POSTGRESSQL and then use SQL on PGADMIN portal to create reports.   
There are the parts of deliverable #1:
    1.1. Find out employees and title who were born between January 1st, 1952, to December 31st, 1955. As those employees will be retiring soon. 
    1.2. As employees do change jobs while with the company and some have already left. It needs to be determined that which of those employees in first query are still employed with PH and what is their current job title. 
    1.3. Here we count and sort those retiring employees by departments so job position could be opened by departments to facilitate filling those roles.  
The goal of deliverable #2 is to determine people who are eligible to mentor those new hires who will be filling those positions. It determines these mentorship roles will be given to people who were born in the year 1965. 
The ERD to database is as follows 
![ERD](https://github.com/h4mm4d/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png.png?raw=true)
## Results 
The results were as follows
    1.1 There were 133776 records in this case. However, However, there were employees who have left and multiple records for employees who help more than one position during their employment. 
    ![Big List](https://github.com/h4mm4d/Pewlett-Hackard-Analysis/blob/main/Data/1.1.PNG?raw=true)
    1.2 To get a better idea of number of retiring employees these two filters were added to the query.
        - Remove employees who have already left the company 
        - list only the most current job title
    The result was these could be 72,458 current employees that could be retiring. 
    ![Short List](https://github.com/h4mm4d/Pewlett-Hackard-Analysis/blob/main/Data/1.2.PNG?raw=true)
    1.3 Once there is a list of employees it was needed to be sorted by position title so the job could be opened and filled. There were seven different titles as below. 
    ![titles](https://github.com/h4mm4d/Pewlett-Hackard-Analysis/blob/main/Data/1.3.PNG?raw=true)

2.
Once those jobs are filled with new employees, those employees mentored, and trained. It was decided that people who were born in the year 1965 will take the job of mentors. The requirement for this report 
    1. The employee must a current employee
    2. The DOB must be between Jan 1st, 1965, to Dec 31st, 1965. 
    3. The report must have employee number, first and last name, birth date, employment date, and position title. 
The were 1549 employees that could play a role as mentor.
![Mentors](https://github.com/h4mm4d/Pewlett-Hackard-Analysis/blob/main/Data/2.0.PNG?raw=true)

## Summary
Soon there will be over 70k employees will be retiring and those positions will need to fill with promotions and hiring. If by promotion, then the newly vacant position will need to be filled. Therefore, there has to be over 70k hiring in a year or so. PH will have to come up with strategy to fill those positions and get new hires up to speed. SQL database and query language can help slice and dice data in a way that this big job can be divided into many smaller jobs. Therefore, SQL could be a great tool analyzing, and dividing a large set of data into manageable pieces.
