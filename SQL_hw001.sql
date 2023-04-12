-- 1. Создаём базу данных с телефонами
create database telephones;
-- Активируем БД telephones
use telephones;
-- Создаём таблицу mobile_phones
create table mobile_phones
(
  `id` INT NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `prices` DECIMAL NULL,
  `product_count` INT NOT NULL,
  PRIMARY KEY (`id`)
  );
-- Заполняем БД данными
INSERT INTO `telephones`.`mobile_phones`
  (`product_name`, `manufacturer`, `prices`, `product_count`) 
VALUES 
('Galaxy Z Fold3', 'Samsung', 140999, 2),
('Galaxy S23 Ultra', 'Samsung', 119999, 10),
('Galaxy S22 Ultra', 'Samsung', 108999, 6),
('Galaxy S21', 'Samsung', 79999, 1),
('iPhone 14', 'Apple', 169299, 2),
('iPhone 13', 'Apple', 120499, 15),
('iPhone 12', 'Apple', 84599, 20),
('Redmi Note 10S', 'Xiaomi', 17566, 23),
('Redmi 10C', 'Xiaomi', 11553, 2),
('Redmi 10A', 'Xiaomi', 5911, 88);

-- 2. Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT product_name, manufacturer, prices 
FROM mobile_phones
WHERE product_count > 2;

-- 3. Выведите весь ассортимент товаров марки "Samsung"
SELECT * FROM mobile_phones
WHERE manufacturer = 'Samsung';