create trigger check_stream before insert
on streams
begin
  select case
    when new.started_at < date('now')
    then
      raise (abort, 'Started_at must be greater than now')
    when new.number <= (select max(number) from streams)
    then
      raise (abort, 'Number of stream must be maximum')
    end;
end;

