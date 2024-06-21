DROP DATABASE IF EXISTS library;

CREATE DATABASE library;

USE library;

CREATE TABLE authors(
    author_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (author_id),
    CONSTRAINT CU_fullname UNIQUE (first_name, last_name)
);

CREATE TABLE books(
    book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    isbn VARCHAR(50) NOT NULL,
    published_date DATE NOT NULL,
    publisher_id INT NOT NULL,
    PRIMARY KEY(book_id),
    CONSTRAINT CU_isbn UNIQUE(isbn)
);

CREATE TABLE book_authors(
    author_id INT NOT NULL,
    book_id INT NOT NULL,
    PRIMARY KEY(author_id, book_id),
    CONSTRAINT FK_author_id FOREIGN KEY(author_id) REFERENCES authors(author_id),
    CONSTRAINT FK_book_id FOREIGN KEY(book_id) REFERENCES books(book_id)
);

