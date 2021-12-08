/*
  teachers - courses (one to many)
  streams - courses (one to many)
  teachers - streams (one to one)
*/

create table teachers (
  id integer primary key autoincrement,
  surname text not null,
  name text not null,
  email text not null
);

create table courses (
  id integer primary key autoincrement,
  name text not null
);

create table streams (
  id integer primary key autoincrement,
  course_id integer not null,
  stream_number integer not null,
  start_date text not null,
  studentd_count integer not null,
  foreign key (course_id) references courses(id)
);

create table grades (
  teacher_id integer not null,
  stream_id integer not null,
  grade real not null,
  primary key (teacher_id, stream_id),
  foreign key (teacher_id) references teachers(id),
  foreign key (stream_id) references streams(id)
);


