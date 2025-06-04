# SELECT :

# * : 모든 컬럼
SELECT *
FROM Customers;

# 지정된 열
SELECT CustomerName, City, Country
FROM Customers;

# 나열된 컬럼의 순서가 조회된 결과 순서와 같음
SELECT Country, City, CustomerName
FROM Customers;

# 미국에 사는 고객들 이름 조회
SELECT CustomerName, City, CustomerName
FROM Customers
WHERE Country = 'USA';

# 연습 : 멕시코와 미국에 사는 고객들의 이름과 국가, 도시, 주소(address) 조회
# 60년대에 태어난 직원들 이름 (lastName, firstName) 조회
# 가격이 10~20(미포함) 사이인 상품의 가격, 상품명, 카테고리번호 조회

SELECT CustomerName, City, Address, Country
FROM Customers
WHERE Country IN ('USA', 'MEXICO');

SELECT LastName, FirstName, BirthDate
FROM Employees
WHERE BirthDate BETWEEN '1960-01-01' AND '1969-12-31';

SELECT Price, ProductName, CategoryID
FROM Products
WHERE Price >= 10
  AND Price < 20;
