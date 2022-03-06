-- Q1
-- A : database system is a software which is used to maintain and create databases. It allows users to update, delete and create records in a efficient manner. it eliminates data redundancy and data inconsistency.

-- B : MYSQL is a software which is used to manage and create databases using structed query language(SQL). It uses simple english words to run commands and is not case sensitive.

-- C : Data redundancy means that data has been repeated or copied many times. Data inconsistency implies that any changes in data in one file is not reflected in another file which has the same data.

-- D : CHAR accepts a fixed number of charectors in the field and no matter the size it will always store the value in a memory location containing the fixed num of charectors. VARCHAR is flexible and the memory location is decided on the number of charectors a string has. however it must not exceed the max value.

-- E : Degree : 5 , Cardinality : 10

-- F i) Hegde is deleted from the table. 
--   ii) Amritha \n Arathi \n Mala \n Mehta

-- H i) A set of rows and columns.
--   ii) The number of columns or attributes in a table
--   iii) each row of a table is called a table

-- I The order by clause sorts the table when its being displayed according to ascending or descending order of a particular column or attribute. Eg: SELECT * FROM TABLE_NAME ORDER BY COLUMN_NAME DESC ;

-- J ii) LIKE
--   iii) IS
--   iiii) BETWEEN

-- L IN compares if the given value is in the specified permitted values while BETWEEN compares if value in range of the specified values. EG: AGE IN(12,18) , AGE BETWEEN 12 AND 18. first condition returns false if age =13 while second condition is true if age = 13.

-- M Constraints which ensure that data in database isnt inconsistent, redundant nor duplicated are called integrity constraints. Example DEFAULT, PRIMARY KEY, FORIEGN KEY, NOT NULL, UNIQUE, CHECK.

-- Q2
CREATE DATABASE SCHOOL ;
USE SCHOOL ;

-- A
CREATE TABLE FACULTY(
    FNO INT PRIMARY KEY,
    FNAME VARCHAR(255),
    AGE INT,
    DEPARTMENT VARCHAR(30),
    GRADE CHAR(2),
    PAY INT,
    GENDER VARCHAR(20),
    CHECK DEPARTMENT IN('MATH','ENGLISH','SCIENCE','COMPUTERS') AND GENDER IN('FEMALE', 'MALE')
);

-- B
INSERT INTO FACULTY VALUES
    (1,'GOPAL',35,'ENGLISH',9,900000,'MALE')
;

-- C
SELECT FNAME,PAY FROM FACULTY 
    ORDER BY PAY DESC , AGE ASC;

-- D
SELECT FNAME AS 'FACULTY NAME', PAY, AGE, PAY*0.2 AS 'BONUS'
    FROM FACULTY;

-- E
SELECT * FROM FACULTY
    ORDER BY AGE DESC;

-- F
SELECT * FROM FACULTY
    WHERE PAY > 8000 AND FNAME LIKE 'Z%' ;

-- G
SELECT * FROM FACULTY
    WHERE PAY BETWEEN 5000 AND 8500 
        AND FNAME LIKE 'A%';
    
-- Q3
-- B) I) 3 II) 2027 III) 7.8 IIII) 'THE'

-- C the update command is used to update tuples or records in a table.  UPDATE EMP SET SAL = SAL +500 WHERE SAL > 15000.

-- D
-- ii)
SELECT Title,Author FROM LIBRARY WHERE Author LIKE '%E%' ;
-- iii)
GETDATE();
SELECT DAY(GETDATE);

-- E) ALTER COMMAND IS USED TO MANIPULATE THE TABLE SCHEMA. IT CANT DROP, MODIFY COLUMNS.

-- G 1) DDL , 2) DML , 3)TCL 4) DDL