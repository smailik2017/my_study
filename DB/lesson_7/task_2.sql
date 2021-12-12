begin transaction;
  delete from teachers where id = 3;
  delete from grades where teacher_id = 3;
commit;


