create table courses (
  id integer primary key autoincrement,
  name text not null unique,
  lessons_amount integer
);

create table streams (
  id integer primary key autoincrement,
  number integer not null unique,
  course_id integer not null,
  start_date text not null,
  foreign key (course_id) references courses(id)
);

create table students (
  id integer primary key autoincrement,
  surname text not null,
  name text not null
);

create table grades (
  student_id integer not null,
  stream_id integer not null,
  grade real not null,
  primary key (student_id, stream_id),
  foreign key (student_id) references students(id),
  foreign key (stream_id) references streams(id)
);


