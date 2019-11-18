delimiter $
create procedure spDeleta_mensagem_usuario(
    in usuario int
)
begin
    delete from tb_mensagem where id_usuario = usuario;
    select 'Mensagens deletadas com sucesso!' as msg;
end $

