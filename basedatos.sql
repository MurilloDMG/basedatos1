CREATE TABLE "users" (
  "id_users" serial PRIMARY KEY,
  "id_roles" int,
  "name" varchar,
  "email" varchar,
  "password" varchar,
  "age" int
);

CREATE TABLE "courses" (
  "id_courses" serial PRIMARY KEY,
  "id_users" int,
  "id_categorie" int,
  "title" varchar,
  "description" varchar,
  "level" varchar,
  "teacher" varchar
);

CREATE TABLE "course_video" (
  "id" serial PRIMARY KEY,
  "id_courses" int,
  "title" varchar,
  "url" varchar
);

CREATE TABLE "categories" (
  "id_categories" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "rol" (
  "id_ro" serial PRIMARY KEY,
  "rol_name" varchar
);

ALTER TABLE "courses" ADD FOREIGN KEY ("id_users") REFERENCES "users" ("id_users");

ALTER TABLE "courses" ADD FOREIGN KEY ("id_categorie") REFERENCES "categories" ("id_categories");

ALTER TABLE "users" ADD FOREIGN KEY ("id_roles") REFERENCES "rol" ("id_ro");

ALTER TABLE "course_video" ADD FOREIGN KEY ("id_courses") REFERENCES "courses" ("id_courses");

insert into rol 
(rol_name)
values(
'Admin');
insert into rol 
(rol_name)
values(
'Profesor'),
('Alumno');

insert into categories
(name)
values
('Programacion'),
('Marketing'),
('Finanzas');

insert into users 
(id_roles,name,email,password,age)
values
(1,'Diego','diego@gmail.com','diego',25),
(2,'Juan','juan@gmail.com','juan',45),
(3,'Mario','mario@gmail.com','mario',20);

insert into courses 
(id_users,id_categorie,title,description,level,teacher)
values
(1,1,'Node.js','Luenguaje de backend','advanced','Juan'),
(3,2,'Ventas','Estrategias de venta','advanced','Karen');

insert into course_video
(id_courses,title,url)
values
(1,'Introduccion a node','video1'),
(2,'Introduccion de ventas','video2');

