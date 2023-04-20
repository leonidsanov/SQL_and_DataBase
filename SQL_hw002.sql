-- Создаём базу данных SQL_hw002
create database SQL_hw002;
-- Активируем БД SQL_hw002
use SQL_hw002;
-- 1. Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными
-- Создаём таблицу sales
create table sales
(
	id INT NOT NULL AUTO_INCREMENT,
    order_date DATE NOT NULL,
    count_product INT NOT NULL,
    PRIMARY KEY (id)
);
-- Заполняем данными
INSERT INTO sales (order_date, count_product)
VALUES
  ("2022-01-01", 156),
  ("2022-01-02", 180),
  ("2022-01-03", 21),
  ("2022-01-04", 124),
  ("2022-01-05", 341);
  
-- 2. Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.
SELECT id, order_date, count_product,
CASE TRUE
    WHEN count_product < 100 THEN 'Маленький заказ'
    WHEN count_product >= 100 AND count_product <= 300 THEN 'Средний заказ'
    ELSE 'Большой заказ'
END AS order_size
FROM sales;

-- 3. Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE
CREATE TABLE orders
(
    id INT NOT NULL AUTO_INCREMENT,
    employee_id VARCHAR(5) NOT NULL,
    amount DECIMAL(20, 2) NOT NULL,
    order_status VARCHAR(45) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO orders (employee_id, amount, order_status)
VALUES
	("e03", 15.00, "OPEN"),
	("e01", 25.50, "OPEN"),
	("e05", 100.70, "CLOSED"),
	("e02", 22.18, "OPEN"),
	("e04", 9.50, "CANCELLED");

SELECT id, order_status,
CASE order_status
    WHEN "OPEN" THEN 'Order is in open state.'
    WHEN "CLOSED" THEN 'Order is closed.'
    ELSE 'Order is cancelled.'
END AS order_summary
FROM orders;

/*
4. Чем NULL отличается от 0?
"0" — это значение, константа. 
A "NULL" указывает на "пустое место" — объявленную, но неинициализированную переменную, объект и т.п.
*/
