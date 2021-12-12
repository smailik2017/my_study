select distinct c.name,
      sum(s.students_amount) over (partition by s.course_id)
from courses c
     left join streams s on c.id = s.course_id
;

