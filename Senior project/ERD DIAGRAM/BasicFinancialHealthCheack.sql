DROP DATABASE BasicFinancialHealthcheack;
CREATE DATABASE BasicFinancialHealthcheack;
USE BasicFinancialHealthcheack;

/* Login user  */

CREATE TABLE Registration (
    id INT(11) NOT NULL AUTO_INCREMENT,
    User_Email VARCHAR(50) NOT NULL,
    User_Password VARCHAR(50) NOT NULL,
    User_registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

    



/* User financial information */
CREATE TABLE Userinfo (
    UserID int not null primary key,
    User_Name varchar(255),
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
    User_saving int
);

/* Grading Level by Money Index */
CREATE TABLE GradeLevel (
    GradeID int,
    Grade_level int,
    Grade_SavingRatio decimal,
    Grade_DebtRatio decimal,
    Grade_EmergencyRatio decimal,
    Grade_Networth decimal,
    Grade_level_name varchar(255),
    Grade_description varchar(255),
    Grade_Record varchar(255),
    Grade_date date,
    UserID int,
    primary key (GradeID),
    foreign key (UserID) REFERENCES Userinfo(UserID)
    
);

/* 9 Jars money management */
CREATE TABLE NineJars (
    JarID int,
    Jar_level int,
    Jar_Ness int,
    Jar_Edu int,
    Jar_Play int,
    Jar_Give int,
    Jar_Insurance int,
    Jar_Retirement int,
    Jar_Emergency int,
    Jar_MoneyFreedom int,
    Jar_Debt int,
    primary key (JarID)
);

/* Staging Level */
CREATE TABLE StageLevel (
    StageID int,
    Stage_name varchar(255),
    Stage_description varchar(255),
    Stage_Record varchar(255),
    GradeID int,
    JarID int,
    primary key (StageID),
    foreign key (GradeID) REFERENCES GradeLevel(GradeID),
    foreign key (JarID) REFERENCES NineJars(JarID)
);

/* Suggestion */
CREATE TABLE SuggestInfo (
    SuggestID int not null primary key,
    Suggest_name varchar(255),
    Suggest_description varchar(255),
    Suggest_Record varchar(255)
);

/* Suggestion and Mapping */
CREATE TABLE SuggestandMap (
    SM_ID int,
    StageID int,
    primary key(SM_ID, StageID),
    foreign key (SM_ID) REFERENCES SuggestInfo(SuggestID),
    foreign key(StageID) REFERENCES StageLevel(StageID)
);

/*INSERT INTO NineJars (JarID ,Jar_level ,Jar_name) VALUES
(1,'JS1', 'JarSetLevel1'),
(2,'Bad'),
(3,'Neutral'),
(4,'N/A');*\

-- INSERT INTO users (first_name, last_name, email)
-- VALUES ('John', 'Doe', 'john.doe@example.com');






