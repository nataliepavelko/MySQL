# MySQL
Task 1.1

Необходимо создать базу данных, которая содержит следующие таблицы:
- developers (хранит данные о разработчиках(имя, возраст, пол и прочее))
- skills (отрасль – Java, C++, C#, JS; уровень навыков - Junior, Middle, Senior)
- projects (проекты, на которых работают разработчики)
- companies (IT компании, в которых работают разработчики)
- customers (клиенты, которые являются заказчиками проектов в IT компаниях)

При этом:
- каждая таблица должна содержать минимум 3 поля, одно из которых - id;
- разработать связь ManyToMany:
- один разработчик имеет много проектов;
- разработчики могут иметь много навыков;
- каждый проект имеет много разработчиков;
- компании выполняют много проектов одновременно - заказчики имеют много проектов;

Необходимо реализовать как таблицы, так и грамотные связи между ними.

Task 1.2

Необходимо составить запросы, которые выполняют следующие задачи:

1. Добавить разработчикам поле (salary - зарплата). 
2. Найти самый дорогой проект (исходя из salary всех разработчиков). 
3. Вычислить общую ЗП только Java разработчиков. 
4. Добавить поле (cost - стоимость) в таблицу Projects .
5. Найти самый дешевый проект (исходя из cost всех проектов).
6. Вычислить среднюю ЗП программистов в самом дешевом проекте.
