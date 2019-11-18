DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleta_mensagem`(
	in usuario int,
	in mensagem int
)
begin
	if exists (select * from tb_mensagem where id_mensagem = mensagem and id_usuario = usuario) then
		insert into tb_mensagens_mortas 
			select ct_mensagem, hr_mensagem, id_usuario, id_ideia, 
				(select nm_ideia from tb_ideia where id_ideia = (select id_ideia from tb_mensagem where id_mensagem = mensagem))
				from tb_mensagem
					where id_mensagem = mensagem;
		delete from tb_mensagem where id_mensagem = mensagem;
		select 'Mensagem deletada com sucesso!' as msg_sucesso;
	else if exists (select * from participante_ideia where id_usuario = usuario and idealizador = 1 and id_ideia = (select id_ideia from tb_mensagem where id_mensagem = mensagem)) then
				insert into tb_mensagens_mortas 
			select ct_mensagem, hr_mensagem, id_usuario, id_ideia, 
				(select nm_ideia from tb_ideia where id_ideia = (select id_ideia from tb_mensagem where id_mensagem = mensagem))
				from tb_mensagem
					where id_mensagem = mensagem;
		delete from tb_mensagem where id_mensagem = mensagem;
		select 'Mensagem deletada com sucesso!' as msg_sucesso;
	else
		select 'Você não tem permissão para deletar essa mensagem!' as msg_erro;
	end if;
    end if;
end$$
DELIMITER ;
