-- Use the alx_book_store database
USE alx_book_store;

-- Create the authors table
CREATE TABLE IF NOT EXISTS Authors (
    author_id INT AUTO_INCREMENT,
    author_name VARCHAR(215) NOT NULL,
    PRIMARY KEY (author_id)
);

-- Create the books table
CREATE TABLE IF NOT EXISTS Books (
    book_id INT AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    PRIMARY KEY (book_id),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Create the customers table
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT,
    PRIMARY KEY (customer_id)
);

-- Create the orders table
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create the order_details table
CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetail_id INT AUTO_INCREMENT,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    PRIMARY KEY (orderdetail_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
