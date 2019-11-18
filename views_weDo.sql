#tecnologias referente às ideias
create view tecnologia_usada as
select i.id_ideia, t.nm_tecnologia
	from tb_tecnologia as t
		join tecnologia_ideia as ti
			on ti.id_tecnologia = t.id_tecnologia
		join tb_ideia as i
			on i.id_ideia = ti.id_ideia;

#participantes de cada ideia
create view membros_ideias as
select u.id_usuario, u.nm_usuario, u.ds_bio, i.id_ideia, p.status_solicitacao, p.idealizador
	from tb_usuario as u
		join participante_ideia as p
			on p.id_usuario = u.id_usuario
		join tb_ideia as i
			on i.id_ideia = p.id_ideia;

#todas as mensagens (ESPECIFICAR SE É CHAT OU COMENTARIO NO USO)
create view mensagens (id_mensagem, id_usuario, nm_usuario, ct_mensagem, hr_mensagem, id_ideia, uso_mensagem) as
	select m.id_mensagem, m.id_usuario, u.nm_usuario, m.ct_mensagem, m.hr_mensagem, i.id_ideia, m.uso_mensagem
		from tb_mensagem as m
			join tb_ideia as i
				on i.id_ideia = m.id_ideia
			join tb_usuario as u
				on u.id_usuario = m.id_usuario;