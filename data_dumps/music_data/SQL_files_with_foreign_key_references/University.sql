DROP DATABASE IF EXISTS `University`;

CREATE DATABASE `University`;

USE `University`;


CREATE TABLE `Student` (
    `GivenNames` CHAR(40),
    `Surname` CHAR(45),
    `Student_ID` CHAR(8),
    `DateOfBirth` DATE,
    `YearEnrolled` YEAR,
    `Program_ID` CHAR(8),
    PRIMARY KEY (`Student_ID`)
);

CREATE TABLE `Program` (
    `Name` CHAR(40),
    `Program_ID` CHAR(8),
    `CreditPoints` SMALLINT,
    `YearCommenced` YEAR,
    PRIMARY KEY (`Program_ID`)
);

CREATE TABLE `Course` (
    `Name` CHAR(40),
    `Course_ID` CHAR(8),
    `CreditPoints` SMALLINT,
    `YearCommenced` YEAR,
    PRIMARY KEY (`Course_ID`)
);

CREATE TABLE `Attempts` (
    `Year` YEAR,
    `Semester` CHAR(2),
    `Mark` SMALLINT,
    `Grade` CHAR(4),
    `Student_ID` CHAR(8),
    `Course_ID` CHAR(8),
    PRIMARY KEY (`Semester`, `Year`),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);

CREATE TABLE `EnrolsIn` (
    `Student_ID` CHAR(8),
    `Program_ID` CHAR(8),
    PRIMARY KEY (`Student_ID`, `Program_ID`),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Program_ID) REFERENCES Program(Program_ID)
);

CREATE TABLE `Contains` (
    `Semester` CHAR(2),
    `Year` YEAR,
    `Course_ID` CHAR(8),
    `Program_ID` CHAR(8),
    PRIMARY KEY (`Course_ID`, `Program_ID`),
    FOREIGN KEY (Program_ID) REFERENCES Program(Program_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);
