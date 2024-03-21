create database WAGUDB default CHARACTER SET utf8;

use WAGUDB;


CREATE TABLE IF NOT EXISTS member(
	m_id varchar(20) NOT NULL PRIMARY KEY, -- 아이디
    m_name varchar(20) NOT NULL, -- 이름
    m_password varchar(20) NOT NULL, -- 패스워드
    m_birth date, -- 생일
    m_team varchar(20), -- 팀
    m_injury varchar(30),  -- 부상
    m_address varchar(50), -- 주소
    m_classId varchar(30), -- 강의아이디
    m_teacherId varchar(30), -- 선생아이디
    m_record varchar(100),  -- 개인성적
    m_sex varchar(10),  -- 성별
	m_filename varchar(30)  -- 이미지
    )default charset=utf8;
	-- 전화번호,
    select * from member;
    
    
    
    


    create table if not EXISTS team(
		t_id varchar(20) NOT NULL primary key,
        t_name varchar(10) NOT NULL,
        t_people tinyint,
        t_number char(20),
        t_leader char(10),
        t_place char(100),
        t_filename varchar(100),
        description varchar(500)
    )default charset=utf8;
        select * from team;




drop table h_review;
CREATE TABLE IF NOT EXISTS h_review(
	hr_id varchar(20) NOT NULL PRIMARY KEY,
    hr_hospitalId varchar(20) NOT NULL,
    hr_userId varchar(30) NOT NULL,
    hr_date date NOT NULL,
    hr_content varchar(200) NOT NULL,
    hr_rating tinyint,
	hr_name varchar(30),
    hr_title varchar(20)
    )default charset=utf8;

select * from h_review;

-- 경기결과 테이블

create table if not exists t_score(
	ts_id char(30) NOT NULL primary key,
	teamid char(30) NOT NULL, -- 팀아이디
    ts_matches int, -- 경기수
    ts_result varchar(10), -- 최근경기
    ts_date date
)default charset=utf8;

select * from t_score;    


create table if not exists l_review(
	lr_id char(30) NOT NULL primary key,
	lessonid char(30) NOT NULL, -- 강의아이디
    lr_userId varchar(30) NOT NULL,  -- 사용자아이디
    lr_date date NOT NULL,  -- 작성날짜
    lr_content varchar(100) NOT NULL,  -- 내용
    lr_score tinyint,  -- 점수
    name varchar(20),
    title varchar(20)
)default charset=utf8;
    
select * from l_review;  






CREATE TABLE IF NOT EXISTS lesson
(
   c_id varchar(20) not null Primary key,
    c_name varchar(20) not null,
    c_coachId varchar(20) not null,
    c_subject varchar(5) not null,
    c_venue varchar(20) not null,
    c_managerName varchar(10) not null,
    c_tel char(20) not null,
    c_auditors tinyint,
    c_fees int,
    c_description varchar(100)
)default charset=utf8;

    select * from lesson;  
    
    
    

CREATE TABLE IF NOT EXISTS game
(
    g_id varchar(20) not null Primary key,
    t_id1 varchar(20) not null,
    t_name1 varchar(20) not null,
    g_date datetime not null,
    userid char(20) not null,
    username char(20),
    userphone char(20),
    g_stadium char(30),
    g_filename varchar(30)
)default charset=utf8;

    select * from game;  
    



CREATE TABLE IF NOT EXISTS matching
(
    g_id varchar(20) not null Primary key,
    t_id varchar(20) not null,
    t_name varchar(20) not null,
    userid char(20) not null,
    username char(20),
    userphone char(20),
    g_filename varchar(30)
)default charset=utf8;    
    -- g_id를 FK로 변경하고 pk로 matchingid를 int auto_increment해서 바꿔줘야함
 select * from matching;  



