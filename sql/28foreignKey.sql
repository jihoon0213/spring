USE w3schools;

create table w3schools.Products
(
    ProductID   int auto_increment
        primary key,
    ProductName varchar(255)   null,
    SupplierID  int            null,
    CategoryID  int            null,
    Unit        varchar(255)   null,
    Price       decimal(10, 2) null
);

ALTER TABLE Products
    ADD FOREIGN KEY (CategoryID) REFERENCES Categories (CategoryID);

create table w3schools.Products
(
    ProductID   int auto_increment
        primary key,
    ProductName varchar(255)   null,
    SupplierID  int            null,
    CategoryID  int            null,
    Unit        varchar(255)   null,
    Price       decimal(10, 2) null,
    constraint Products_ibfk_1
        foreign key (CategoryID) references w3schools.Categories (CategoryID)
);

create index CategoryID
    on w3schools.Products (CategoryID);

# 연습
# Products 테이블 SupplierID가 Suppliers의 SupplierID 를
# 참조하는 외래키가 되도록 alter table 실행
# diagram 보기

create table w3schools.Products
(
    ProductID   int auto_increment
        primary key,
    ProductName varchar(255)   null,
    SupplierID  int            null,
    CategoryID  int            null,
    Unit        varchar(255)   null,
    Price       decimal(10, 2) null,
    constraint Products_ibfk_1
        foreign key (CategoryID) references w3schools.Categories (CategoryID)
);

create index CategoryID
    on w3schools.Products (CategoryID);

ALTER TABLE Products
    ADD FOREIGN KEY (SupplierID) REFERENCES Suppliers (SupplierID);

create table w3schools.Products
(
    ProductID   int auto_increment
        primary key,
    ProductName varchar(255)   null,
    SupplierID  int            null,
    CategoryID  int            null,
    Unit        varchar(255)   null,
    Price       decimal(10, 2) null,
    constraint Products_ibfk_1
        foreign key (CategoryID) references w3schools.Categories (CategoryID),
    constraint Products_ibfk_2
        foreign key (SupplierID) references w3schools.Suppliers (SupplierID)
);

create index CategoryID
    on w3schools.Products (CategoryID);

create index SupplierID
    on w3schools.Products (SupplierID);

ALTER TABLE OrderDetails
    ADD FOREIGN KEY (OrderID) REFERENCES Orders (OrderID);

ALTER TABLE OrderDetails
    ADD FOREIGN KEY (ProductID) REFERENCES Products (ProductID);

ALTER TABLE Orders
    ADD FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID);

ALTER TABLE Orders
    ADD FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID);

ALTER TABLE Orders
    ADD FOREIGN KEY (ShipperID) REFERENCES Shippers (ShipperID);
