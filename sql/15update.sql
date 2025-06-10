# UPDATE : 특정 레코드의 컬럼을 수정


UPDATE Customers
SET ContactName = '손흥민',
    Country     = '한국'
WHERE CustomerID = 2;

SELECT *
FROM Customers;

# 명심 : UPDATE 전에 같은 WHERE로 SELECT 해보기

SELECT *
FROM Customers
WHERE Country = 'USA';

UPDATE Customers
SET Country = '미국'
WHERE Country = 'USA';

SELECT *
FROM Customers
WHERE Country = '미국';

UPDATE Customers
SET Country = 'USA'
WHERE Country = '미국';

# 연습 :
# 1번 상품의 가격을 22.00으로 수정
# 8번 카테고리 상품들의 Unit을 '포장'으로 수정

SELECT *
FROM Products
WHERE ProductID = 1;


UPDATE Products
SET Price = 22.00
WHERE ProductID = 1;

SELECT *
FROM Products
WHERE CategoryID = 8;

UPDATE Products
SET Unit = '포장'
WHERE CategoryID = 8;

# WHERE 없이 UPDATE 실행 매우 주의!!!
