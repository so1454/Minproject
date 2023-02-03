
CREATE TABLE Student (
	StudentID	VarChar2(20)		PRIMARY KEY,
	SName		VarChar2(20)		NOT NULL,
	TeamName	VarChar2(20)		NULL
);

CREATE TABLE Question (
	QuestionID	NUMBER(5)			PRIMARY KEY,
	QScore		NUMBER(5)			NOT NULL,
	QLevel		VarChar2(10)		NULL
);

CREATE TABLE TryResult (
	TRID	 	NUMBER				PRIMARY KEY,
	StudentID	VarChar2(20)		NOT NULL,
	QuestionID	NUMBER(5)			NOT NULL,
	IsSuccess	VARCHAR(5)			NULL,
	GetScore	NUMBER(5)			NULL
);

ALTER TABLE TryResult ADD CONSTRAINT FK_Student_TO_TryResult FOREIGN KEY (
	StudentID
)
REFERENCES Student (
	StudentID
);

ALTER TABLE TryResult ADD CONSTRAINT FK_Question_TO_TryResult FOREIGN KEY (
	QuestionID
)
REFERENCES Question (
	QuestionID
);

commit;

select * from Student;
select * from Question;
select * from TryResult;

drop table TryResult;
drop table Question;
drop table Student;
drop sequence TRID_seq;

select * from Question;

commit;

create sequence TRID_seq;

insert into STUDENT 
        values (101, '윤상재', 'Yellow');        
insert into STUDENT 
        values (102, '남하은', 'Yellow');
insert into STUDENT 
        values (103, '장이수', 'Yellow');
insert into STUDENT 
        values (104, '문경수', 'Yellow');
insert into STUDENT
        values (105, '구소현', 'Yellow');
        
insert into STUDENT 
        values (111, '조준용', 'Blue');        
insert into STUDENT 
        values (112, '김권민', 'Blue');
insert into STUDENT 
        values (113, '주영래', 'Blue');
insert into STUDENT 
        values (114, '윤정현', 'Blue');
insert into STUDENT
        values (115, '배다경', 'Blue');
        
insert into STUDENT 
        values (121, '최근호', 'Orange');        
insert into STUDENT 
        values (122, '안미연', 'Orange');
insert into STUDENT 
        values (123, '기영민', 'Orange');
insert into STUDENT 
        values (124, '한성규', 'Orange');
        
insert into STUDENT 
        values (131, '권기현', 'Green');        
insert into STUDENT 
        values (132, '왕지강', 'Green');
insert into STUDENT 
        values (133, '이세미', 'Green');
insert into STUDENT 
        values (134, '심형선', 'Green');
insert into STUDENT
        values (135, '김호원', 'Green');
commit;

select * from student;

insert into Question values (1, 10, 'Easy');   
insert into Question values (2, 10, 'Easy');   
insert into Question values (3, 10, 'Easy');   
insert into Question values (4, 10, 'Easy');   
insert into Question values (5, 10, 'Easy');   
insert into Question values (6, 10, 'Easy');   
insert into Question values (7, 10, 'Easy');   
insert into Question values (8, 10, 'Easy');   
insert into Question values (9, 10, 'Easy');   
insert into Question values (10, 10, 'Easy');   
insert into Question values (11, 15, 'Mid');   
insert into Question values (12, 15, 'Mid');   
insert into Question values (13, 15, 'Mid');   
insert into Question values (14, 15, 'Mid');   
insert into Question values (15, 15, 'Mid');   
insert into Question values (16, 15, 'Mid');   
insert into Question values (17, 15, 'Mid');   
insert into Question values (18, 15, 'Mid');   
insert into Question values (19, 15, 'Mid');   
insert into Question values (20, 15, 'Mid');   
insert into Question values (21, 20, 'Hard');   
insert into Question values (22, 20, 'Hard');   
insert into Question values (23, 20, 'Hard');   
insert into Question values (24, 20, 'Hard');   
insert into Question values (25, 20, 'Hard');   
insert into Question values (26, 20, 'Hard');   
insert into Question values (27, 20, 'Hard');   
insert into Question values (28, 20, 'Hard');   
insert into Question values (29, 20, 'Hard');   
insert into Question values (30, 20, 'Hard');   
insert into Question values (31, 30, 'Hard');   
insert into Question values (32, 30, 'Hard');   
insert into Question values (33, 30, 'Hard');   
insert into Question values (34, 30, 'Hard');   
insert into Question values (35, 30, 'Hard');   
insert into Question values (36, 30, 'Hard');   
insert into Question values (37, 30, 'Hard');   

