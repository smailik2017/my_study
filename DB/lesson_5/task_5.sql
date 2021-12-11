select (select surname || ' ' || name from teachers where teachers.id = grades.teacher_id) as "Teacher", 
       ((select max(performance) from grades) - avg(performance)) as "MAX - AVG",
       ((select min(performance) from grades) - avg(performance)) as "MIN - AVG" 
from grades 
group by teacher_id;
