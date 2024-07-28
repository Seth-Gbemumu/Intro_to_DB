CREATE DATABASE IF NOT EXISTS alx_book_store;

CREATE TABLE Books (
book_id INT AUTO_INCREMENT,
title VARCHAR(130) NOT NULL,
price DOUBLE,
publication_date DATE,
PRIMARY KEY(book_id),
FOREIGN KEY(author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Authors (
author_id INT AUTO_INCREMENT,
author_name VARCHAR(215) NOT NULL,
PRIMARY KEY(author_id)
);

CREATE TABLE Customers (
customer_id INT AUTO_INCREMENT,
customer_name VARCHAR(215) NOT NULL,
email VARCHAR(215) NOT NULL UNIQUE,
address TEXT,
PRIMARY KEY(customer_id)
);
CREATE TABLE Orders (
order_id INT AUTO_INCREMENT,
order_date DATE,
PRIMARY KEY(order_id),
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details (
orderdetail_id INT AUTO_INCREMENT,
FOREIGN KEY(order_id) REFERENCES Orders(order_id),
 FOREIGN KEY (book_id) REFERENCES Books(book_id),
quantity DOUBLE
);