select * from student;
select * from question;
select * from TryResult;

------------------------------------------------------------

drop table TryResult;

select * from tryresult;
delete tryresult;

commit;

delete from TryResult;
select * from TryResult;
select * from Student;
select * from Question;

delete tryresult;
commit;


insert into TryResult values (TRID_seq.NEXTVAL, '101', 3 , 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '102', 3 , 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '103', 3 , 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '104', 3 , 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '105', 3 , 'O', 10);   

insert into TryResult values (TRID_seq.NEXTVAL, '101', 8, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '102', 8, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '103', 8, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '104', 8, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '105', 8, 'X', 0);   

insert into TryResult values (TRID_seq.NEXTVAL, '101', 12 , 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '102', 12 , 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '103', 12 , 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '104', 12 , 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '105', 12 , 'O', 15);   


insert into TryResult values (TRID_seq.NEXTVAL, '101', 15 , 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '102', 15 , 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '103', 15 , 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '104', 15 , 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '105', 15, 'X', 0);   

insert into TryResult values (TRID_seq.NEXTVAL, '101', 18 , 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '102', 18 , 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '103', 18 , 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '104', 18 , 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '105', 18 , 'O', 15);   

insert into TryResult values (TRID_seq.NEXTVAL, '101', 25 , 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '102', 25 , 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '103', 25 , 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '104', 25 , 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '105', 25 , 'O', 20);   

insert into TryResult values (TRID_seq.NEXTVAL, '101', 31 , 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '102', 31 , 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '103', 31 , 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '104', 31 , 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '105', 31 , 'X', 0);   

insert into TryResult values (TRID_seq.NEXTVAL, '101', 35 , 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '102', 35, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '103', 35, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '104', 35 , 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '105', 35, 'O', 30);   

insert into TryResult values (TRID_seq.NEXTVAL, '101', 1 , 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '102', 1 , 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '103', 1 , 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '104', 1 , 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '105', 1 , 'O', 10);   

insert into TryResult values (TRID_seq.NEXTVAL, '101', 5 , 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '102', 5 , 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '103', 5 , 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '104', 5 , 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '105', 5 , 'O', 10);   

insert into TryResult values (TRID_seq.NEXTVAL, '101', 13 , 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '102', 13 , 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '103', 13 , 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '104', 13 , 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '105', 13 , 'O', 15);   

commit;

insert into TryResult values (TRID_seq.NEXTVAL, '111', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '112', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '113', 5, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '114', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '115', 5, 'O', 10);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '111', 8, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '112', 8, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '113', 8, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '114', 8, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '115', 8, 'X', 0);   

insert into TryResult values (TRID_seq.NEXTVAL, '111', 10, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '112', 10, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '113', 10, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '114', 10, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '115', 10, 'O', 15);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '111', 16, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '112', 16, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '113', 16, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '114', 16, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '115', 16, 'X', 0);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '111', 18, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '112', 18, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '113', 18, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '114', 18, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '115', 18, 'O', 15);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '111', 27, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '112', 27, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '113', 27, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '114', 27, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '115', 27, 'O', 20);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '111', 33, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '112', 33, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '113', 33, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '114', 33, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '115', 33, 'X', 0);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '111', 34, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '112', 34, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '113', 34, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '114', 34, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '115', 34, 'O', 30);   

insert into TryResult values (TRID_seq.NEXTVAL, '111', 2, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '112', 2, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '113', 2, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '114', 2, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '115', 2, 'O', 10);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '111', 5, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '112', 5, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '113', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '114', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '115', 5, 'O', 10);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '111', 10, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '112', 10, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '113', 10, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '114', 10, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '115', 10, 'O', 15);   

commit;

insert into TryResult values (TRID_seq.NEXTVAL, '121', 3, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '122', 3, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '123', 3, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '124', 3, 'O', 10);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '121', 7, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '122', 7, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '123', 7, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '124', 7, 'O', 10);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '121', 9, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '122', 9, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '123', 9, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '124', 9, 'O', 10);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '121', 8, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '122', 8, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '123', 8, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '124', 8, 'O', 10);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '121', 11, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '122', 11, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '123', 11, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '124', 11, 'X', 0);   

insert into TryResult values (TRID_seq.NEXTVAL, '121', 13, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '122', 13, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '123', 13, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '124', 13, 'X', 0);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '121', 17, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '122', 17, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '123', 17, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '124', 17, 'O', 15);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '121', 19, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '122', 19, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '123', 19, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '124', 19, 'O', 15);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '121', 26, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '122', 26, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '123', 26, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '124', 26, 'X', 0);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '121', 32, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '122', 32, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '123', 32, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '124', 32, 'X', 0);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '121', 35, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '122', 35, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '123', 35, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '124', 35, 'O', 30);   
												  

