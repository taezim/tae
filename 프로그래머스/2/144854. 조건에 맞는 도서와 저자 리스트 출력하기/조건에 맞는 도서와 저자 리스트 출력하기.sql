-- 코드를 입력하세요
SELECT a.BOOK_ID as BOOK_ID, b.AUTHOR_NAME as AUTHOR_NAME, DATE_FORMAT(a.PUBLISHED_DATE, '%Y-%m-%d') as PUBLISHED_DATE from BOOK a RIGHT JOIN AUTHOR b on a.AUTHOR_ID = b.AUTHOR_ID where a.CATEGORY = '경제' ORDER BY a.PUBLISHED_DATE asc;