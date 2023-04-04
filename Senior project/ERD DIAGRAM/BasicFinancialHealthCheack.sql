CREATE database BasicFinancialHealthcheack ;

USE BasicFinancialHealthcheack;

/* User financial information */
CREATE TABLE Userinfo (
    UserID int,
    User_Name varchar(255),
    User_password varchar(255),
    User_age int,
    User_income int,
    User_expense int,
    User_fixed_cost int,
    User_variable_cost int,
    User_asset varchar(255),
	User_Liabilities varchar(255),
    User_external_debt varchar(255),
    User_internal_debt varchar(255),
    User_insurance varchar(255),
    User_saving int,
    City varchar(255)
);

/* Grading Level by Money Index */
CREATE TABLE GradeLevel (
    GradeID int,
    Grade_level varchar(255),
    Grade_level_name varchar(255),
    Grade_description varchar(255),
    Grade_Record varchar(255),
    primary key (GradeID),
    foreign key (UserID) References Userinfo(User_income)
);

/* Staging Level */
CREATE TABLE StageLevel (
    StageID int,
    Stage_name varchar(255),
    Stage_description varchar(255),
    Stage_description varchar(255),
    Stage_Record varchar(255)
);

/* 9 Jars money management */
CREATE TABLE NineJars (
    JarID int,
    Jar_level varchar(255),
    Jar_name varchar(255),
    Jar_description varchar(255),
    Jar_Record varchar(255)
);



