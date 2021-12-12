select distinct t.surname,
       t.name,
       min(g1.performance) over (partition by g1.teacher_id),
       c1.name,
       max(g2.performance) over (partition by g2.teacher_id),
       c2.name
from teachers t
  left join grades g1 on g1.teacher_id = t.id
  left join streams s1 on s1.id = g1.stream_id
  left join courses c1 on c1.id = s1.course_id

  left join grades g2 on g2.teacher_id = t.id
  left join streams s2 on s2.id = g2.stream_id
  left join courses c2 on c2.id = s2.course_id
;

  
