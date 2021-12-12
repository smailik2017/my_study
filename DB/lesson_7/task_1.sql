create view course_info as 
  select c.name as "Course name", 
         max(s.number) as "Max stream number", 
         s.started_at as "Start date", 
         avg(g.performance) as "Average performance" 
  from  courses c
        left join streams s on c.id = s.course_id
        left join grades g on g.stream_id = s.id
  group by c.id
;