commit;

insert into TryResult values (TRID_seq.NEXTVAL, '131', 5, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '132', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '133', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '134', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '135', 5, 'X', 0);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '131', 8, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '132', 8, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '133', 8, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '134', 8, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '135', 8, 'X', 0);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '131', 2, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '132', 2, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '133', 2, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '134', 2, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '135', 2, 'O', 10);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '131', 7, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '132', 7, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '133', 7, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '134', 7, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '135', 7, 'X', 0);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '131', 12, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '132', 12, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '133', 12, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '134', 12, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '135', 12, 'O', 15);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '131', 14, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '132', 14, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '133', 14, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '134', 14, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '135', 14, 'X', 0);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '131', 18, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '132', 18, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '133', 18, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '134', 18, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '135', 18, 'X', 0);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '131', 15, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '132', 15, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '133', 15, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '134', 15, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '135', 15, 'X', 0);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '131', 21, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '132', 21, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '133', 21, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '134', 21, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '135', 21, 'O', 20);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '131', 31, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '132', 31, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '133', 31, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '134', 31, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '135', 31, 'X', 0);   
												  
insert into TryResult values (TRID_seq.NEXTVAL, '131', 32, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '132', 32, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '133', 32, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '134', 32, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '135', 32, 'O', 30);   
												  

commit;





select * from tryresult;

select * from question;

select * from student;

delete TryResult;

select * from student s;

select * from student s, tryresult t
where s.studentid = t.studentid;

select * from student s, tryresult t
where s.studentid = t.studentid
and t.isSuccess like '%O%';

select count(*) from student s, tryresult t
where s.studentid = t.studentid
and t.isSuccess like '%O%';

select count(*) from student s, tryresult t
where s.studentid = t.studentid
and t.isSuccess like '%X%';


select count(*) from student s, tryresult t
where s.studentid = t.studentid;

select * from student s, tryresult t
where s.studentid = t.studentid;

select * from student s, tryresult t
where s.studentid = t.studentid
and t.Questionid = 3;

select t.Questionid, count(*) from student s, tryresult t
where s.studentid = t.studentid
group by t.Questionid ;


select t.Questionid, count(*) from student s, tryresult t
where s.studentid = t.studentid
group by t.Questionid 
order by  t.Questionid ;

select t.Questionid, count(*) from student s, tryresult t
where s.studentid = t.studentid
and t.isSuccess like '%O%'
group by t.Questionid 
order by  t.Questionid ;

create view vw_suc_cnt_per_question ( qid, s_cnt )
as (
select t.Questionid, count(*) from student s, tryresult t
where s.studentid = t.studentid
and t.isSuccess like '%O%'
group by t.Questionid 
);

select * from vw_suc_cnt_per_question;

drop view vw_suc_cnt_per_question;

select t.Questionid, count(*) from student s, tryresult t
where s.studentid = t.studentid
group by t.Questionid 
order by  t.Questionid ;

create view vw_cnt_per_question ( qid, cnt )
as (
select t.Questionid, count(*) from student s, tryresult t
where s.studentid = t.studentid
group by t.Questionid 
);

select * from vw_cnt_per_question;

drop view vw_cnt_per_question;

select * from vw_suc_cnt_per_question s,  vw_cnt_per_question q;

select * from vw_suc_cnt_per_question s,  vw_cnt_per_question q
where s.qid = q.qid;

select s.qid, s.s_cnt, q.cnt
from vw_suc_cnt_per_question s,  vw_cnt_per_question q
where s.qid = q.qid;

select s.qid, s.s_cnt, q.cnt, (s.s_cnt/q.cnt *100) s_pct
from vw_suc_cnt_per_question s,  vw_cnt_per_question q
where s.qid = q.qid;

select s.qid, s.s_cnt, q.cnt, to_char( (s.s_cnt/q.cnt *100), '999') s_pct
from vw_suc_cnt_per_question s,  vw_cnt_per_question q
where s.qid = q.qid;

select s.qid, s.s_cnt, q.cnt, to_char( (s.s_cnt/q.cnt *100), '999') s_pct
from vw_suc_cnt_per_question s,  vw_cnt_per_question q
where s.qid = q.qid
order by s.qid;

select s.qid, s.s_cnt, q.cnt, to_number(to_char( (s.s_cnt/q.cnt *100), '999')) s_pct
from vw_suc_cnt_per_question s,  vw_cnt_per_question q
where s.qid = q.qid
order by s.qid;

