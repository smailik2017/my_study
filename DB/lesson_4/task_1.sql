update streams 
  set started_at = 
    substr(started_at, 7, 4)||'-'||
    substr(started_at, 4, 2)||'-'||
    substr(started_at, 1, 2)
;

