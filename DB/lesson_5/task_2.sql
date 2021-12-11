select (select number from streams where streams.id = grades.stream_id) as "Stream number", 
       (select 
          (select name 
           from courses 
           where courses.id = streams.course_id)
        from streams 
        where grades.stream_id = streams.id) as "Course name", 
       (select surname || ' ' || name 
        from teachers 
        where grades.teacher_id = teachers.id) as "FIO", 
       performance 
from grades 
order by performance 
limit 2;