commit;







-----------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------

select * from tryresult;

SELECT S.TEAMNAME,TRY.GETSCORE
        FROM STUDENT S,TRYRESULT TRY 
        WHERE TRY.ISSUCCESS LIKE '%O%'
        AND S.STUDENTID = TRY.STUDENTID ;




CREATE VIEW VW_SCOREVIEW (TEAMNAME,FINALSCORE)
    AS(SELECT S.TEAMNAME,SUM(TRY.GETSCORE)
        FROM STUDENT S,TRYRESULT TRY 
        WHERE TRY.ISSUCCESS LIKE '%O%'
        AND S.STUDENTID = TRY.STUDENTID 
        group by S.TEAMNAME
        );
        
DROP VIEW VW_SCOREVIEW;
SELECT * FROM VW_SCOREVIEW;
SELECT * FROM TRYRESULT;

commit; 

TRUNCATE TABLE STUDENT;
truncate table tryresult;

commit;





select * from TryResult;

select * from TryResult t, Student s;

select * from TryResult t, Student s
where t.studentid = s.studentid;

select * from TryResult t, Student s
where t.studentid = s.studentid
and s.teamname like '%Yellow%';

select distinct s.Studentid, s.sname
from TryResult t, Student s
where t.studentid = s.studentid
and s.teamname like '%Yellow%';

select *
from TryResult;

-- 팀에서 시도한 문제번호 리스트
select * from TryResult t, Student s
where t.studentid = s.studentid
and s.teamname like '%Yellow%';


select distinct t.questionid
from TryResult t, Student s
where t.studentid = s.studentid
and s.teamname like '%Yellow%';

select distinct t.questionid
from TryResult t, Student s
where t.studentid = s.studentid
and s.teamname like '%Yellow%'
order by  t.questionid;

-- 팀에서 시도한 문제별 획득점수

select t.questionid
from TryResult t, Student s
where t.studentid = s.studentid
and s.teamname like '%Yellow%'
group by t.questionid;

select t.questionid, sum(t.getscore)
from TryResult t, Student s
where t.studentid = s.studentid
and s.teamname like '%Yellow%'
group by t.questionid;


-- 팀에서 학생별 획득점수

select t.studentid, sum(t.getscore)
from TryResult t, Student s
where t.studentid = s.studentid
and s.teamname like '%Yellow%'
group by t.studentid;

select t.studentid, sum(t.getscore)
from TryResult t, Student s
where t.studentid = s.studentid
and s.teamname like '%Yellow%'
group by t.studentid;

select * from student
where teamname like '%Yellow%';

select t.studentid, s.sname, sum(t.getscore)
from TryResult t, Student s
where t.studentid = s.studentid
and s.teamname like '%Yellow%'
group by t.studentid, s.sname;


SELECT S.TEAMNAME,SUM(TRY.GETSCORE)
        FROM STUDENT S,TRYRESULT TRY 
        WHERE TRY.ISSUCCESS LIKE '%O%'
        AND S.STUDENTID = TRY.STUDENTID 
        group by S.TEAMNAME;


select * 
from tryresult t;

select * 
from tryresult t, question q
where t.questionid = q.questionid;

select q.qlevel, count(*) 
from tryresult t, question q
where t.questionid = q.questionid
group by q.qlevel;

select q.qlevel, count(*) 
from tryresult t, question q
where t.questionid = q.questionid
and t.issuccess like '%O%'
group by q.qlevel;




create view vw_suc_cnt_per_level ( qlevel, s_cnt )
as (
select q.qlevel, count(*) 
from tryresult t, question q
where t.questionid = q.questionid
and t.issuccess like '%O%'
group by q.qlevel
);


create view vw_cnt_per_level ( qlevel, cnt )
as (
select q.qlevel, count(*) 
from tryresult t, question q
where t.questionid = q.questionid
group by q.qlevel
);

commit;

select * from vw_cnt_per_level;

select * from vw_suc_cnt_per_level;

select * from vw_suc_cnt_per_level s,  vw_cnt_per_level q
where s.qlevel = q.qlevel;

select s.qlevel, s.s_cnt, q.cnt
from vw_suc_cnt_per_level s,  vw_cnt_per_level q
where s.qlevel = q.qlevel;









insert into STUDENT 
        values (201, '하니', '뉴진스');
insert into STUDENT 
        values (202, '혜인', '뉴진스');  
insert into STUDENT 
        values (203, '혜린', '뉴진스');  
insert into STUDENT 
        values (204, '다니엘', '뉴진스');  
insert into STUDENT 
        values (205, '민지', '뉴진스');  
		
