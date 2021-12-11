select avg(performance) 
  from grades 
  where grades.teacher_id = (select id 
                             from teachers 
                             where name = 'Николай' and surname = 'Савельев');

