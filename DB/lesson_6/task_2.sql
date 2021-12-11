select courses.name as "course_name", 
       sum(students_amount) as "total_students"
from streams
     inner join courses
        on courses.id = streams.course_id
group by course_id;
