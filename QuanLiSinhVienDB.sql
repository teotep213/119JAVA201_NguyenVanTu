USE QuanLiSinhVien
go
CREATE TABLE Student (
	Student_id int IDENTITY(1,1) PRIMARY KEY,
	name Varchar(50),
	age date,
);
INSERT INTO Student(name,age) VALUES('Nguyen Van Hoang','1998-1-27')
INSERT INTO Student(name,age) VALUES('Tran Thi Ly','1998-9-20')
INSERT INTO Student(name,age) VALUES('Nguyen Van Tu','1998-2-20')

CREATE TABLE Class (
	Class_id int  IDENTITY(1,1) PRIMARY KEY,
	classname Varchar(50),
)
INSERT INTO Class(classname) VALUES('Java 01')
INSERT INTO Class(classname) VALUES('Java 02')
INSERT INTO Class(classname) VALUES('Lap trinh C')

CREATE TABLE DayOff (
	DayOff_id int IDENTITY(1,1) PRIMARY KEY,
	Student_id  int,
	Dayoff date,
	FOREIGN KEY(Student_id) REFERENCES Student(Student_id),

);

CREATE TABLE Class_Student (
	Student_id int ,
	Class_id int 
	FOREIGN KEY (Student_id) REFERENCES Student(Student_id),
	FOREIGN KEY (Class_id) REFERENCES Class(Class_id),
);

