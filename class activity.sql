USE EMPDMBS

Create table EMPL(
    Empno integer,
    Ename varchar(20),
    Job varchar(20),
    MGR integer,
    HireDate date,
    Sal float,
    Comm float Default(0),
    DepNo integer);


INSERT INTO EMPL VALUES
    (8369,'Smith','Clerk',8902,'1990-12-18',800.00,Null,20),
    (8499,'Anya',' Salesman',8698,'1991-01-20',160.00,300.00,30),
    (8521,'Seth',' Salesman',8698,'1991-02-22',1250.00,500.00,30),
    (8566,'Mahadevan','Manager',8839,'1991-04-02',2985.00,Null,20),
    (8654,'Momin',' Salesman',8698,'1991-09-28',1250.00,1400.00,30),
    (8698,'Bina',' Manager',8839,'1991-05-01',2850.00,Null,30),
    (8839,'Amir',' President',Null,'1991-11-18',5000.00,Null,10),
    (8844,'Kuldeep','Salesman',8698,'1991-09-08',1500.00,0.00,30),
    (8882,'Shiavnsh','Manager',8839,'1991-06-09',2450.00,Null,10),
    (8886,'Anoop',' Clerk',8888,'1993-01-12',1100.00,Null,20),
    (8888,'Scott','Analyst',8566,'192-12-09',3000.00,Null,20),
    (8900,'Jatin','Clerk',8698,'1991-12-03',950.00,Null,30),
    (8902,'Fakir','Analyst',8566,'1991-12-03',3000.00,Null,20),
    (8934,'MIta',' Clerk',8882,'1992-01-23',1300.00,Null,10);

-- Q1
SHOW TABLES ;


-- Q2
DESC EMPL ;

-- Q3
SELECT * FROM EMPL ;

-- Q4
SELECT Empno, Ename , job FROM EMPL ;

-- Q5
SELECT * FROM EMPL 
    WHERE Sal BETWEEN 3000 AND 5000;

-- Q6
SELECT * FROM EMPL 
    WHERE( Sal < 3000 OR Sal > 5000) ;

-- Q7
SELECT * FROM EMPL
    WHERE (Sal BETWEEN 3000 AND 5000) OR job = 'Salesman' ;

-- Q8
SELECT * FROM EMPL
    WHERE Job IN('clerk','salesman') ;

-- Q9
SELECT * FROM EMPL
    WHERE Sal >= 3000;

-- Q10
SELECT * FROM EMPL
    WHERE Sal > 3000;

-- Q11
SELECT * FROM EMPL
    WHERE HireDate < '1991-01-01' ;

-- Q12
CREATE TABLE EMPL_COPY AS SELECT * FROM EMPL;

-- Q13
SELECT DISTINCT Job FROM EMPL;

-- Q14
SELECT 22*10 FROM EMPL;

-- Q15
SELECT * FROM EMPL 
    WHERE Comm IS NULL;

-- Q16
SELECT Ename,Sal,Comm FROM EMPL
    WHERE Comm IS NOT NULL;

-- Q17
SELECT Ename + " Earns a salary of amount " + Sal FROM EMPL;

-- Q18
SELECT Empno,Ename FROM EMPL
    WHERE Ename LIKE "%a%" ;

-- Q19
SELECT Empno,Ename FROM EMPL
    WHERE Ename LIKE "_____" ;

-- Q20
SELECT * FROM EMPL
    WHERE Ename LIKE "____" AND Job = 'clerk' ;

-- Q21
SELECT * FROM EMPL
    WHERE DepNo IN(10,20);

-- Q22
DROP TABLE EMPL_COPY;

-- Q23
ALTER TABLE EMPL
    ADD Dname VARCHAR(255);

-- Q24
UPDATE EMPL
    SET Dname = 'service'
    WHERE Job = 'Clerk';

-- Q25
ALTER TABLE EMPL
DROP COLUMN Dname ;
