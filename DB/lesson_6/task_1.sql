select streams.number as "stream_number",
       courses.name as "course_name",
       streams.started_at as "sterted_at"
from streams
  inner join courses
  on streams.course_id = courses.id;
