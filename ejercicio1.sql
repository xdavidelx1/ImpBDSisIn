CREATE TABLE SampleData (
IntegerValue INTEGER PRIMARY KEY
);

INSERT INTO SampleData VALUES (3759), (3760), (3761), (3762), (3763);

SELECT MAX(IntegerValue) AS SecondHighest
FROM SampleData
WHERE IntegerValue < (
SELECT MAX(IntegerValue)
FROM SampleData
);




Parte 2

CREATE TABLE Employees (
Name VARCHAR(100),
Salary INT
);

INSERT INTO Employees (Name, Salary) VALUES
('Ayumi Arenas', 250000),
('Saul Hernandez', 250000),
('Alan Luna', 150000),
('Victor Sanchez', 150000),
('Jose Solis', 100000),
('Keysha Garcia', 100000);

SELECT DISTINCT Salary
FROM Employees
ORDER BY Salary DESC
LIMIT 1 OFFSET 1;