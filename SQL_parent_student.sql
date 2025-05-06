--student-parent example
CREATE TABLE parents (
    pid INT PRIMARY KEY,
    father_name VARCHAR(50),
    mother_name VARCHAR(50),
    location VARCHAR(100),
    profession VARCHAR(50)
);
INSERT INTO parents (pid, father_name, mother_name, location, profession) VALUES
(101, 'Ramesh Sharma', 'Sunita Sharma', 'Mumbai', 'Engineer'),
(102, 'Mohan Kohli', 'Anjali Kohli', 'Delhi', 'Doctor'),
(103, 'Vijay Dhoni', 'Savita Dhoni', 'Ranchi', 'Teacher'),
(104, 'Prakash Raina', 'Kamala Raina', 'Gujarat', 'Businessman'),
(105, 'Manoj Pandya', 'Sheela Pandya', 'Surat', 'Banker'),
(106, 'Suresh Bumrah', 'Rekha Bumrah', 'Ahmedabad', 'Lawyer');

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    standard_class VARCHAR(20),
    sql_score INT,
    python_score INT,
    etl_score INT,
    monitor_id INT,
    pid INT,
    FOREIGN KEY (pid) REFERENCES parents(pid)
);
INSERT INTO students (student_id, first_name, last_name, standard_class, sql_score, python_score, etl_score, monitor_id, pid) VALUES
(1, 'Rohit', 'Sharma', '10A', 88, 90, 85, 1, 101),
(2, 'Virat', 'Kohli', '10A', 92, 89, 91, 1, 102),
(3, 'MS', 'Dhoni', '10B', 85, 84, 82, 3, 103),
(4, 'Suresh', 'Raina', '10B', 80, 78, 79, 3, 104),
(5, 'Hardik', 'Pandya', '11A', 89, 93, 87, 5, 105),
(6, 'Jasprit', 'Bumrah', '11A', 90, 88, 92, 5, 106);

select * from parents;
select * from students;

--Select the first and last names of all students.

--Retrieve all details of students in class '10A'.

--List all students sorted by their SQL scores in descending order.

--Show each student's name along with their father's name.

--Find students who scored more than 90 in Python.

--Count the total number of students in the table.

--Display the distinct classes students belong to.

