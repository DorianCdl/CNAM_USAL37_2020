USE usal37_editeur;

UPDATE books SET book_price=5.50 WHERE book_isbn='1019A';

UPDATE books SET book_price=book_price-5 WHERE book_price > 20;

SELECT * FROM books
