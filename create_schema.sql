-- Create Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    total_spent DECIMAL(10,2),
    created_at TIMESTAMP
);

-- Create Books Table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(50),
    format VARCHAR(20),
    author_id INT,
    publisher_id INT,
    publish_date DATE,
    price DECIMAL(10,2),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    FOREIGN KEY (publisher_id) REFERENCES Publishers(publisher_id)
);

-- Create Authors Table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(100),
    biography TEXT
);

-- Create Publishers Table
CREATE TABLE Publishers (
    publisher_id INT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(255)
);

-- Create Reviews Table
CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    customer_id INT,
    book_id INT,
    rating INT,
    review_text TEXT,
    review_date TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Create Sales Table
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    book_id INT,
    sale_date TIMESTAMP,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
