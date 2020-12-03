USE usal37_editeur;

INSERT INTO shops
(shop_name, shop_adress)
VALUES
('Magasin 3', '22 rue de Paris'),
('Magasin 4', '89 rue Lefebvre'),
('Bookshop 5', '45 rue Turing');

SELECT shop_name, shop_adress FROM shops WHERE shop_name LIKE 'Mag%';

SELECT shop_name FROM shops WHERE shop_name IN ('Magasin 2', 'Magasin 5');

