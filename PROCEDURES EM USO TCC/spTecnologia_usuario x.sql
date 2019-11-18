delimiter $
create procedure spTecnologia_usuario(
	in tecnologia int,
    in usuario int
)
begin
	if exists (select * from tb_usuario where id_usuario = usuario) and exists (select * from tb_tecnologia where id_tecnologia = tecnologia) then
		if exists(select * from tecnologia_usuario where id_usuario = usuario and id_tecnologia = tecnologia) then
			# deleta
			delete from tecnologia_usuario where id_usuario = usuario and id_tecnologia = tecnologia;
			select 'Tecnologia desvinculada do usuário!' as msg;
		else
			# insere
			insert into tecnologia_usuario values (tecnologia, usuario);
			select 'Tecnologia vinculada ao usuário!' as msg;
		end if;
	else
		select 'Usuário e/ou tecnologia não encontrada!' as msg;
	end if;
end $