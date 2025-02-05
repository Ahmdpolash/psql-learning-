CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT CHECK (age >= 20),
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

--- insert students table data

INSERT INTO
    students (
        first_name,
        last_name,
        age,
        grade,
        course,
        email,
        dob,
        blood_group,
        country
    )
VALUES (
        'John',
        'Doe',
        20,
        'A',
        'Computer Science',
        'john.doe@example.com',
        '2003-05-14',
        'O+',
        'USA'
    ),
    (
        'Jane',
        'Smith',
        22,
        'B',
        'Mathematics',
        'jane.smith@example.com',
        '2001-03-22',
        'A-',
        'Canada'
    ),
    (
        'Michael',
        'Johnson',
        19,
        'A',
        'Physics',
        'michael.johnson@example.com',
        '2004-08-12',
        'B+',
        'UK'
    ),
    (
        'Emily',
        'Brown',
        21,
        'C',
        'Biology',
        'emily.brown@example.com',
        '2002-01-18',
        'AB-',
        'Australia'
    ),
    (
        'David',
        'Wilson',
        23,
        'B',
        'Engineering',
        'david.wilson@example.com',
        '2000-09-25',
        'O-',
        'India'
    ),
    (
        'Sophia',
        'Taylor',
        18,
        'A',
        'Chemistry',
        'sophia.taylor@example.com',
        '2005-07-30',
        'A+',
        'Germany'
    ),
    (
        'James',
        'Anderson',
        20,
        'B',
        'History',
        'james.anderson@example.com',
        '2003-04-10',
        'B-',
        'France'
    ),
    (
        'Olivia',
        'Thomas',
        22,
        'A',
        'Literature',
        'olivia.thomas@example.com',
        '2001-12-05',
        'O+',
        'Italy'
    ),
    (
        'Liam',
        'Moore',
        19,
        'C',
        'Economics',
        'liam.moore@example.com',
        '2004-06-15',
        'AB+',
        'Japan'
    ),
    (
        'Isabella',
        'Jackson',
        21,
        'B',
        'Philosophy',
        'isabella.jackson@example.com',
        '2002-11-08',
        'A-',
        'South Africa'
    );

-- retrive data from table
SELECT * FROM students

-- rename a column name using as
SELECT email as student_email FROM students

-- sorting ascending using order by email
SELECT * FROM students ORDER BY age ASC

-- get unique data count
SELECT DISTINCT blood_group from students

-- data filtering
-- select student from USA
--select student with A grade in physics
--select student with specific blood group (A)
--select student from usa or australia
--select student from usa or australia and age is 25
--select student whose age is older than 21

SELECT * from students WHERE country = 'USA'

SELECT * FROM students WHERE grade = 'A' AND course = 'Physics'

SELECT * from students WHERE blood_group = 'A+'

SELECT *
from students
WHERE (
        country = 'USA'
        OR country = 'Australia'
    )

SELECT *
FROM students
WHERE (
        country = 'USA'
        OR country = 'Australia'
    )
    and age = 20

SELECT * FROM students WHERE age > 21 and course = 'Mathematics'

SELECT * from students WHERE NOT country = 'USA'

---- todo not operators ----------------

SELECT * FROM students WHERE email is not NULL

SELECT COALESCE(email, 'email') from students

-------------todo IN operator-----------------

-- SELECT * from students WHERE (country = 'USA' OR country = 'Australia')
-- we can use IN operator when we need add multiple or operators
SELECT * from students WHERE country IN ('USA', 'Australia')

SELECT * from students WHERE country NOT IN ('USA', 'Australia')

------------------todo between operator ---------------
-- select student whose age is between 20 and 22

SELECT * FROM students WHERE age BETWEEN 20 AND 22

----------------- todo like operator(case sensitive)----------------
SELECT * FROM students WHERE first_name like 'J%'

SELECT *
FROM students
WHERE
    first_name like '__a%' --(__) means two character before a character

----------------- todo ilike operator (not case sensitive)----------------
SELECT * FROM students WHERE first_name ilike 'j%'

---------todo Pagination with Limit Offset and Data Deletion in PostgreSQL------------

SELECT * FROM students LIMIT 5 OFFSET 5 * 0

SELECT * FROM students LIMIT 5 OFFSET 5 * 1

------------------todo 'DELETE'------------------
SELECT * FROM students

DELETE FROM students where grade = 'B'

----------------- todo : 'UPDATE'----------------

UPDATE students SET grade = 'A+' WHERE grade = 'C'




SELECT age FROM students 




