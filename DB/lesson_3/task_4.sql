create temporary table tmp as select * from grades;
drop table grades;
create table grades (
  teacher_id integer not null,
  stream_id real not null,
  performance real not null,
  primary key (teacher_id, stream_id)
  foreign key (teacher_id) references teachers(id),
  foreign key (stream_id) references stream(id)
  );

insert into grades(teacher_id, stream_id, performance) select * from tmp;

drop table tmp;

