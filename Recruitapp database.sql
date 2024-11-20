CREATE DATABASE recruitapp2;
USE  recruitapp2;

CREATE TABLE app_user (
id  INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(25),
userpassword VARCHAR(25)
);

CREATE TABLE user_type (
type_id INT AUTO_INCREMENT PRIMARY KEY,
account_type VARCHAR(25),
account_type_id INT,
FOREIGN KEY (account_type_id) REFERENCES app_user(id),
email VARCHAR(30),
last_login DATETIME
);

CREATE TABLE cv(
id INT AUTO_INCREMENT PRIMARY KEY,
skills VARCHAR(70),
job VARCHAR(50)
);

CREATE TABLE company(
id INT AUTO_INCREMENT PRIMARY KEY,
adress VARCHAR (20),
program VARCHAR (20),
company_id INT,
FOREIGN KEY (company_id) REFERENCES user_type(type_id),
cv_id INT,
FOREIGN KEY (cv_id) REFERENCES cv(id)

);

CREATE TABLE job (
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR (20),
job_description VARCHAR (75),
requirments VARCHAR (90),
job_id INT,
FOREIGN KEY (job_id) REFERENCES cv(id)
);