DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_excluirIdeia`(in usuario int, in ideia int)
begin
	if exists (select * from participante_ideia where id_usuario = usuario and id_ideia = ideia and idealizador = 1) then
		delete from tb_tag_ideia where id_ideia = ideia;
		delete from participante_ideia where id_ideia = ideia;
		delete from tecnologia_ideia where id_ideia = ideia;
		delete from tb_mensagem where id_ideia = ideia;
        delete from curtida_ideia where id_ideia = ideia;
        delete from tb_notificacao where id_ideia = ideia;
		delete from tb_ideia where id_ideia = ideia;
        select 'Ideia deletada com sucesso' as msg;
	else
		if exists (select * from participante_ideia where id_ideia = ideia) then
			select 'Voce não é o idealizador' as msg;
		else
			select 'Ideia não existente' as msg;
		end if;
	end if;
end$$
DELIMITER ;