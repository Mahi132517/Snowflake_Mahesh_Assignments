-- String Functions
-------------------------------

Select * from Employees

--1. Reverse()

Select Reverse(First_Name) from Employees

Select Reverse(First_Name) As Reverse_Name from Employees

--2. Left()

Select Left(First_Name,3) from Employees

--3. Right()

Select Right(First_Name,3) from Employees

--4. LPAD()

Select LPAD(First_Name,8,0) from Employees

--5. RPAD()

Select RPAD(First_Name,8,0) from Employees

--6. SUBSTR()

Select SUBSTR(First_Name,2,4) from Employees

--7. Length()

Select LENGTH(First_Name) from Employees

--8. Concat()

Select CONCAT(First_Name, LAST_NAME) from Employees
Select CONCAT(First_Name,' ',LAST_NAME) from Employees
Select CONCAT(First_Name,'_',LAST_NAME) from Employees

--9. Contains()

Select First_Name from EMPLOYEES Where CONTAINS (First_Name,'x')
Select Last_Name from EMPLOYEES Where CONTAINS (LAST_NAME,'h')

--10. regexp_instr()

Select First_Name, regexp_instr(FIRST_NAME,'S') As FirstOccurencePosition from EMPLOYEES 

--11. Upper()

Select UPPER(First_Name) from Employees

--12. Lower()

Select Lower(First_Name) from Employees

--Numeric Functions
--------------------------

-- MAX()

Select Max(Salary) from EMPLOYEES

SELECT DEPARTMENT_ID , MAX(SALARY) FROM HR.Class2practicetest.EMPLOYEES 
                  GROUP BY DEPARTMENT_ID
                  ORDER BY 1 DESC  

-- Min()

Select Min(Salary) from EMPLOYEES

SELECT DEPARTMENT_ID , Min(SALARY) FROM HR.Class2practicetest.EMPLOYEES 
                  GROUP BY DEPARTMENT_ID
                  ORDER BY 1 DESC 
                  
--Count()

Select Count(Salary) from Employees

SELECT first_name,count(*) FROM HR.Class2practicetest.EMPLOYEES
              group by first_name  
              having count(*) > 1  
              order by count(*)

SELECT salary, count(*) FROM HR.Class2practicetest.EMPLOYEES  
                      group by salary 
                      having count(*)  = 2

--Sum()

Select Sum(SALARY) from EMPLOYEES

--ABS()

Select Abs(-3000) As abs

Select ABS(Sum(-8+7)) As Total

--Multiplication

Select Salary*2 from EMPLOYEES

-- Greatest 

Select greatest(1,2,3,4,5,6) As greatest

-- least

Select least(1,2,3,4,5,6) As least

--Floor 

Select floor (Salary) from Employees

Select floor(16.56) As FloorValue
Select floor(00.56) As FloorValue

-- PI Value

Select PI() As PIValue

--Round()

Select Round(Salary,1) from Employees

Select Round(3.12345,2) As RoundedValue


-- From SQL material
--------------------------------------------

Create table Perosons (P_ID Int, LastName String, FistName String, Address String, City String)

Insert into PEROSONS
(P_ID, LastName, FistName, Address, City) Values 
(1,'Hansen','Ola','Timoteivn 10','Sandnes'),
(2,'Svendson','Tove','Borgvn 23','Sandnes'),
(3,'Pettersen','Kari','Storgt 20','Stavanger')

Select DISTINCT City from PEROSONS

Select * from PEROSONS where CITY = 'Sandnes'

SELECT * FROM PEROSONS
WHERE FistName='Tove'AND LastName='Svendson'

SELECT * FROM PEROSONS
WHERE FistName='Tove'OR FistName='Ola'

SELECT * FROM PEROSONS
WHERE LastName='Svendson' AND (FistName='Tove' OR FistName='Ola')

SELECT * FROM PEROSONS ORDER BY LastName

INSERT INTO PEROSONS VALUES (4,'Nilsen', 'Johan', 'Bakken 2', 'Stavanger')

INSERT INTO PEROSONS(P_Id, LastName, FistName) VALUES (5, 'Tjessem', 'Jakob')

SELECT * FROM PEROSONS ORDER BY LastName DESC 

UPDATE PEROSONS
SET Address='Nissestien 67', City='Sandnes'
WHERE LastName='Tjessem' AND FistName='Jakob'

DELETE FROM PEROSONS
WHERE LastName='Tjessem' AND FistName='Jakob'