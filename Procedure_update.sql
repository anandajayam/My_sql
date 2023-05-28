--test

create or replace procedure money_tras(
			sender int, reci int , amount dec) 
as 
$$
	begin 
		update t_account set balance=balance - amount where recid=sender;
		update t_account set balance=balance + amount where recid=reci;
	commit;
-- store pro done
	end;
	
$$ language plpgsql;
