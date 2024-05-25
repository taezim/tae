-- 코드를 입력하세요
SELECT a.ANIMAL_ID as ANIMAL_ID, a.NAME as NAME from ANIMAL_INS a join ANIMAL_OUTS b on a.ANIMAL_ID = b.ANIMAL_ID where a.DATETIME > b.DATETIME order by a.DATETIME asc;