desc student;
-- insert into student values (0,'','','','');
insert into student values (2018100001,'모바일과','홍길순','서울시','010-9002-1234');
insert into student values (2018100002,'모바일과','홍길동','경기도','010-2009-4321');
insert into student values (2018100003,'영어과','수여인','인천시','010-3918-0007');
insert into student values (2018100004,'영어과','김다운','서울시','010-3002-0101');
select * from student;

select * from student where depart="모바일과";
update student set depart="컴퓨터과" where depart="모바일과";

delete from student where depart="영어과";