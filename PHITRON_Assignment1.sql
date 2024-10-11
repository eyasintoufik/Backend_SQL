USE Assignment1;

DROP TABLE Student;

#1 and 2.
CREATE TABLE Student(
    Roll CHAR (4) PRIMARY KEY,
    Name VARCHAR (50) NOT NULL,
    Email VARCHAR(60) UNIQUE,
    Address VARCHAR(255),
    Age INT CHECK (Age>15)
);  

DROP TABLE Library;  

CREATE TABLE Library (
     BookName VARCHAR (50) PRIMARY KEY,
     Roll CHAR(4) ,
     Book_issueDate DATE NOT NULL,
     Return_date DATE ,
     FOREIGN KEY (Roll) REFERENCES Student(Roll)
     );
     
CREATE TABLE Fees(
     fee_id INT PRIMARY KEY,
     Roll CHAR(4),
     Amount DECIMAL (20,2) NOT NULL,
     Fee_date DATE NOT NULL,
     Place VARCHAR(15) CHECK (Place IN("PAID" OR "PENDING")),
     FOREIGN KEY (Roll) REFERENCES Student(Roll)
);  

#3. Data contains raw materials which do not carry any specific meaning and it can be kept unorganised way. On the other hand , information contains multiple data whivh is kept in an organised way.
#4.the reason is , in my sql we need to on the permission . for that we need to write a SET query- SET SQL_SAFE_UPDATES = 0. we need to write this set query first then we have write update/delete query. after that if someone wants to off the permission then that person can add this query in the last line - SET SQL_SAFE_UPDATES= 1.    
#5.
SELECT DISTINCT Department
FROM Employee;
#6.
SELECT LastName
FROM Employee
ORDER BY Age DESC;
#7.
SELECT LastName 
FROM Employee
WHERE Age>30 and Department = Marketing;
#8.
SELECT *
FROM Employee;
#9.
SELECT FirstName , LastName
FROM Employee
WHERE FirstName LIKE '%son%'
       or LastName LIKE '%son%';
       
#10.
SELECT *
WHERE Department = Engineering ;       

 
 