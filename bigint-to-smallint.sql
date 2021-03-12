select * from empresa
select * from ferramenta_comunic
select * from linguagem_programacao
select * from pais
select * from resp_usa_ferramenta
select * from resp_usa_linguagem
select * from respondente
select * from sistema_operacional

alter table sistema_operacional alter column sistema_operacional_id  type smallint;

--alter table respondente alter columns "id",sistema_operacional_id,pais_id,empresa_id  type smallint;
alter table respondente alter column sistema_operacional_id  type smallint;
alter table respondente alter column pais_id  type smallint;
alter table respondente alter column empresa_id  type smallint;


alter table resp_usa_linguagem alter column id  type smallint ;

alter table resp_usa_ferramenta alter column id  type smallint;

alter table pais alter column pais_id  type smallint;

alter table linguagem_programacao alter column linguagem_programacao_id  type smallint;

alter table ferramenta_comunic alter column ferramenta_comunic_id  type smallint;

