mysql -u root -p
show databases;
use java20;

select database();--是否在默认库

show tables;
drop tables of exists exam_reasult;
create tables exam_reasult(
	id int,
	name varchar(20),
	chinese decimal,
	math decimal,
	english decimal
);
insert into exam_reasult(id,name,chinese,math,english)values
	(1,'JUSTIN',7,1,9),
	(2,'BIEBER',4,7,4),
	(3,'TALOR',8,9,5),
	(4,'SWIFT',3,5,8);
select * from exam_reasult;