CREATE TABLE hospitalInfo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    addr VARCHAR(255),
    clCd VARCHAR(2),
    clCdNm VARCHAR(20),
    cmdcGdrCnt INT,
    cmdcIntnCnt INT,
    cmdcResdntCnt INT,
    cmdcSdrCnt INT,
    detyGdrCnt INT,
    detyIntnCnt INT,
    detyResdntCnt INT,
    detySdrCnt INT,
    drTotCnt INT,
    emdongNm VARCHAR(50),
    estbDd VARCHAR(8),
    hospUrl VARCHAR(255),
    mdeptGdrCnt INT,
    mdeptIntnCnt INT,
    mdeptResdntCnt INT,
    mdeptSdrCnt INT,
    pnursCnt INT,
    postNo VARCHAR(10),
    sgguCd VARCHAR(10),
    sgguCdNm VARCHAR(20),
    sidoCd VARCHAR(10),
    sidoCdNm VARCHAR(20),
    telno VARCHAR(20),
    XPos DOUBLE,
    YPos DOUBLE,
    yadmNm VARCHAR(255),
    ykiho VARCHAR(100)
);


select * from hospitalInfo;  




CREATE TABLE IF NOT EXISTS teammember
(
    tm_id INT AUTO_INCREMENT Primary key,
    userid varchar(20) not null,
    t_id varchar(30) not null,
    joindate date
)default charset=utf8;    
  
 select * from teammember;  




-- 상품라인

CREATE TABLE IF NOT EXISTS product(
   p_id VARCHAR(20) NOT NULL,  -- product아이디
   p_name VARCHAR(30),  -- 상품이름
   p_unitPrice INTEGER, -- 가격
   p_description TEXT, -- 설명
   p_category VARCHAR(20), -- 종류
   p_unitsInStock LONG,  -- 재고수
   p_condition VARCHAR(20), -- 상태
   p_rating INTEGER,  -- 평점
   p_fileName VARCHAR(20),  -- 파일이름
   model_name VARCHAR(50),  -- 모델 이름 (공적인 모델?)
   size VARCHAR(20),  -- 사이즈 인치
   position VARCHAR(30),  -- 포지션 어떤 포지션에 필요한지
   material VARCHAR(50),  -- 소재 가죽 스킨
   web VARCHAR(100),  -- 듀엘포스트 웹
   color VARCHAR(30),  -- 색상
   manufacturing_country VARCHAR(50),  -- 제조국
   handling_instructions TEXT,  -- 취급시 유희사항
   brief_description varchar(200), -- 설명 짧은버전
   brand varchar(100),
   PRIMARY KEY (p_Id)
) DEFAULT CHARSET=utf8;


select * from product;



CREATE TABLE IF NOT EXISTS p_review(
	pr_id varchar(20) NOT NULL PRIMARY KEY,
    p_productId varchar(20) NOT NULL,
    p_userId varchar(30) NOT NULL,
    p_date date NOT NULL,
    p_content varchar(200) NOT NULL,
    p_rating tinyint,
	p_name varchar(30),
    p_title varchar(20)
    )default charset=utf8;
SELECT * FROM p_review;

insert into p_review values("PR_1","P_0485745601","asd@ifif.com","2024-03-01","오 진짜 좋네요! 가격도 착함!",5,"미소","천재");




create table hospital_reservation
(
    reservation_id integer primary key auto_increment,
     h_id int not null,
    h_name varchar(20) NOT NULL,
     h_filename varchar(30),
     insert_date DATETIME, -- 병원 예약을 눌린 날짜
    reservation_date DATETIME, -- 병원에 가야하는 날짜
     reserver_id varchar(200),
     reserver_name varchar(10),
    reserver_phone char(20),
     patient_name varchar(10),
     patient_age tinyint unsigned,
    patient_phone char(20),
     injuryType char(7), -- 부상 부위
     notes varchar(100),  -- 부상 설명? 환자 유의사항 비고란
    foreign key(h_id) references hospitalInfo(id) -- Lesson 테이블의 클래스 ID
)default charset=utf8;
ALTER TABLE hospital_reservation AUTO_INCREMENT = 90000;
select * from hospital_reservation;



-- 카트
drop table if exists cart;
create table if not exists cart
(
   c_id varchar(200) primary key, -- 카트 아이디 = 멤버 아이디 // foriegn key
    c_grandTotal integer  -- 총액
    
)DEFAULT CHARSET=utf8;