insert into STUDENT 
        values (211, '장원영', '아이브');
insert into STUDENT 
        values (212, '안유진', '아이브');  
insert into STUDENT 
        values (213, '레이', '아이브');  
insert into STUDENT 
        values (214, '이서', '아이브');  
insert into STUDENT 
        values (215, '가을', '아이브'); 

insert into STUDENT 
        values (221, '사쿠라', '르세라핌');
insert into STUDENT 
        values (222, '김채원', '르세라핌');  
insert into STUDENT 
        values (223, '허윤진', '르세라핌');  
insert into STUDENT 
        values (224, '카즈하', '르세라핌');  
insert into STUDENT 
        values (225, '홍은채', '르세라핌');  
		
insert into STUDENT 
        values (231, '제니', '블랙핑크');
insert into STUDENT 
        values (232, '로제', '블랙핑크');  
insert into STUDENT 
        values (233, '지수', '블랙핑크');  
insert into STUDENT 
        values (234, '리사', '블랙핑크');  
insert into STUDENT 
        values (235, '원진', '블랙핑크');
		
insert into STUDENT 
        values (241, '박규리', '카라');
insert into STUDENT 
        values (242, '한승연', '카라');  
insert into STUDENT 
        values (243, '니콜', '카라');  
insert into STUDENT 
        values (244, '강지영', '카라');  
insert into STUDENT 
        values (245, '허영지', '카라');



insert into Question values (101, 5, 'VeryEasy');
insert into Question values (102, 5, 'VeryEasy'); 
insert into Question values (103, 5, 'VeryEasy'); 
insert into Question values (104, 5, 'VeryEasy'); 
insert into Question values (105, 5, 'VeryEasy');

insert into Question values (111, 50, 'Hell'); 
insert into Question values (112, 50, 'Hell');
insert into Question values (113, 50, 'Hell');
insert into Question values (114, 50, 'Hell');
insert into Question values (115, 50, 'Hell');

												  
insert into TryResult values (TRID_seq.NEXTVAL, '201', 1, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '202', 1, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '203', 1, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '204', 1, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '205', 1, 'O', 10);  

insert into TryResult values (TRID_seq.NEXTVAL, '201', 8, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '202', 8, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '203', 8, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '204', 8, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '205', 8, 'X', 0); 
  
insert into TryResult values (TRID_seq.NEXTVAL, '201', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '202', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '203', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '204', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '205', 5, 'O', 10);
  
insert into TryResult values (TRID_seq.NEXTVAL, '201', 7, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '202', 7, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '203', 7, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '204', 7, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '205', 7, 'O', 10);  
 
insert into TryResult values (TRID_seq.NEXTVAL, '201', 11, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '202', 11, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '203', 11, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '204', 11, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '205', 11, 'O', 15);
  
insert into TryResult values (TRID_seq.NEXTVAL, '201', 15, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '202', 15, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '203', 15, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '204', 15, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '205', 15, 'O', 15); 
 
insert into TryResult values (TRID_seq.NEXTVAL, '201', 21, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '202', 21, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '203', 21, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '204', 21, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '205', 21, 'O', 20); 

insert into TryResult values (TRID_seq.NEXTVAL, '201', 27, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '202', 27, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '203', 27, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '204', 27, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '205', 27, 'O', 20); 

insert into TryResult values (TRID_seq.NEXTVAL, '201', 30, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '202', 30, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '203', 30, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '204', 30, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '205', 30, 'O', 20); 

insert into TryResult values (TRID_seq.NEXTVAL, '201', 33, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '202', 33, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '203', 33, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '204', 33, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '205', 33, 'O', 30); 

insert into TryResult values (TRID_seq.NEXTVAL, '201', 37, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '202', 37, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '203', 37, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '204', 37, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '205', 37, 'O', 30); 

insert into TryResult values (TRID_seq.NEXTVAL, '201', 112, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '202', 112, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '203', 112, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '204', 112, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '205', 112, 'O', 50); 

insert into TryResult values (TRID_seq.NEXTVAL, '201', 114, 'O', 50);  
insert into TryResult values (TRID_seq.NEXTVAL, '202', 114, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '203', 114, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '204', 114, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '205', 114, 'O', 50); 

insert into TryResult values (TRID_seq.NEXTVAL, '201', 115, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '202', 115, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '203', 115, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '204', 115, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '205', 115, 'X', 0); 
 
insert into TryResult values (TRID_seq.NEXTVAL, '201', 103, 'O', 5);  
insert into TryResult values (TRID_seq.NEXTVAL, '202', 103, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '203', 103, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '204', 103, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '205', 103, 'O', 5); 

