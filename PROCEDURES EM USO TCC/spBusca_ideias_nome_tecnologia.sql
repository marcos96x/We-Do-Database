delimiter $
create procedure spBusca_ideias_nome_tecnologia(in tecnologia int, in busca varchar(30))
begin
	if exists (select * from tb_tecnologia where id_tecnologia = tecnologia) then
		select distinct i.id_ideia, u.id_usuario, i.nm_ideia, i.ds_ideia, u.nm_usuario, i.dt_criacao
		from tb_ideia as i
			join tb_tag_ideia as t
				on t.id_ideia = i.id_ideia
			join participante_ideia as p
				on p.id_ideia = i.id_ideia
			join tb_usuario as u
				on u.id_usuario = p.id_usuario and p.idealizador = 1
			join tecnologia_ideia as ti
				on ti.id_ideia = i.id_ideia
			where ti.id_tecnologia = tecnologia and t.nm_tag like concat("%", busca, "%");
    else
		select 'Tecnologia não encontrada' as msg;
	end if;
end $

