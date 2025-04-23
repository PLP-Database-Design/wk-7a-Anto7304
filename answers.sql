-- QUESTION

-- creating table customer order
CREATE TABLE Customer_order(
OrderID INT PRIMARY KEY,
CustomerName VARCHAR(60)
);

-- creating product table
CREATE TABLE product(
productID INT PRIMARY KEY,
productName VARCHAR(20)
);


-- crteating ordered_products table
CREATE TABLE Ordered_products(
OrderID INT,
productID INT,
FOREIGN KEY(OrderID) REFERENCES Customer_order(OrderID),
FOREIGN KEY(productID) REFERENCES product(productID)
);

-- inserting values to the Customer_order table
INSERT INTO Customer_order(OrderID,CustomerName)
VALUES 
(101,"John Doe"),
(102,"Jane Smith"),
(103,"Emily Clark")
;

-- inserting values to the product table

INSERT INTO product(productID,productName)
VALUES
(1, "Laptop"),
(2, "Mouse"),
(3, "Tablet"),
(4, "Keyboard"),
(5, "phone")
;



-- inserting the values into the ordered_products table

INSERT INTO Ordered_products(OrderID,productID)
VALUES
(101, 1),
(101, 2),
(102, 3),
(102, 4),
(102, 2),
(103, 5)
;


-- question  2

-- creating table customer order
CREATE TABLE Customer_order(
OrderID INT PRIMARY KEY,
CustomerName VARCHAR(60)
);


-- creating product table
CREATE TABLE product(
productID INT PRIMARY KEY,
productName VARCHAR(20)
);


-- creating ordered_products table
CREATE TABLE Ordered_products(
OrderID INT,
productID INT,
Quantity INT,
FOREIGN KEY(OrderID) REFERENCES Customer_order(OrderID),
FOREIGN KEY(productID) REFERENCES product(productID)
);

-- inserting values to the Customer_order table
INSERT INTO Customer_order(OrderID,CustomerName)
VALUES 
(101,"John Doe"),
(102,"Jane Smith"),
(103,"Emily Clark")
;

-- inserting values to the product table

INSERT INTO product(productID,productName)
VALUES
(1, "Laptop"),
(2, "Mouse"),
(3, "Tablet"),
(4, "Keyboard"),
(5, "phone")
;


-- inserting values into Ordered_products table
INSERT INTO Ordered_products(OrderID,productID,Quantity)
VALUES
(101, 1, 2),
(101, 2, 1),
(102, 3, 3),
(102, 4, 1),
(102, 2, 2),
(103, 5, 1)
;
