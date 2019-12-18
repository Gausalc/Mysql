mysql -u root -p
show databases;
use java20;

select database();--是否在默认库

show tables;

CREATE DATABASE java20_20191211;
USE java20_20191211;
CREATE TABLE students (
	name VARCHAR(20),
	gender VARCHAR(3)
	age INT,
	height DOUBLE,
	weight DOUBLE
);


/*
姓名允许为空，但不允许重复
性别、年龄、身高、体重不允许为空
性别默认保密
年龄默认0
身高默认0
体重默认0*/
CREATE TABLE masters (
	name VARCHAR(20) UNIQUE,
	gender VARCHAR(3)NOT NULL DEFAULT"保密",
	age INT NOT NULL DEFAULT 0,
	height DOUBLE NOT NULL DEFAULT 0 ,
	weight DOUBLE NOT NULL DEFAULT0
);

INSERT INTO masters (name)VALUES '玉皇大帝';


--小的博客系统
CREATE TABLE users (
	id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE articles (
	id INT PRIMARY KEY AUTO_INCREMENT,
	author_id INT NOT NULL,
	title VARCHAR(100) NOT NULL,
	content TEXT NOT NULL,
	published_at DATETIME NOT NULL
);
CREATE TABLE comments (
	id INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT NOT NULL,
	article_id INT NOT NULL,
	content VARCHAR(100) NOT NULL,
	published_at DATETIME NOT NULL
);
CREATE TABLE user_article_like_relation (
	user_id INT NOT NULL,
	article_id INT NOT NULL,
	PRIMARY KEY (user_id, article_id)
);

注册用户: 高博/陈沛鑫
INSERT INTO users (username) VALUES ('高博');
INSERT INTO users (username) VALUES ('陈沛鑫');
高博发表了一篇文章 《论找实习的重要性》 "非常重要"
SELECT id FROM users WHERE username = "高博";
INSERT INTO articles (author_id, title, content, published_at)
	VALUES (1, "论找实习的重要性", "非常重要", "2019-12-11 21:39:00");
陈沛鑫评论高博的文章《论找实习的重要性》，"同意执行"
SELECT id FROM users WHERE username = "陈沛鑫";
SELECT id FROM articles WHERE title = "论找实习的重要性";
INSERT INTO comments (user_id, article_id, content, published_at)
	VALUES (2, 1, "同意执行", "2019-12-11 21:41:00");
陈沛鑫点赞该文章
SELECT id FROM users WHERE username = "陈沛鑫";
SELECT id FROM articles WHERE title = "论找实习的重要性";
INSERT INTO user_article_like_relation (user_id, article_id)
	VALUES (2, 1);
高博的文章主页
SELECT id FROM users WHERE username = "高博";
SELECT id, title, published_at FROM articles WHERE author_id = 1
	ORDER BY published_at DESC LIMIT 10 OFFSET 0;




