insert into TryResult values (TRID_seq.NEXTVAL, '201', 105, 'O', 5);  
insert into TryResult values (TRID_seq.NEXTVAL, '202', 105, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '203', 105, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '204', 105, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '205', 105, 'O', 5); 

insert into TryResult values (TRID_seq.NEXTVAL, '211', 2, 'O', 10);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 2, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 2, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 2, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 2, 'O', 10); 

insert into TryResult values (TRID_seq.NEXTVAL, '211', 5, 'O', 10);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 5, 'O', 10); 

insert into TryResult values (TRID_seq.NEXTVAL, '211', 8, 'O', 10);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 8, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 8, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 8, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 8, 'O', 10);

insert into TryResult values (TRID_seq.NEXTVAL, '211', 8, 'O', 10);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 8, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 8, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 8, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 8, 'O', 10);


insert into TryResult values (TRID_seq.NEXTVAL, '211', 10, 'O', 10);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 10, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 10, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 10, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 10, 'O', 10);

insert into TryResult values (TRID_seq.NEXTVAL, '211', 12, 'O', 15);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 12, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 12, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 12, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 12, 'O', 15);

insert into TryResult values (TRID_seq.NEXTVAL, '211', 14, 'O', 15);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 14, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 14, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 14, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 14, 'O', 15);

insert into TryResult values (TRID_seq.NEXTVAL, '211', 17, 'O', 15);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 17, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 17, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 17, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 17, 'O', 15);

insert into TryResult values (TRID_seq.NEXTVAL, '211', 19, 'O', 15);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 19, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 19, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 19, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 19, 'O', 15);

insert into TryResult values (TRID_seq.NEXTVAL, '211', 23, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 23, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 23, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 23, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 23, 'O', 20);

insert into TryResult values (TRID_seq.NEXTVAL, '211', 26, 'O', 20);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 26, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 26, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 26, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 26, 'O', 20);

insert into TryResult values (TRID_seq.NEXTVAL, '211', 28, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 28, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 28, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 28, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 28, 'X', 0);

insert into TryResult values (TRID_seq.NEXTVAL, '211', 32, 'O', 30);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 32, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 32, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 32, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 32, 'X', 0);

insert into TryResult values (TRID_seq.NEXTVAL, '211', 36, 'O', 30);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 36, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 36, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 36, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 36, 'O', 30);

insert into TryResult values (TRID_seq.NEXTVAL, '211', 113, 'O', 50);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 113, 'O', 50);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 113, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 113, 'O', 50);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 113, 'O', 50);

insert into TryResult values (TRID_seq.NEXTVAL, '211', 114, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 114, 'O', 50);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 114, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 114, 'O', 50);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 114, 'X', 0);

insert into TryResult values (TRID_seq.NEXTVAL, '211', 101, 'O', 5);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 101, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 101, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 101, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 101, 'O', 5);

insert into TryResult values (TRID_seq.NEXTVAL, '211', 104, 'O', 5);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 104, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 104, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 104, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 104, 'O', 5);

insert into TryResult values (TRID_seq.NEXTVAL, '211', 105, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '212', 105, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '213', 105, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '214', 105, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '215', 105, 'O', 5);

insert into TryResult values (TRID_seq.NEXTVAL, '221', 4, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '222', 4, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '223', 4, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '224', 4, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '225', 4, 'O', 10);

insert into TryResult values (TRID_seq.NEXTVAL, '221', 6, 'O', 10);  
insert into TryResult values (TRID_seq.NEXTVAL, '222', 6, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '223', 6, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '224', 6, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '225', 6, 'O', 10);

insert into TryResult values (TRID_seq.NEXTVAL, '221', 12, 'O', 15);  
insert into TryResult values (TRID_seq.NEXTVAL, '222', 12, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '223', 12, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '224', 12, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '225', 12, 'X', 0);

insert into TryResult values (TRID_seq.NEXTVAL, '221', 17, 'O', 15);  
insert into TryResult values (TRID_seq.NEXTVAL, '222', 17, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '223', 17, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '224', 17, 'X', 0));   
insert into TryResult values (TRID_seq.NEXTVAL, '225', 17, 'X', 0);

insert into TryResult values (TRID_seq.NEXTVAL, '221', 21, 'O', 20);  
insert into TryResult values (TRID_seq.NEXTVAL, '222', 21, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '223', 21, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '224', 21, 'X', 0));   
insert into TryResult values (TRID_seq.NEXTVAL, '225', 21, 'X', 0);

