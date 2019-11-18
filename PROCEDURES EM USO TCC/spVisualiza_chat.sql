DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `spVisualiza_chat`(
	in ideia int,
    in usuario int
)
begin
	if exists (select * from participante_ideia where id_ideia = ideia and id_usuario = usuario and status_solicitacao = 1) then
		select m.id_mensagem, m.ct_mensagem, DATE_ADD(m.hr_mensagem, INTERVAL - 2 HOUR) hr_mensagem, m.id_usuario, m.uso_mensagem, m.id_ideia, u.nm_usuario
		from tb_mensagem as m
			join tb_usuario as u
				on u.id_usuario = m.id_usuario
					where m.uso_mensagem = 1 and id_ideia = ideia
						order by m.id_mensagem;
	else
		select 'Voce não faz parte dessa ideia!' as msg;
	end if;   
end$$
DELIMITER ;