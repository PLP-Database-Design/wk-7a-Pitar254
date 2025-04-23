-- Question 1 Achieving 1NF (First Normal Form)

USE shop;


CREATE TABLE productDetail(
OrderID INT,
customerName VARCHAR(50)
);

INSERT INTO productDetail(OrderID, customerName)
VALUES (101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Create a products table

CREATE TABLE products(
OrderID INT,
product VARCHAR(50)
);

INSERT INTO products(OrderID, product)
VALUES (101, 'Laptop'),
(101, 'Mouse'),
(102, 'Tablet'),
(102, 'Keyboard'),
(102, 'Mouse'),
(103, 'Phone');


-- Question 2 Achieving 2NF (Second Normal Form)
CREATE TABLE OrderDetails(
OrderID INT);
INSERT OrderDetails(OrderID)
VALUES(101), (102), (103);



CREATE TABLE CustomerDetails(
customerName VARCHAR(50)
);

INSERT INTO CustomerDetails(customerName)
VALUES ('John Doe'),
('Jane Smith'),
('Emily Clark');


CREATE TABLE productDetails(
productName VARCHAR(50),
Quantity INT
);

INSERT INTO productDetails(productName, Quantity)
VALUES ('Laptop', 2),
('Mouse', 1),
('Tablet', 3),
('Keyboard', 1),
('Mouse', 2),
('Phone', 1);