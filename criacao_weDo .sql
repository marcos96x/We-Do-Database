drop database if exists db_we_do;
create database db_we_do;
use db_we_do;

create table tb_usuario (
	id_usuario int not null auto_increment,
	email_usuario varchar(80) not null,
	senha_usuario varchar(80) not null,
	nm_usuario varchar(80) not null,
	dt_nascimento date not null,
	ds_bio varchar(255),
	tel_usuario varchar(25),
    dt_criacao_conta date not null,
    status_usuario int(1), #0 = precisa verificar email, 1 = email verificado (pode logar), 2 = banido

	constraint pk_usuario
		primary key (id_usuario)
);

create table tb_tecnologia (
	id_tecnologia int not null auto_increment,
	nm_tecnologia varchar(45) not null,
	ds_tecnologia varchar(255) not null,

	constraint pk_tecnologia
		primary key (id_tecnologia)
);

create table tb_denuncia (
	id_denuncia int not null auto_increment,
	desc_denuncia varchar(255) not null,
	id_usuario_acusador int,
	id_usuario_denunciado int,

	constraint pk_denuncia
		primary key (id_denuncia),

	constraint fk_denuncia_autor
		foreign key (id_usuario_acusador)
			references tb_usuario (id_usuario),

	constraint fk_denuncia_acusado
		foreign key (id_usuario_denunciado)
			references tb_usuario (id_usuario)
);

create table tb_ideia (
	id_ideia int not null auto_increment,
	nm_ideia varchar(50) not null,
	ds_ideia varchar(255),
	dt_criacao date not null,
	status_ideia int(1), # 0 = em procura de colaboradores, 1 = em desenvolvimento, 2 = concluida

	constraint pk_ideia
		primary key (id_ideia)
);

create table tecnologia_usuario(
	id_tecnologia int,
	id_usuario int,

	constraint fk_tecnologia_usuario_tecnologia
		foreign key (id_tecnologia)
			references tb_tecnologia(id_tecnologia),

	constraint fk_tecnologia_usuario_usuario
		foreign key(id_usuario)
			references tb_usuario(id_usuario)
);

create table tecnologia_ideia(
	id_tecnologia int,
	id_ideia int,

	constraint fk_tecnologia_ideia_tecnologia
			foreign key(id_tecnologia)
				references tb_tecnologia(id_tecnologia),

	constraint fk_tecnologia_ideia_ideia
		foreign key(id_ideia)
			references tb_ideia(id_ideia)
);

create table participante_ideia(
	id_participacao int auto_increment not null,
	id_usuario int,
	id_ideia int,
	status_solicitacao char(1),
    dt_solicitacao datetime,
    idealizador int(1), #0 para usuario comum, 1 para idealizador 
    
    constraint pk_participante_ideia
		primary key(id_participacao),

	constraint fk_participantes_ideia
		foreign key(id_ideia)
			references tb_ideia(id_ideia),

	constraint fk_participantes_usuario
		foreign key(id_usuario)
			references tb_usuario(id_usuario)
);

create table curtida_ideia(
	id_curtida int not null auto_increment,
	id_ideia int,
	id_usuario int,
    hr_curtida datetime,

	constraint pk_curtida
		primary key(id_curtida),

	constraint fk_curtida_ideia
		foreign key(id_ideia)
			references tb_ideia(id_ideia),

	constraint fk_curtida_usuario
		foreign key(id_usuario)
			references tb_usuario(id_usuario)
);

create table tb_mensagem(
	id_mensagem int not null auto_increment,
	ct_mensagem varchar(800) not null,
	hr_mensagem datetime not null,
	id_usuario int,
    uso_mensagem enum('1', '2'), # 1 para chat, 2 para comentario
    id_ideia int,

	constraint pk_mensagem
		primary key(id_mensagem),

	constraint fk_mensagem_usuario
		foreign key (id_usuario)
			references tb_usuario(id_usuario),
	constraint fk_mensagem_ideia
		foreign key (id_ideia)
			references tb_ideia (id_ideia)
);
# --------------------------------------------
create table tb_tag_ideia(
	id_tag int not null auto_increment,
    nm_tag varchar(30) not null,
    id_ideia int,
    
    constraint pk_tag
		primary key (id_tag),
        
	constraint fk_ideia_tag
		foreign key(id_ideia)
			references tb_ideia(id_ideia)
);
create table tb_mensagens_mortas (
    ct_mensagem varchar(800) not null,
    hr_mensagem datetime,
    id_usuario int not null,
    id_ideia int not null,
    nm_ideia varchar(50)
);

create table tb_adm(
	id_adm int not null auto_increment,
    login_adm varchar(80) not null,
    senha_adm varchar(80) not null,
    nome_adm varchar(80) not null,
    
    constraint pk_adm
		primary key(id_adm)
    
);

create table tb_notificacao(
	id_usuario int,
    id_ideia int,
    id_evento int,
    msg_notificacao varchar(300),
    link_notificacao varchar(300),
    tp_notificacao int(1), #1 pra curtida, 2 pra comentario e 3 pra participacao
    visualizada enum('1', '0'),
    momento_notificacao datetime,
    id_usuario_acao int,
    
    constraint fk_notificacao_usuario
		foreign key (id_usuario)
			references tb_usuario (id_usuario),
	constraint fk_notificacao_ideia
		foreign key (id_ideia)
			references tb_ideia (id_ideia)
);