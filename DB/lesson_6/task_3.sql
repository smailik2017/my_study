select teachers.id,
       teachers.surname, 
       teachers.name, 
      avg(grades.performance) 
from teachers 
  left join grades
    on teachers.id = grades.teacher_id
group by teacher_id;
