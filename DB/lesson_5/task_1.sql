select number, 
      (select name from courses where courses.id = streams.course_id) as "Course name", 
      students_amount 
from streams;