insert into TryResult values (TRID_seq.NEXTVAL, '221', 24, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '222', 24, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '223', 24, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '224', 24, 'X', 0));   
insert into TryResult values (TRID_seq.NEXTVAL, '225', 24, 'X', 0);

insert into TryResult values (TRID_seq.NEXTVAL, '221', 31, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '222', 31, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '223', 31, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '224', 31, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '225', 31, 'O', 30);

insert into TryResult values (TRID_seq.NEXTVAL, '221', 34, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '222', 34, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '223', 34, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '224', 34, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '225', 34, 'O', 30);

insert into TryResult values (TRID_seq.NEXTVAL, '221', 37, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '222', 37, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '223', 37, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '224', 37, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '225', 37, 'X', 0);

insert into TryResult values (TRID_seq.NEXTVAL, '221', 112, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '222', 112, 'O', 50);   
insert into TryResult values (TRID_seq.NEXTVAL, '223', 112, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '224', 112, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '225', 112, 'X', 0);

insert into TryResult values (TRID_seq.NEXTVAL, '221', 115, 'O', 50);  
insert into TryResult values (TRID_seq.NEXTVAL, '222', 115, 'O', 50);   
insert into TryResult values (TRID_seq.NEXTVAL, '223', 115, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '224', 115, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '225', 114, 'X', 0);

insert into TryResult values (TRID_seq.NEXTVAL, '221', 102, 'O', 5);  
insert into TryResult values (TRID_seq.NEXTVAL, '222', 102, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '223', 102, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '224', 102, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '225', 102, 'O', 5);

insert into TryResult values (TRID_seq.NEXTVAL, '221', 104, 'O', 5);  
insert into TryResult values (TRID_seq.NEXTVAL, '222', 104, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '223', 104, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '224', 104, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '225', 104, 'O', 5);

insert into TryResult values (TRID_seq.NEXTVAL, '231', 4, 'O', 10);  
insert into TryResult values (TRID_seq.NEXTVAL, '232', 4, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '233', 4, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '234', 4, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '235', 4, 'O', 10);

insert into TryResult values (TRID_seq.NEXTVAL, '231', 6, 'O', 10);  
insert into TryResult values (TRID_seq.NEXTVAL, '232', 6, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '233', 6, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '234', 6, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '235', 6, 'O', 10);

insert into TryResult values (TRID_seq.NEXTVAL, '231', 9, 'O', 10);  
insert into TryResult values (TRID_seq.NEXTVAL, '232', 9, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '233', 9, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '234', 9, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '235', 9, 'O', 10);

insert into TryResult values (TRID_seq.NEXTVAL, '231', 13, 'O', 15);  
insert into TryResult values (TRID_seq.NEXTVAL, '232', 13, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '233', 13, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '234', 13, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '235', 13, 'O', 15);

insert into TryResult values (TRID_seq.NEXTVAL, '231', 18, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '232', 18, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '233', 18, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '234', 18, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '235', 18, 'O', 15);

insert into TryResult values (TRID_seq.NEXTVAL, '231', 23, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '232', 23, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '233', 23, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '234', 23, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '235', 23, 'O', 20);

insert into TryResult values (TRID_seq.NEXTVAL, '231', 26, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '232', 26, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '233', 26, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '234', 26, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '235', 26, 'O', 20);

insert into TryResult values (TRID_seq.NEXTVAL, '231', 30, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '232', 30, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '233', 30, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '234', 30, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '235', 30, 'O', 20);

insert into TryResult values (TRID_seq.NEXTVAL, '231', 31, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '232', 31, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '233', 31, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '234', 31, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '235', 31, 'O', 30);

insert into TryResult values (TRID_seq.NEXTVAL, '231', 34, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '232', 34, 'O', 30);  
insert into TryResult values (TRID_seq.NEXTVAL, '233', 34, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '234', 34, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '235', 34, 'O', 30);

insert into TryResult values (TRID_seq.NEXTVAL, '231', 37, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '232', 37, 'O', 30);  
insert into TryResult values (TRID_seq.NEXTVAL, '233', 37, 'X', 0);     
insert into TryResult values (TRID_seq.NEXTVAL, '234', 37, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '235', 37, 'X', 0);  

insert into TryResult values (TRID_seq.NEXTVAL, '231', 113, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '232', 113, 'X', 0); 
insert into TryResult values (TRID_seq.NEXTVAL, '233', 113, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '234', 113, 'X', 0);
insert into TryResult values (TRID_seq.NEXTVAL, '235', 113, 'X', 0);

