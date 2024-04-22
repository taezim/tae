create database test;
use test;
create table student(
num int auto_increment not null primary key,
nmae varchar(10),
height tinyint unsigned null check(height>=150),
email varchar(30) null unique,
phone1 int check(phone1 in ('02','051','055')),
phone2 int);

select * from student;
alter table student change nmae name varchar(10); 
desc student;
insert into student values (null,'taerim',160,'taerim@gmail.com',055,1234);
insert into student values (null,'subin',170,'su@gmail.com',02,456);

select concat(cast(phone1 as char),'-',convert(phone2 , char)) '전화번호' from student;
select cast('2024=01=12' as date) as '날짜';
select convert('2024.01.25', date) as '태림 생일';

set @th = 155;
select @th as '태림 키';
select name , height from student where height > @th;
select round(avg(height),2) as '평균 키' from student;
select * from student order by height desc;
select count(*) '총 학생 수' from student;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(20)
)default charset=utf8;
INSERT INTO departments (department_id, department_name)
VALUES (1, '인사팀'), (2, '영업팀');
select * from departments;

CREATE TABLE employees (
    employee_id INT primary key,
    name VARCHAR(20),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
)default charset=utf8;
INSERT INTO employees (employee_id, name, department_id)
VALUES (1, '홍길동', 1), (2, '이순신', 2), (3, '유관순', 1);
select * from employees;


select E.employee_id "직원 ID", E.name "이름" , E.department_id "부서 ID", D.department_name "부서명" from employees E inner join departments D on E.department_id = D.department_id order by E.employee_id asc;




create table buy(
num int auto_increment not null primary key,
mem_id char(8) not null,
prod_name char(6) not null,
foreign key (mem_id) references employees(employee_id)
on update cascade
on delete cascade
);
