# DELETE : 특정 행(row, record)를 삭제
DELETE
FROM Customers
WHERE CustomerID = 104;

DELETE
FROM Customers
WHERE CustomerID = 103;

DELETE
FROM Customers
WHERE ContactName IS NULL;

# 명싱 : 지우기 전에 꼭 같은 WHERE절로 SELECT 해보기

SELECT *
FROM Customers
WHERE ContactName IS NULL;

SELECT *
FROM Customers
ORDER BY CustomerID DESC;

# WHERE 없이 삭제 하면 모든 레코드가 삭제됨

# 연습 :
# 공급자 테이블에서
# 28,29번 공급자 삭제하기
# 지우기

SELECT *
FROM Suppliers
ORDER BY SupplierID DESC;

DELETE
FROM Suppliers
WHERE SupplierID = 31;


DELETE
FROM Suppliers
WHERE SupplierID = 32;

# 공급자 테이블의 모든레코드 삭제하기

DELETE
FROM Suppliers;

SELECT *
FROM Suppliers
