use goit;
alter table developers add column salary int (10);
select * from developers; 


-- 1. Добавить разработчикам поле (salary - зарплата) --
update developers set salary = 950
where id = 1;
update developers set salary = 1550
where id = 2;
update developers set salary = 1200
where id = 3;
update developers set salary = 800
where id = 4;
update developers set salary = 1500
where id = 5;
update developers set salary = 1650
where id = 6;

-- 2. Найти самый дорогой проект (исходя из salary всех разработчиков):
select sum(salary),  p.name 
from developers d, projects p, developers_projects dp
where d.id = dp.id_developer
and p.id = dp.id_project
group by p.name
order by sum(salary) desc
limit 1;

-- 3. Вычислить общую ЗП только Java разработчиков --
select sum(salary), s.name
from developers d, skills s, developers_skills ds
where d.id = ds.id_developer
and s.id = ds.id_skill
and s.id in (1, 7, 8);

-- 4. Добавить поле (cost - стоимость) в таблицу Projects
alter table projects add column cost double;
update projects set cost = 122000
where id = 1;
update projects set cost = 77500
where id = 2;
update projects set cost = 95500
where id = 3;
update projects set cost = 115000
where id = 4;
update projects set cost = 80000
where id = 5;
update projects set cost = 78000
where id = 6;
update projects set cost = 65500
where id = 7;

select * from projects;

-- 5. Найти самый дешевый проект (исходя из cost всех проектов) --
select min(cost), name
from projects
group by name
order by min(cost)
limit 1;


-- 6. Вычислить среднюю ЗП программистов в самом дешевом проекте

select min(cost), avg(salary), p.name
from developers d, projects p, developers_projects dp
where  cost = (select min(cost)
from projects)
and salary = (select avg(d.salary) 
from developers)
and d.id = dp.id_developer
and p.id = dp.id_project;
