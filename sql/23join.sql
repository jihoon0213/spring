USE mydatabase;

CREATE TABLE table34
(
    name VARCHAR(1)
);

INSERT INTO table34
    (name)
VALUES ('a'),
       ('b'),
       ('c'),
       ('d'),
       ('c');


CREATE TABLE table35
(
    score INT
);

INSERT INTO table35
    (score)
VALUES (5),
       (4),
       (3),
       (3),
       (5);

SELECT*
FROM table34;
SELECT *
FROM table35;

# 행은 25개, 열 2개
SELECT *
FROM table34,
     table35;

# 행 616, 열 9개
SELECT *
FROM w3schools.Products,
     w3schools.Categories;

SELECT *
FROM w3schools.Products
         JOIN
     w3schools.Categories;

# Cartesian Product (카테시안 곱)

CREATE TABLE table36
(
    `대회`  VARCHAR(20),
    `연도`  INT,
    `우승자` VARCHAR(30),
    PRIMARY KEY (`대회`, `연도`)
);
CREATE TABLE table37
(
    `우승자`  VARCHAR(30),
    `생년월일` VARCHAR(100),
    PRIMARY KEY (`우승자`)
);

INSERT INTO table36
    (대회, 연도, 우승자)
VALUES ('D', '1998', 'chip'),
       ('I', '1998', 'al'),
       ('C', '1999', 'bob'),
       ('D', '1999', 'al'),
       ('I', '1999', 'chip');

INSERT INTO table37
    (우승자, 생년월일)
VALUES ('chip', '77-3-14'),
       ('al', '75-7-21'),
       ('bob', '68-9-28');

SELECT *
FROM table36;
SELECT *
FROM table37;

SELECT *
FROM table36
         JOIN
     table37;

SELECT *
FROM table36
         JOIN
     table37
WHERE table36.우승자 = table37.우승자;

SELECT *
FROM table36
         JOIN
     table37
     ON table36.우승자 = table37.우승자;

SELECT `대회`, `연도`, table37.`우승자`, `생년월일`
FROM table36
         JOIN
     table37
     ON table36.우승자 = table37.우승자;

# ALIAS : 별칭
SELECT `대회` AS congress, `연도` yeatr, t7.`우승자`, `생년월일`
FROM table36 t6
         JOIN
     table37 AS t7
     ON t6.우승자 = t7.우승자;

#
SELECT *
FROM w3schools.Products;
SELECT *
FROM w3schools.Categories;

SELECT c.CategoryName, p.ProductName
FROM w3schools.Products p
         JOIN w3schools.Categories c
              ON p.CategoryID = c.CategoryID
ORDER BY c.CategoryName, p.ProductName;

# 연습 :
# 공급자별 공급하는 상품 목록 조회

SELECT *
FROM w3schools.Products;
SELECT *
FROM w3schools.Suppliers;

SELECT s.SupplierName, p.ProductName
FROM w3schools.Suppliers s
         JOIN w3schools.Products p
              ON p.SupplierID = s.SupplierID
ORDER BY s.SupplierName, p.ProductName;


# 주문별 처리 직원
SELECT o.OrderDate, o.OrderID, e.FirstName, e.LastName
FROM w3schools.Orders o
         JOIN w3schools.Employees e ON o.EmployeeID = e.EmployeeID
WHERE e.EmployeeID = 3;

# 1번 고객이 주문한 날짜들 조회
SELECT c.CustomerID, c.CustomerName, o.OrderDate
FROM w3schools.Orders o
         JOIN w3schools.Customers c ON o.CustomerID = c.CustomerID
WHERE c.CustomerID = 1
ORDER BY o.OrderDate;

# 고객별 주문 건수
SELECT c.CustomerID, c.CustomerName, COUNT(*)

FROM w3schools.Orders o
         JOIN w3schools.Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID
HAVING COUNT(*) >= 20
ORDER BY c.CustomerID;

# 연습
# 카테고리별 상품의 평균가격
SELECT c.CategoryID, c.CategoryName, AVG(p.Price)
FROM w3schools.Categories c
         JOIN w3schools.Products p
              ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID
ORDER BY c.CategoryID;

# 직원 별 주문 처리 건수
SELECT e.EmployeeID, e.LastName, e.FirstName, COUNT(*)
FROM w3schools.Orders o
         JOIN w3schools.Employees e ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
ORDER BY e.EmployeeID;

SELECT e.EmployeeID, e.LastName, e.FirstName, COUNT(*)
FROM w3schools.Orders o
         JOIN w3schools.Employees e ON o.EmployeeID = e.EmployeeID
WHERE OrderDate BETWEEN '1997-01-01' AND '1997-12-31'
GROUP BY e.EmployeeID
ORDER BY e.EmployeeID;

SELECT e.EmployeeID, e.LastName, e.FirstName, COUNT(*)
FROM w3schools.Orders o
         JOIN w3schools.Employees e ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
ORDER BY COUNT(*) DESC;

SELECT e.EmployeeID, e.LastName, e.FirstName, COUNT(*)
FROM w3schools.Orders o
         JOIN w3schools.Employees e ON o.EmployeeID = e.EmployeeID
WHERE OrderDate BETWEEN '1997-01-01' AND '1997-12-31'
GROUP BY e.EmployeeID
ORDER BY COUNT(*) DESC;

