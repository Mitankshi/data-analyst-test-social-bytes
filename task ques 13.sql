use mita;
CREATE TABLE Student (
    ID INT PRIMARY KEY NOT NULL,
    Name VARCHAR(20) NOT NULL,
    Age INT NOT NULL,
    Address VARCHAR(25)
);
-- Insert 5 records into the Student table
INSERT INTO Student (ID, Name, Age, Address)
VALUES
    (1, 'John Doe', 20, '123 Main St'),
    (2, 'Jane Smith', 22, '456 Elm St'),
    (3, 'Bob Johnson', 19, '789 Oak St'),
    (4, 'Alice Brown', 21, '101 Maple St'),
    (5, 'Eve White', 23, '202 Pine St');

select * from student;

SELECT *
FROM Student
WHERE Age = (SELECT MIN(Age) FROM Student);

SELECT Person.Name, Address.Address
FROM Person
INNER JOIN Address ON Person.PersonID = Address.PersonID;














