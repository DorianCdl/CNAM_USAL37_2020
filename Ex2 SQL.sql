-- Supprimer la base de données --
DROP DATABASE IF EXISTS usal37_editeur;

-- Créer la base de données usal37_editeur --
CREATE DATABASE IF NOT EXISTS usal37_editeur;

USE usal37_editeur;

CREATE TABLE shops
(
shop_name VARCHAR (50), 
shop_address VARCHAR (255)NOT NULL,
PRIMARY KEY (shop_name) 
);

CREATE TABLE books 
(
	book_isbn CHAR (20)PRIMARY KEY,
    book_title VARCHAR(255) NOT NULL,
    book_price DECIMAL (5,2) NOT NULL,
    book_reward VARCHAR (255) NULL
);

 CREATE TABLE editions
 (
	edition_isbn CHAR(20) PRIMARY KEY,
    edition_date DATE NOT NULL,
    edition_order TINYINT UNSIGNED,
    edition_nb INT UNSIGNED NOT NULL,
    book_isbn CHAR(20) NOT NULL,
    FOREIGN KEY (book_isbn) REFERENCES books(book_isbn)
 );
 
 CREATE TABLE authors
 (
	author_firstname VARCHAR(50),
    author_lastname VARCHAR(50),
    author_pseudo VARCHAR(50) NULL,
    author_percentage INT NOT NULL,
    PRIMARY KEY (author_lastname, author_firstname)
 );
 

INSERT INTO shops
(shop_name, shop_address)
VALUES
('Magasin 1', '24 rue de Sausheim'),
('Magasin 2', '36 avenue Jean-Claude');

-- Bonne formulation
INSERT INTO books
(book_isbn, book_title, book_price, book_reward)
VALUES
('2020A', 'La neige en deuil', 19.99, NULL);

-- Moins bonne formulation, mais fonctionnelle
INSERT INTO books
VALUES
('1954B', 'Bambi', 29.50, 'Goncourt');

INSERT INTO editions 
(edition_isbn, edition_date, edition_order, edition_nb, book_isbn)
VALUES
('AAAA', '2019-02-25', 1, 150, '2020A'),
('AAAB', '2019-10-05', 2, 257, '2020A');

SELECT * FROM books;
SELECT * FROM shops;





