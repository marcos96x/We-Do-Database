DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDeleta_usuario`(
	in id int
)
begin
	#mensagem, participacao, tecnologia_usuario, denuncia_acusador, denuncia acusado, curtida
    call spDeleta_mensagem_usuario(id);
    delete from tecnologia_usuario where id_usuario = id;
    delete from tb_denuncia where id_usuario_acusador = id;
    delete from tb_denuncia where id_usuario_denunciado = id;
    delete from curtida_ideia where id_usuario = id;
    delete from tb_notificacao where id_usuario = id;
    delete from tb_notificacao where id_usuario_acao = id;
    delete from tb_usuario where id_usuario = id;
    select 'Usuário deletado com sucesso!' as msg;
end$$
DELIMITER ;