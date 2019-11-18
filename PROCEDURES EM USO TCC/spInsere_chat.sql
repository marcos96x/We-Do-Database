delimiter $
create procedure spInsere_chat(
	in usuario int,
    in ideia int,
    in mensagem varchar(800)
)
begin
	if exists (select * from participante_ideia where id_usuario = usuario and id_ideia = ideia and status_solicitacao = 1) then	
		insert into tb_mensagem values (default, mensagem, now(), usuario, 1, ideia);
	    select 'Mensagem de chat inserida com sucesso!' as msg;
	else
		select 'Você não tem autorização para enviar mensagens nesse chat!' as msg;
	end if;
end $