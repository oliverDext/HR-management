

create table user(loginname varchar(50),
password varchar(50),
username varchar(50),
fathername varchar(50),
gender varchar(10),
email varchar(50),
mobile varchar(50),
pincode varchar(50),
address varchar(150),
dob varchar(50),
qualification varchar(50),
experience varchar(50),
achievement varchar(50),
skills varchar(50)
);

desc user;

create table hruser(loginname varchar(50),
password varchar(50),
username varchar(50),
fathername varchar(50),
gender varchar(10),
email varchar(50),
mobile varchar(50),
pincode varchar(50),
address varchar(150),
dob varchar(50),
qualification varchar(50),
experience varchar(50),
achievement varchar(50),
skills varchar(50)
);

create table vaccancy(id varchar(50),
profile varchar(50),
type varchar(50),
experience varchar(50),
opening varchar(10),
location varchar(50),
salary varchar(50)
);

create table project(pid varchar(50),
projectname varchar(50),
location varchar(50),
technology varchar(50),
nom varchar(10),
duration varchar(50)
);

create table employee(ques varchar(50),
option1 varchar(50),
option2 varchar(50),
option3 varchar(50),
correct varchar(10),
empdob varchar(50),
emppincode varchar(50),
empaddress varchar(50),
empqualification varchar(50),
empexperience varchar(50),
empachievement varchar(50),
empskills varchar(50),
empprojects varchar(50),
empprojectduration varchar(150),
empjobtype varchar(50),
empdoj varchar(50),
empsalary varchar(50),
empmobile varchar(50)
);

create table feedback(empname varchar(50),
comment varchar(50)
);

create table question(ques varchar(50),
option1 varchar(50),
option2 varchar(50),
option3 varchar(50),
correct varchar(10)
);


INSERT INTO hruser (loginname, password, username, gender, email, mobile, pincode, address) 
VALUES ("admin", "admin", "HR Admin", "female", "admin@gmail.com", "9654795967", "122001", "house no -2740");
