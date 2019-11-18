delimiter $
create procedure spTecnologia_ideia(
	in tecnologia int,
    in ideia int
)
begin
	if exists (select * from tb_ideia where id_ideia = ideia) and exists (select * from tb_tecnologia where id_tecnologia = tecnologia) then
		if exists(select * from tecnologia_ideia where id_ideia = ideia and id_tecnologia = tecnologia) then
			# deleta
			delete from tecnologia_ideia where id_ideia = ideia and id_tecnologia = tecnologia;
			select 'Tecnologia desvinculada da ideia!' as msg;
		else
			# insere
			insert into tecnologia_ideia values (tecnologia, ideia);
			select 'Tecnologia vinculada à ideia!' as msg;
		end if;
	else
		select 'Ideia e/ou tecnologia não encontrada!' as msg;
	end if;
end $