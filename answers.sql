-- Question 1 Achieving 1NF (First Normal Form)

USE shop;


CREATE TABLE productDetail(
    OrderID INT,
    customerName VARCHAR(50),
    Products VARCHAR(100)
);

INSERT INTO productDetail(OrderID, CustomerName, Products)
VALUES 
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

-- Question 2 Achieving 2NF (Second Normal Form)
-- Create orders table
 CREATE TABLE orders(
    OrderID INT PRIMARY KEY,
    customerName VARCHAR(50)
);
INSERT INTO orders (OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Create a products table

CREATE TABLE products(
    product_id INT primary key,
    product VARCHAR(50)
    quantity INT,
    order_id INT,
    foreign key(order_id) references orders(OrderID)
);

insert into product(product_id, product, quantity, order_id)
values 
(1,'laptop', 2, 101),
(2,'Mouse', 1, 101),
(3,'Tablet', 3, 102),
(4,'Keyboard', 2, 102),
(5,'Mouse', 1, 102),
(6,'Phone', 1, 103);












-- 
-- CREATE TABLE OrderDetails(
-- OrderID INT);
-- INSERT OrderDetails(OrderID)
-- VALUES(101), (102), (103);



-- CREATE TABLE CustomerDetails(
-- customerName VARCHAR(50)
-- );

-- INSERT INTO CustomerDetails(customerName)
-- VALUES ('John Doe'),
-- ('Jane Smith'),
-- ('Emily Clark');


-- CREATE TABLE productDetails(
-- productName VARCHAR(50),
-- Quantity INT
-- );

-- INSERT INTO productDetails(productName, Quantity)
-- VALUES ('Laptop', 2),
-- ('Mouse', 1),
-- ('Tablet', 3),
-- ('Keyboard', 1),
-- ('Mouse', 2),
-- ('Phone', 1);