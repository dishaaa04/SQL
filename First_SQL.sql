DROP DATABASE IF EXISTS color;
CREATE DATABASE color;
USE color;

CREATE TABLE STUDENTS (
   student_id INT,
   first_name VARCHAR(50),
   last_name VARCHAR(50),
   email VARCHAR(100),
   phone VARCHAR(15),
   dob DATE,
   gender VARCHAR(10),
   course VARCHAR(50),
   year INT,
   address TEXT
);

CREATE TABLE COURSES (
   course_id INT,
   course_name VARCHAR(100),
   department VARCHAR(50),
   credits INT,
   instructor_id INT,
   duration_weeks INT,
   level VARCHAR(20),
   mode VARCHAR(20),
   start_date DATE,
   end_date DATE
);

CREATE TABLE INSTRUCTORS (
   instructor_id INT,
   first_name VARCHAR(50),
   last_name VARCHAR(50),
   email VARCHAR(100),
   phone VARCHAR(15),
   hire_date DATE,
   department VARCHAR(50),
   designation VARCHAR(50),
   salary DECIMAL(10,2),
   experience_years INT
);


CREATE TABLE EXAMS (
   exam_id INT,
   course_id INT,
   student_id INT,
   exam_date DATE,
   exam_type VARCHAR(30),
   total_marks INT,
   marks_obtained INT,
   grade VARCHAR(2),
   status VARCHAR(20),
   remarks TEXT
);

CREATE TABLE LIBRARY (
   book_id INT,
   title VARCHAR(100),
   author VARCHAR(50),
   publisher VARCHAR(50),
   isbn VARCHAR(20),
   genre VARCHAR(30),
   pages INT,
   edition VARCHAR(20),
   language VARCHAR(30),
   availability VARCHAR(10)
);

ALTER TABLE STUDENTS
ADD blood_group VARCHAR(5),
ADD nationality VARCHAR(30),
ADD guardian_name VARCHAR(50),
ADD enrollment_date DATE;

ALTER TABLE COURSES
ADD course_fee DECIMAL(10,2),
ADD prerequisite VARCHAR(100),
ADD course_rating DECIMAL(3,2),
ADD is_active BOOLEAN;

ALTER TABLE INSTRUCTORS
ADD office_number VARCHAR(10),
ADD research_area VARCHAR(100),
ADD qualification VARCHAR(100),
ADD is_full_time BOOLEAN;

ALTER TABLE EXAMS
ADD semester VARCHAR(20),
ADD invigilator_id INT,
ADD location VARCHAR(50),
ADD retest_allowed BOOLEAN;

ALTER TABLE LIBRARY
ADD rack_number VARCHAR(10),
ADD issue_status BOOLEAN,
ADD borrow_date DATE,
ADD return_due_date DATE;


ALTER TABLE STUDENTS DROP COLUMN phone;
ALTER TABLE COURSES DROP COLUMN mode;
ALTER TABLE INSTRUCTORS DROP COLUMN phone;
ALTER TABLE EXAMS DROP COLUMN remarks;
ALTER TABLE LIBRARY DROP COLUMN language;


ALTER TABLE STUDENTS
RENAME COLUMN first_name TO fname,
RENAME COLUMN last_name TO lname,
RENAME COLUMN email TO email_id,
RENAME COLUMN address TO home_address;

ALTER TABLE COURSES
RENAME COLUMN course_name TO cname,
RENAME COLUMN department TO dept,
RENAME COLUMN credits TO credit_hours,
RENAME COLUMN level TO course_level;

ALTER TABLE INSTRUCTORS
RENAME COLUMN first_name TO fname,
RENAME COLUMN last_name TO lname,
RENAME COLUMN email TO email_id,
RENAME COLUMN designation TO job_title;

ALTER TABLE EXAMS
RENAME COLUMN exam_date TO date_of_exam,
RENAME COLUMN total_marks TO full_marks,
RENAME COLUMN marks_obtained TO score,
RENAME COLUMN grade TO final_grade;

ALTER TABLE LIBRARY
RENAME COLUMN title TO book_title,
RENAME COLUMN author TO author_name,
RENAME COLUMN isbn TO isbn_code,
RENAME COLUMN pages TO total_pages;


ALTER TABLE STUDENTS
MODIFY dob VARCHAR(20),
MODIFY gender CHAR(1),
MODIFY year SMALLINT,
MODIFY course VARCHAR(100);

ALTER TABLE COURSES
MODIFY course_id BIGINT,
MODIFY cname VARCHAR(150),
MODIFY credit_hours TINYINT,
MODIFY is_active TINYINT;

ALTER TABLE INSTRUCTORS
MODIFY salary FLOAT,
MODIFY experience_years SMALLINT,
MODIFY is_full_time TINYINT,
MODIFY hire_date VARCHAR(20);

ALTER TABLE EXAMS
MODIFY score FLOAT,
MODIFY final_grade CHAR(1),
MODIFY status VARCHAR(15),
MODIFY retest_allowed TINYINT;

ALTER TABLE LIBRARY
MODIFY book_id BIGINT,
MODIFY availability TINYINT,
MODIFY rack_number VARCHAR(20);
