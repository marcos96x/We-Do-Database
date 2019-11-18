delimiter $
create trigger trDeleta_ideia_usuario
	before delete on tb_ideia
    for each row
    begin
		delete from tb_tag_ideia where id_ideia = old.id_ideia;
		delete from tecnologia_ideia where id_ideia = old.id_ideia;
		delete from tb_mensagem where id_ideia = old.id_ideia;
        delete from curtida_ideia where id_ideia = old.id_ideia;
        delete from tb_notificacao where id_ideia = old.id_ideia;
    end$