-- Создаём базу данных SQL_hw003
create database SQL_hw003;
-- Активируем БД SQL_hw003
use SQL_hw003;
-- Создаём таблицу staff
create table staff
(
	id int primary key auto_increment,
    firstname varchar (20) not null,
    lastname varchar (20) not null,
    post varchar (20) not null,
    seniority int not null,
    salary int not null,
    age int not null
);
-- Добавляем данные в таблицу
insert staff (firstname, lastname, post, seniority, salary, age)
values
	('Вася', 'Петров', 'начальник', 40, 100000, 60),
    ('Пётр', 'Власов', 'начальник', 8, 70000, 30),
    ('Катя', 'Катина', 'инженер', 2, 70000, 25),
    ('Саша', 'Сасин', 'инженер', 12, 50000, 35),
    ('Иван', 'Иванов', 'рабочий', 40, 30000, 59),
    ('Петр', 'Петров', 'рабочий', 20, 25000, 40),
    ('Сидор', 'Сидоров', 'рабочий', 10, 20000, 35),
    ('Антон', 'Антонов', 'рабочий', 8, 19000, 28),
    ('Юрий', 'Юрков', 'рабочий', 5, 15000, 25),
    ('Максим', 'Максимов', 'рабочий', 2, 11000, 22),
    ('Юрий', 'Галкин', 'рабочий', 3, 12000, 24),
	('Людмила', 'Маркина', 'уборщик', 10, 10000, 49);
-- Продемонстрируем данные
select * from staff;
-- 1.Отсортируйте поле “зарплата” (salary) в порядке убывания и возрастания
select *
from staff
order by salary;

select *
from staff
order by salary desc;

-- 2. Выведите 5 максимальных зарплат (salary)
select *
from staff
order by salary desc
limit 5;

-- 3. Подсчитать суммарную зарплату(salary) по каждой специальности (post)
select post, sum(salary)
from staff
group by post;

-- 4. Найти количество сотрудников по специальности “Рабочий” (post) в возрасте от 24 до 42 лет.
select count(*)
from staff
where post='рабочий' and age between 24 and 42;

-- 5. Найти количество специальностей
select count(*)
from (select distinct post from staff) as temp;

-- 6. Вывести специальности, у которых средний возраст сотрудника меньше 44 лет
select post, avg(age)
from staff
group by post
having avg(age) < 44;