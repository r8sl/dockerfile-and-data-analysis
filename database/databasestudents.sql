-- Create a new database if it does not already exist

CREATE DATABASE IF NOT EXISTS uni_db;
USE uni_db;

-- Create the table if it does not already exist

CREATE TABLE IF NOT EXISTS STUDENTS (
    id varchar(15) PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    cgpa DECIMAL(3,2) NOT NULL,
    age INTEGER NOT NULL ,
    department VARCHAR(50) NOT NULL
);


INSERT INTO STUDENTS (id, student_name, cgpa, age , department) VALUES
('2206174', 'Marwan abdelhamid', 3.1, 19 , 'cyberSecurity'),
('22010443', 'Aly waleed ', 3.3, 19 , 'cyberSecurity'),
('2206196', 'Mohamed ashraf', 3.0, 18 , 'cyberSecurity'),
('2306135', 'peter hani', 3.2, 19, 'cyberSecurity'),
('2200565', 'marwan zahran', 3.1, 19, 'cyberSecurity');