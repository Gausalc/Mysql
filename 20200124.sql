mysql -u root -p
show databases;
use java20;
select database();  //是否在默认库
show tables;  //显示表

//eg1
CREATE TABLE students (
	id INT,
	sn INT COMMENT '学号',
	name VARCHAR(20) COMMENT '姓名',
	qq_mail VARCHAR(20) COMMENT '邮箱'
);

//eg2
drop tables of exists exam_reasult;
CREATE TABLE exam_result (
	id INT,
	name VARCHAR(20),
	语文 DECIMAL,
	数学 DECIMAL,
	英语 DECIMAL
);

//单行数据+全列插入
INSERT INTO students VALUES (100, 10000, '孙悟空', '111');
INSERT INTO students VALUES (101, 10001, '唐僧', NULL);
//多行数据+指定列插入
INSERT INTO students (sn, name) VALUES 
(103, "贾宝玉"),
(104, "林黛玉"),
(105, "伏地魔");

//eg2
INSERT INTO exam_result (id, name, 语文, 数学, 英语) VALUES
(1, '唐三藏', 67, 98, 56),
(2, '孙悟空', 87, 78, 77),
(3, '猪悟能', 88, 98, 90)；

//全列查询
SELECT * FROM exam_result；
//指定列查询
SELECT name, 英语 FROM exam_result;
//查询字段为表达式
SELECT name, 英语 FROM exam_result;
SELECT name, 英语, 10 FROM exam_result;
SELECT name, 英语, 英语 + 10 FROM exam_result;
SELECT name, 英语, 英语 + 语文 + 数学 FROM exam_result;
//别名
SELECT name, 英语 + 语文 + 数学 AS 总分 FROM exam_result;
SELECT name, 英语 + 语文 + 数学 总分 FROM exam_result;
//去重
SELECT DISTINCT 数学 FROM exam_result;
//排序   （ASC升序   DESC降序）
SELECT * FROM exam_result ORDER BY (语文 + 数学 + 英语) DESC; 
//条件查询  
SELECT * FROM exam_result WHERE 语文 < 60;
//分页查询   （先用ORDER BY）-》从 s 开始，筛选 n 条结果
SELECT * FROM threads ORDER BY created_at LIMIT 10 OFFSET 0;
SELECT * FROM threads ORDER BY created_at LIMIT 10 OFFSET 10;
SELECT * FROM threads ORDER BY created_at LIMIT 10 OFFSET 20;
修改（UPDATA）
//将曹孟德同学的数学成绩变更为 60 分，语文成绩变更为 70 分
UPDATE exam_result SET math =60, chinese = 70 WHERE name ='曹孟德';
删除（DELETE）
//删除孙悟空同学的考试成绩
DELETE FROM exam_result WHERE name ='孙悟空';
//删除整表数据
DELETE FROM for_delete;



 CREATE TABLE slavers(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) UNIQUE,
    gender VARCHAR(3) NOT NULL DEFAULT '保密',
	age INT NOT NULL DEFAULT 0,
    height DOUBLE NOT NULL DEFAULT 0,
    weight DOUBLE NOT NULL DEFAULT 0
    );


	CREATE TABLE user ( 
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(20) NOT NULL PRIMARY KEY,
	);
	
	
	
	
	
	
	
	

insert into teacher(name,gender,age,height,weight)values
     ('孙悟空','男',18,160,30),
     ('唐三藏','女',6,185,60),
     ('猪八戒','女',34,185,100),
     ('观世音','保密',500,170,50),
     ('沙悟净','男',50,180,70);