-- 카트 아이템
drop table if exists cartItems;
create table if not exists cartItems
(
   
   c_id varchar(200), -- 카트 아이디
   c_item char(30), -- 장바구니에 담긴 상품id
   c_quantity integer, -- 수량
    c_totalPrice integer, 
    foreign key(c_id) references cart(c_id),
    foreign key(c_item) references product(p_id) -- 상품id와 카트상품 fk
    
)DEFAULT CHARSET=utf8;


-- 코치
CREATE TABLE IF NOT EXISTS coach
(
   c_id varchar(20) not null,
    c_name varchar(20) not null,
    c_certificate char(5) not null,
   c_description varchar(100) not null,
    c_career varchar(100) not null,
    c_classId varchar(20) primary key,
    c_fileName varchar(30)
)default charset=utf8;

INSERT INTO coach (c_id, c_name, c_certificate, c_description, c_career, c_classId, c_fileName)
VALUES
('coach100', 'John', '12345', 'Certified Coach', '5 years', '101', 'john_profile.jpg'),
('coach101', 'Jane', '54321', 'Experienced Coach', '8 years', '102', 'jane_profile.jpg');


create table if not exists stadium
(
   s_id varchar(30) not null primary key,
   s_stdName varchar(20) not null,
    s_city varchar(30),
    s_countryside varchar(20),
    s_siteArea int,
    s_buildingArea float,
    s_totalArea float,
    s_infieldMaterial varchar(4) not null,
    s_outfieldMaterial varchar(4) not null,
    s_centerLength tinyint not null,
    s_baseLength tinyint not null,
    s_seatsNumber smallint not null,
    s_capacity smallint not null,
    s_builtYear char(4),
    s_fileName varchar(30)
    
)default charset=utf8;

select * from stadium;

create table if not exists customer
(
    o_id integer primary key,
    c_phone char(11) not null
)default charset=utf8;

create table if not exists orders
(
    o_id integer primary key,
    o_date Date,
    c_id varchar(200) not null, -- customerId
   foreign key(o_id) references customer(o_id)
)default charset=utf8;
create table if not exists shipping
(
    o_id integer primary key,
    c_id varchar(200) not null,
    s_phone char(11) not null,
    foreign key(o_id) references orders(o_id)
)default charset=utf8;

create table if not exists address
(
    o_id integer,
    a_personName varchar(10) not null,
    a_name varchar(15),
    a_country varchar(100),
    a_zipCode char(6),
    foreign key(o_id) references orders(o_id)
)default charset=utf8;

create table if not exists orderItems
(
   o_id integer,
    p_productId varchar(20) not null,
    o_quantity integer, -- 수량
    o_totalPrice integer, 
    foreign key(o_id) references orders(o_id) -- p_id product테이블와 외래키 설정예정
)default charset=utf8;



CREATE VIEW order_info AS
SELECT 
    o.o_id AS order_id,
    o.o_date AS order_date,
    o.c_id AS customer_id,
    c.c_phone AS customer_phone,
    a1.a_personName AS receiver_name_1,
    a1.a_name AS receiver_address_name_1,
    a1.a_country AS receiver_country_1,
    a1.a_zipCode AS receiver_zip_code_1,
    s.s_phone AS shipping_phone,
    a2.a_personName AS receiver_name_2,
    a2.a_name AS receiver_address_name_2,
    a2.a_country AS receiver_country_2,
    a2.a_zipCode AS receiver_zip_code_2
FROM orders o
JOIN customer c ON o.o_id = c.o_id
LEFT JOIN shipping s ON o.o_id = s.o_id
LEFT JOIN address a1 ON o.o_id = a1.o_id
LEFT JOIN address a2 ON o.o_id = a2.o_id AND a1.a_personName != a2.a_personName
GROUP BY o.o_id;

select * from customer;
select * from address;

create table wish_list
(
   c_id varchar(200) not null, -- customerId / sessionId
   w_itemId varchar(100) primary key, -- 관심 등록한 요소의 ID -- 유일값, null이면 안된다
    w_category varchar(20), -- null이면 기타로 출력 예정
   w_date Date
)default charset=utf8;


