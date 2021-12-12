select distinct t.id,
       t.surname,
       t.name,
       avg(g.performance) over (partition by g.teacher_id)
from teachers t
     left join grades g on g.teacher_id = t.id
;

