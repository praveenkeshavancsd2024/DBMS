Create table EMPLOYEES_TABLE(
    Employee_ID number(6) NOT NULL,
    First_Name varchar(20),
    Last_Name  varchar(25) NOT NULL,
    Email varchar(25) NOT NULL,
    Phone_Number Varchar(20),
    Hire_date date NOT NULL,
    Job_ID varchar(10) NOT NULL,
    salary number(8,2),
    commission_pet number (2,2),
    manager_id number(6),
    Department_id number(4) 
);
Create table Department_table(
    dept_id number(6) not null,
    dept_name varchar(20) not null,
    manager_id number(6),
    location_id number(4)
);
Create table Job_Grade(
    Grade_Level varchar(2),
    Lowest_sal number,
    Highest_sal number
);
create table Location (
    Location_id NUMBER(4) NOT NULL,
    St_addr VARCHAR2(40),
    Postal_code VARCHAR2(12),
    City VARCHAR2(30) NOT NULL,
    State_province VARCHAR2(25),
    Country_id CHAR(2)
);

create table DEPT(
    ID number(7),NAME Varchar2(25)
);

select table_name from user_tables where table_name='DEPT';

desc DEPT;

create table EMP(ID number(7),LAST_NAME varchar2(25),FIRST_NAME VARCHAR2(25),DEPT_ID NUMBER(7));

select table_name from user_tables where table_name='EMP';

desc EMP;

ALTER TABLE EMP MODIFY LAST_NAME VARCHAR2(50);

create table Employees2(
    Id NUMBER(6) NOT NULL,
    First_Name VARCHAR2(20),
    Last_Name VARCHAR2(25) NOT NULL,
    Salary NUMBER(8,2),
    DepT_id NUMBER(4)
);
DROP TABLE EMP;

RENAME Employees2 TO EMP;

COMMENT ON TABLE DEPT IS 'Department table';

desc DEPT;

COMMENT ON TABLE EMP IS 'Employee table';

SELECT comments FROM user_tab_comments WHERE table_name = 'DEPT' or table_name = 'EMP';

alter table EMP drop column First_Name;

desc EMP;


