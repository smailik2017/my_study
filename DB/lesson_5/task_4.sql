select stream_id, 
      (select surname || ' ' || name 
       from teachers 
       where teachers.id = grades.teacher_id) 
from grades
where grades.teacher_id = (select id from teachers where name = 'Наталья' and surname = 'Петрова')
union
select stream_id, 
      (select surname || ' ' || name 
       from teachers 
       where teachers.id = grades.teacher_id) 
from grades where performance < 4.8;
