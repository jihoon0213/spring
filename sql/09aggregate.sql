# aggregate function(group function) : 집계함수 (그룹함수)

# SUM(), COUNT(), MIN(), MAX(), AVG()

# SUM() : 합계

# 모든 상품의 가격의 합계
SELECT SUM(Price)
FROM Products;

# 1번 카테고리 상품의 가격의 합계
SELECT SUM(Price)
FROM Products
WHERE CategoryID = 1;

#
SELECT SUM(Quantity)
FROM OrderDetails
WHERE OrderID = 10248;

# 특정 상품의 주문 개수
SELECT SUM(Quantity)
FROM OrderDetails
WHERE ProductID = 11;

# COUNT() : 특정 컬럼의 데이터가 몇 개인지
SELECT COUNT(CustomerID)
FROM Customers
WHERE Country = 'UK';

# COUNT(*) : 조회 결과 수
SELECT COUNT(*)
FROM Customers
WHERE Country = 'uk';

# 연습 : 미국에 사는 고객 수
SELECT COUNT(*)
FROM Customers
WHERE Country = 'usa';

SELECT COUNT(*)
FROM Employees
WHERE BirthDate BETWEEN '1950-01-01' AND '1959-12-31';

SELECT COUNT(*)
FROM Products
WHERE CategoryID = 2;

# 91개
SELECT COUNT(Country)
FROM Customers;

# 21개
SELECT COUNT(DISTINCT Country)
FROM Customers;

# MIN() : 특정 컬럼에서 가장 작은 값
# MAX() : 가장 큰 값
SELECT MIN(Price)
FROM Products;

SELECT MAX(Price)
FROM Products;

SELECT MIN(BirthDate)
FROM Employees;

SELECT MAX(BirthDate)
FROM Employees;

SELECT MIN(CustomerName)
FROM Customers;

SELECT MAX(CustomerName)
FROM Customers;

# 연습 :
# 1번 카테고리에서 가장 비싼 상품의 가격
SELECT MAX(Price)
FROM Products
WHERE CategoryID = 1;

# 2번 카테고리에서 가장 저렵한 상품의 가격
SELECT MIN(Price)
FROM Products
WHERE CategoryID = 2;
