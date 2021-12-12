create trigger check_performance before insert 
on grades 
begin
  select case 
    when new.performance < 0 
         or new.performance > 5 
    then
      raise (abort, 'Value of performance must be between 0 and 5')
    end;
end;
