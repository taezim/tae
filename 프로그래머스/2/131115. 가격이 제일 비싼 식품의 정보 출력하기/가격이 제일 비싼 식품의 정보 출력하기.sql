-- 코드를 입력하세요
SELECT * from FOOD_PRODUCT where PRICE = (select MAX(PRICE) as PRICE from FOOD_PRODUCT);