create table lesson_registration
(
   registration_id integer primary key auto_increment, -- 수강신청번호
    l_id varchar(200), -- 클래스 ID
    coachId varchar(200), -- 클래스를 등록한 코치 아이디
    regist_date Date, -- 수강 신청을 한 날짜
    c_id varchar(200), -- 예약자 아이디
    c_name varchar(20), -- 예약자 이름
    c_phone char(11), -- 예약자 전화번호
    notes varchar(200), -- 비고란/ 요청사항 / 코치에게 남기고 싶은 말
    payment_status tinyint,
   foreign key(l_id) references lesson(c_id) -- Lesson 테이블의 클래스 ID
)default charset=utf8;

ALTER TABLE lesson_registration AUTO_INCREMENT = 7000;


select * from  wish_list;
select * from coach;

select * from lesson_registration;





-- 도영꺼


CREATE TABLE hospitalqna
(
    number INT PRIMARY KEY AUTO_INCREMENT,
    name CHAR(3) NOT NULL,
    content VARCHAR(200) NOT NULL,
    email VARCHAR(20) NOT NULL,
    date TIMESTAMP DEFAULT NOW(),
    hospitalid CHAR(30)
);

INSERT INTO hospitalqna (name, content, email, hospitalid) VALUES ('도영', 'hospitalqna', 'zzz12@naver.com', '1');
INSERT INTO hospitalqna (name, content, email, hospitalid) VALUES ('도영', 'hospitalqna', 'zzz12@naver.com', '2');
INSERT INTO hospitalqna (name, content, email, hospitalid) VALUES ('도영', 'hospitalqna', 'zzz12@naver.com', '3');

select * from hospitalqna;


CREATE TABLE productqna
(
    number INT PRIMARY KEY AUTO_INCREMENT,
    name CHAR(3) NOT NULL,
    content VARCHAR(200) NOT NULL,
    email VARCHAR(20) NOT NULL,
    date TIMESTAMP DEFAULT NOW(),
    productid CHAR(30)
);

INSERT INTO productqna (name, content, email, productid) VALUES ('도영', 'productqna', 'zzz12@naver.com', '1');
INSERT INTO productqna (name, content, email, productid) VALUES ('도영', 'productqna', 'zzz12@naver.com', '2');
INSERT INTO productqna (name, content, email, productid) VALUES ('도영', 'productqna', 'zzz12@naver.com', '3');

select * from productqna;

CREATE TABLE classqna
(
    number INT PRIMARY KEY AUTO_INCREMENT,
    name CHAR(3) NOT NULL,
    content VARCHAR(200) NOT NULL,
    email VARCHAR(20) NOT NULL,
    date TIMESTAMP DEFAULT NOW(),
    classid CHAR(30)
);

INSERT INTO classqna (name, content, email, classid) VALUES ('도영', 'classqna', 'zzz12@naver.com', '1');
INSERT INTO classqna (name, content, email, classid) VALUES ('도영', 'classqna', 'zzz12@naver.com', '2');
INSERT INTO classqna (name, content, email, classid) VALUES ('도영', 'classqna', 'zzz12@naver.com', '3');

select * from classqna;

drop table hospitalqna;
drop table productqna;
drop table classqna;



CREATE TABLE hospitalanswer (
  answernumber INT AUTO_INCREMENT PRIMARY KEY,
  questionnumber CHAR(30),
  respondentid CHAR(20) NOT NULL,
  answercontent VARCHAR(300) NOT NULL,
  replaydate TIMESTAMP DEFAULT NOW(),
  hospitalid CHAR(30)
);

insert into hospitalanswer (questionnumber, respondentid, answercontent,hospitalid) values('1','2','안녕하세요','1');
insert into hospitalanswer (questionnumber, respondentid, answercontent,hospitalid) values('2','3','안녕하세요','2');
insert into hospitalanswer (questionnumber, respondentid, answercontent,hospitalid) values('3','4','안녕하세요','3');

select * from hospitalanswer;

create table productanswer
(
   answernumber int auto_increment primary key,
    questionnumber char(30),
    respondentid char(20) NOT NULL,
    answercontent varchar(300) NOT NULL,
    replaydate TIMESTAMP DEFAULT NOW(),
    productid char(30)
);