insert into TryResult values (TRID_seq.NEXTVAL, '231', 114, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '232', 114, 'O', 50);  
insert into TryResult values (TRID_seq.NEXTVAL, '233', 114, 'X', 0);  
insert into TryResult values (TRID_seq.NEXTVAL, '234', 114, 'X', 0);
insert into TryResult values (TRID_seq.NEXTVAL, '235', 114, 'O', 50);  

insert into TryResult values (TRID_seq.NEXTVAL, '231', 102, 'O', 5); 
insert into TryResult values (TRID_seq.NEXTVAL, '232', 102, 'X', 0);
insert into TryResult values (TRID_seq.NEXTVAL, '233', 102, 'O', 5); 
insert into TryResult values (TRID_seq.NEXTVAL, '234', 102, 'O', 5); 
insert into TryResult values (TRID_seq.NEXTVAL, '235', 102, 'O', 5); 

insert into TryResult values (TRID_seq.NEXTVAL, '231', 103, 'O', 5); 
insert into TryResult values (TRID_seq.NEXTVAL, '232', 103, 'O', 5);
insert into TryResult values (TRID_seq.NEXTVAL, '233', 103, 'O', 5); 
insert into TryResult values (TRID_seq.NEXTVAL, '234', 103, 'O', 5); 
insert into TryResult values (TRID_seq.NEXTVAL, '235', 103, 'O', 5); 



--카라
insert into TryResult values (TRID_seq.NEXTVAL, '241', 32, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '242', 32, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '243', 32, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '244', 32, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '245', 32, 'O', 30);   

insert into TryResult values (TRID_seq.NEXTVAL, '241', 22, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '242', 22, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '243', 22, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '244', 22, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '245', 22, 'O', 30);   

insert into TryResult values (TRID_seq.NEXTVAL, '241', 35, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '242', 35, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '243', 35, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '244', 35, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '245', 35, 'X', 0);   

insert into TryResult values (TRID_seq.NEXTVAL, '241', 24, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '242', 24, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '243', 24, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '244', 24, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '245', 24, 'X', 0);   

insert into TryResult values (TRID_seq.NEXTVAL, '241', 29, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '242', 29, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '243', 29, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '244', 29, 'O', 30);   
insert into TryResult values (TRID_seq.NEXTVAL, '245', 29, 'O', 30);   

insert into TryResult values (TRID_seq.NEXTVAL, '241', 3, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '242', 3, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '243', 3, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '244', 3, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '245', 3, 'O', 10);

insert into TryResult values (TRID_seq.NEXTVAL, '241', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '242', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '243', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '244', 5, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '245', 5, 'O', 10);

insert into TryResult values (TRID_seq.NEXTVAL, '241', 9, 'X', 0 );   
insert into TryResult values (TRID_seq.NEXTVAL, '242', 9, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '243', 9, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '244', 9, 'O', 10);   
insert into TryResult values (TRID_seq.NEXTVAL, '245', 9, 'O', 10);

insert into TryResult values (TRID_seq.NEXTVAL, '241', 11, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '242', 11, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '243', 11, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '244', 11, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '245', 11, 'X', 0);

insert into TryResult values (TRID_seq.NEXTVAL, '241', 16, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '242', 16, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '243', 16, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '244', 16, 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '245', 16, 'O', 15);

insert into TryResult values (TRID_seq.NEXTVAL, '241', 18 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '242', 18 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '243', 18 'O', 15);   
insert into TryResult values (TRID_seq.NEXTVAL, '244', 18 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '245', 18 'O', 15);
													   
insert into TryResult values (TRID_seq.NEXTVAL, '241', 21, 'O', 20);   
insert into TryResult values (TRID_seq.NEXTVAL, '242', 21, 'X',	0);   
insert into TryResult values (TRID_seq.NEXTVAL, '243', 21, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '244', 21, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '245', 21, 'X', 0);												 
											 
insert into TryResult values (TRID_seq.NEXTVAL, '241', 101, 'O', 5);
insert into TryResult values (TRID_seq.NEXTVAL, '242', 101, 'O', 5);
insert into TryResult values (TRID_seq.NEXTVAL, '243', 101, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '244', 101, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '245', 101, 'X', 0)

insert into TryResult values (TRID_seq.NEXTVAL, '241', 113, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '242', 113, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '243', 113, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '244', 113, 'X', 0);   
insert into TryResult values (TRID_seq.NEXTVAL, '245', 113, 'X', 0);

insert into TryResult values (TRID_seq.NEXTVAL, '241', 104, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '242', 104, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '243', 104, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '244', 104, 'O', 5);   
insert into TryResult values (TRID_seq.NEXTVAL, '245', 104, 'O', 5);

										 
commit;