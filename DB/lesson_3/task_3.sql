insert into teachers(name, surname, email) values 
  ('Николай', 'Савельев', 'saveliev.n@mail.ru'),
  ('Наталья', 'Петрова', 'petrova.n@yandex.ru'),
  ('Елена', 'Малышева', 'malysheva.e@google.com');
  
insert into courses(name) values
  ('Базы данных'),
  ('Основы Python'),
  ('Linux. Рабочая станция');

alter table streams rename column stream_number to "number";
alter table streams rename column studentd_count to students_amount;
  
insert into streams(course_id, number, started_at, students_amount) values
  (3, 165, '18.08.2020', 34),
  (2, 178, '02.10.2020', 37),
  (1, 203, '12.11.2020', 35),
  (1, 210, '03.12.2020', 41);

alter table grades rename column grade to performance;

insert into grades (teacher_id, stream_id, performance) values
  (3, 1, 4.7),
  (2, 2, 4.9),
  (1, 3, 4.8),
  (1, 4, 4.9);
  
