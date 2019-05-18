
create database goit;
use goit;

create table developers
(id int auto_increment primary key,
name varchar (50) NOT NULL,
surname varchar (50) NOT NULL,
sex ENUM ("F", "M"));

create table skills (
id int auto_increment primary key,
name varchar (50) NOT NULL,
level varchar (20) NOT NULL);

create table projects 
(id int auto_increment primary key,
name varchar (50) NOT NULL);

create table companies 
(id int auto_increment primary key,
name varchar (50) NOT NULL);

create table customers 
(id int auto_increment primary key,
name varchar (30) NOT NULL);

create table developers_projects 
(id_developer int,
id_project int,
primary key (id_developer, id_project));

create table developers_skills
(id_developer int,
id_skill  int,
primary key (id_developer, id_skill));

create table companies_projects
(id_companies int,
id_project int,
primary key (id_companies, id_project));

create table customers_projects
(id_customer int,
id_project int,
primary key (id_customer, id_project));
show tables;

INSERT INTO developers (name, surname , sex) VALUES
('Natalie', 'Pavelko', 'F'),
('Pavel', 'Vlasenko', 'M'),
('Max', 'Zhuk', 'M'),
('Alena', 'Kirilyk', 'F'),
('Lesha', 'Kutuzov', 'M'),
('Jenya', 'Kirmiza', 'M');

select * from developers;

INSERT INTO skills(name, level) VALUES
('Java', 'Junior'),
('SQL', 'Junior'),
('C#', 'Junior'),
('JS', 'Senior'),
('SQL', 'Middle'),
('C++', 'Senior'),
('Java', 'Middle'),
('Java', 'Senior');

INSERT INTO projects (name) VALUES
('DNA'), 
('Corgi'),
('Step by Step'),
('JavaRush'),
('Milly'),
('Soup'),
('NoteBook');

INSERT INTO companies (name) VALUES
('Luxoft'),
('Cognians'),
('Ciklum'),
('Game Dev');

select *  from companies;
select *  from projects;

INSERT INTO customers (name) VALUES
("MID"),
("Axent"),
("SortSoft"),
("Force");

insert into developers_projects (id_developer, id_project) values
(1, 1), 		    -- Наташа работает на DNA--
(2, 1), (2, 2), -- Паша работает на DNA и Corgi--
(3, 5), (3, 7), -- Макс работает на Milly и NoteBook--
(4, 6), (4, 7), -- Алена работает на Soup и Notebook
(5, 4), (5, 7), -- Леша работает на JavaRush и NoteBook
(6, 3); 		    -- Женя работает на Step by Step
 
insert into companies_projects values 
(1, 3), (1, 7), -- у Luxoft проекты Step by Step и Notebook
(2, 1), (2, 2), -- у Cognians проекты DNA и Corgi
(3, 4), (3, 5), -- у Ciklum проекты JavaRush и Milly
(4, 6); 		    -- у GameDev проект Soup

insert into customers_projects values 
(1, 1), (1, 4), (1, 7), -- MID заказал  проекты DNA, JavaRush  и Notebook
(2, 2), 				        -- Axent заказал проект Corgi
(3, 3), (3, 6), 		    -- SortSoft заказал проекты Step by Step и  Soup 
(4, 5); 				        -- Force заказал проект Milly

INSERT INTO developers_skills (id_developer, id_skill) VALUES
(1, 1), (1, 2),
(2, 4), (2, 7),
(3, 5),
(4, 3),
(5, 6),
(6, 8);
