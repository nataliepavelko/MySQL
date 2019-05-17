use goit;
select * from skills;
select * from developers_skills;
alter table skills DROP COLUMN id_developer;
drop table skills;

-- Updates for a task 1 --
create table skills (
id int auto_increment primary key,
name varchar (50) NOT NULL,
level varchar (20) NOT NULL);

INSERT INTO skills(name, level) VALUES
('Java', 'Junior'),
('SQL', 'Junior'),
('C#', 'Junior'),
('JS', 'Senior'),
('SQL', 'Middle'),
('C++', 'Senior'),
('Java', 'Middle'),
('Java', 'Senior');

INSERT INTO developers_skills (id_developer, id_skill) VALUES
(1, 1), (1, 2),
(2, 4), (2, 7),
(3, 5),
(4, 3),
(5, 6),
(6, 8);

-- Updates for a task 2 --

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

-- 5. Найти самый дешевый проект (исходя из cost всех проектов) --
select min(cost), name
from projects
group by name
order by min(cost)
limit 1;