insert into productanswer (questionnumber, respondentid, answercontent,productid) values('1','2','안녕하세요','1');
insert into productanswer (questionnumber, respondentid, answercontent,productid) values('2','3','안녕하세요','2');
insert into productanswer (questionnumber, respondentid, answercontent,productid) values('3','4','안녕하세요','3');


select * from productanswer;

CREATE TABLE classanswer (
  answernumber INT AUTO_INCREMENT PRIMARY KEY,
  questionnumber CHAR(30),
  respondentid CHAR(20) NOT NULL,
  answercontent VARCHAR(300) NOT NULL,
  replaydate TIMESTAMP DEFAULT NOW(),
  classid CHAR(30)
);

insert into classanswer (questionnumber, respondentid, answercontent,classid) values('1','2','안녕하세요','1');
insert into classanswer (questionnumber, respondentid, answercontent,classid) values('2','3','안녕하세요','2');
insert into classanswer (questionnumber, respondentid, answercontent,classid) values('3','4','안녕하세요','3');



select * from classanswer;

drop table hospitalanswer;
drop table productanswer;
drop table classanswer;



-- batter & atbat 나누기

create table atbat
(
   atbatplayerID Integer primary key,
    matches int,
    win int,
    loss int,
    save int,
    hold int,
    odds float,
    innings double,
    hitsAllowed int,
    homeRunsAllowed int,
    walks int,
    hitByPitch int,
    strikeouts int,
    runs int,
    earnedRuns int,
    onBaseAllowed double
);

create table batter
(
   batterplayerID Integer primary key,
    matches int,
     atBats int,
   strokes   int,
    score   int,
    hits int,
    doubles int,
    triples int,
    homeRuns int,
    rbis int,
    stolenBases int,
    doublePlays int,
    battingAverage double,
    sluggingPercentage double,
    onBasePercentage double
);

INSERT INTO atbat (atbatplayerID, matches, win, loss, save, hold, odds, innings, hitsAllowed, homeRunsAllowed, walks, hitByPitch, strikeouts, runs, earnedRuns, onBaseAllowed)
VALUES (1, 10, 7, 3, 2, 4, 0.7, 45.2, 35, 5, 12, 2, 42, 20, 15, 0.345);
INSERT INTO atbat (atbatplayerID, matches, win, loss, save, hold, odds, innings, hitsAllowed, homeRunsAllowed, walks, hitByPitch, strikeouts, runs, earnedRuns, onBaseAllowed)
VALUES (2, 15, 10, 4, 1, 6, 0.667, 65.1, 52, 8, 20, 3, 58, 25, 18, 0.398);
INSERT INTO atbat (atbatplayerID, matches, win, loss, save, hold, odds, innings, hitsAllowed, homeRunsAllowed, walks, hitByPitch, strikeouts, runs, earnedRuns, onBaseAllowed)
VALUES (3, 8, 4, 3, 0, 2, 0.5, 36.0, 28, 3, 10, 1, 30, 12, 9, 0.312);

INSERT INTO batter (batterplayerID, matches, atBats, strokes, score, hits, doubles, triples, homeRuns, rbis, stolenBases, doublePlays, battingAverage, sluggingPercentage, onBasePercentage)
VALUES (1, 10, 30, 12, 8, 10, 2, 0, 3, 12, 2, 1, 0.333, 0.567, 0.4);
INSERT INTO batter (batterplayerID, matches, atBats, strokes, score, hits, doubles, triples, homeRuns, rbis, stolenBases, doublePlays, battingAverage, sluggingPercentage, onBasePercentage)
VALUES (2, 15, 45, 18, 15, 20, 5, 1, 6, 22, 4, 2, 0.444, 0.689, 0.45);
INSERT INTO batter (batterplayerID, matches, atBats, strokes, score, hits, doubles, triples, homeRuns, rbis, stolenBases, doublePlays, battingAverage, sluggingPercentage, onBasePercentage)
VALUES (3, 8, 26, 10, 7, 8, 1, 0, 2, 6, 1, 0, 0.308, 0.462, 0.35);
-- 


select * from batter;
select * from atbat;

drop table atbat;
drop table product;


