create database db_velhinho;

use db_velhinho;

create table tb_tipo_evento(
	cd_tipo_evento int not null,
    nm_tipo_evento varchar(255) not null,
    constraint pk_tipo_evento
		primary key (cd_tipo_evento)
);

create table tb_tipo_contato(
	cd_tipo_contato int not null,
    nm_tipo_contato varchar(255) not null,
    constraint pk_tipo_contato
		primary key (cd_tipo_contato)
);

create table tb_logradouro(
	cd_logradouro int not null,
    nm_logradouro varchar(255) not null,
    ds_logradouro text,
    constraint pk_logradouro
		primary key (cd_logradouro)
);

create table tb_usuario(
	cd_usuario int not null,
    nm_usuario varchar(255),
    nm_senha varchar(20),
    nm_email varchar(255),
    constraint pk_usuario
		primary key (cd_usuario)
);

create table tb_preferencia(
	cd_preferencia int not null,
    nm_preferencia varchar(255) not null,
    constraint pk_preferencia
		primary key (cd_preferencia)
);

create table tb_juridico(
	cd_juridico int not null,
    nm_fantasia varchar(255),
    cd_cnpj varchar(14),
    nm_representante varchar(255),
    cd_contato int,
	constraint pk_juridico
		primary key (cd_juridico)
);



create table tb_contato(
	cd_contato int not null,
    nm_contato varchar(255),
    cd_juridico int not null,
    cd_tipo_contato int not null,
    constraint pk_contato
		primary key (cd_contato),
	constraint fk_contato_juridico
		foreign key (cd_juridico)
			references tb_juridico(cd_juridico),
	constraint fk_tipo_contato
		foreign key (cd_tipo_contato)
			references tb_tipo_contato(cd_tipo_contato)
);

create table tb_evento(
	cd_evento int not null,
    nm_evento varchar(255) not null,
    dt_evento datetime not null,
    ds_evento text not null,
    cd_tipo_evento int not null,
    cd_juridico int not null,
    cd_lote int,
    constraint pk_evento
		primary key (cd_evento),
	constraint fk_juridico_evento
		foreign key (cd_juridico)
			references tb_juridico(cd_juridico),
	constraint fk_tipo_evento
		foreign key (cd_tipo_evento)
			references tb_tipo_evento(cd_tipo_evento)
);

create table tb_lote(
	cd_lote int not null,
    vl_lote decimal not null,
    nm_lote varchar(255) not null,
    cd_evento int,
    constraint pk_lote
		primary key (cd_lote),
    constraint fk_lote_evento
		foreign key (cd_evento)
			references tb_evento(cd_evento)
);

create table tb_gosto(
	cd_usuario int not null,
    cd_preferencia int not null,
    constraint fk_preferencia_usuario
		foreign key (cd_usuario)
			references tb_usuario(cd_usuario),
	constraint fk_usuario_preferencia
		foreign key (cd_preferencia)
			references tb_preferencia(cd_preferencia)
);

create table tb_logradouro_evento(
	cd_logradouro int not null,
    cd_evento int not null,
    constraint fk_evento_logradouro
		foreign key (cd_logradouro)
			references tb_logradouro(cd_logradouro),
	constraint fk_logradouro_evento
		foreign key (cd_evento)
			references tb_evento(cd_evento)
);

create table tb_preferencia_evento(
	cd_evento int not null,
    cd_preferencia int not null,
    constraint fk_preferencia_evento
		foreign key (cd_preferencia)
			references tb_preferencia(cd_preferencia),
	constraint fk_evento_preferencia
		foreign key (cd_preferencia)
			references tb_preferencia(cd_preferencia)
);


INSERT INTO tb_tipo_evento VALUES 
(1,'privado'),
(2,'publico');

INSERT INTO tb_preferencia VALUES
(1,'Viagens'),
(2,'Teatro'),
(3,'Shows'),
(4,'Bingo'),
(5,'Encontros'),
(6,'Bazar'),
(7,'Caminhada Guiada'),
(8,'Competição Esportiva'),
(9,'Congresso'),
(10,'Corrida'),
(11,'Inauguração'),
(12,'Exposição'),
(13,'Comício'),
(14,'Comédia Stand-Up'),
(15,'Cabaré'),
(16,'Arte Performática Artística'),
(17,'Cultural'),
(18,'Cursos Livres'),
(19,'Discoteca'),
(20,'Evento Religioso'),
(21,'Feira de Negócios'),
(22,'Feira Gastronômica'),
(23,'Festa Beneficente'),
(24,'Festivais'),
(25,'Hackathon'),
(26,'Improvisação '),
(27,'Leilão'),
(28,'Networking'),
(29,'Projeção Cinematográfica'),
(30,'Sarau'),
(31,'Seminário'),
(32,'Sessão de Autógrafos'),
(33,'Torneio'),
(34,'Show de Talentos'),
(35,'Sessão de Degustação'),
(36,'Feira de Consumidores'),
(37,'Voluntariado');

INSERT INTO tb_tipo_contato VALUES 
(1,'E-mail'),
(2,'Telefone celular'),
(3,'Telefone fixo'),
(4,'Telefone comercial'),
(5,'Fax');