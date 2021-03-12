drop table if exists respondente;
drop table if exists empresa;
drop table if exists linguagem_programacao;
drop table if exists pais;
drop table if exists sistema_operacional;
drop table if exists resp_usa_linguagem;
drop table if exists ferramenta_comunic;
drop table if exists resp_usa_ferramenta;


create table respondente(
	respondente_id INTEGER PRIMARY KEY NOT NULL,
	contrib_open_source boolean not null,
	programa_hobby boolean not null,
	salario float,
	sistema_operacional_id smallint,
	pais_id smallint,
	empresa_id smallint
);

create table empresa(
	empresa_id smallint Primary Key NOT null,
	tamanho varchar(24)
);
create table pais(
	pais_id smallint primary key not null,
	nome_pais varchar(41)
);

create table sistema_operacional(
	sistema_operacional_id smallint primary key not null,
	nome_sistema_operacional varchar(24)
);

create table linguagem_programacao(
	linguagem_programacao_id smallint primary key not null,
	nome_linguagem_programacao varchar(20)
);

create table resp_usa_linguagem(
	respondente_id smallint  not null,
	linguagem_programacao_id smallint not null
	--momento
);


create table ferramenta_comunic(
	ferramenta_comunic_id smallint primary key not null,
	nome_ferramenta_comunic varchar(25)
);

create table resp_usa_ferramenta(
	respondente_id smallint not null,
	ferramenta_comunic_id smallint not null
);

