--1


--Qual a média e o desvio padrão do salário dos 
--usuários que usam Slack para cada tamanho de 
--empresa disponível? (dica: o resultado deve
--ser uma tabela semelhante a apresentada abaixo)
--Qual a quantidade de respondentes de cada país?
select count(id),B.nome_pais from respondente A
INNER JOIN pais B ON A.pais_id = B.pais_id
group by B.nome_pais order by count(id) DESC

--Quantos usuários que moram em “United States” gostam de Windows?

SELECT count(id) as Pessoas
FROM respondente A
INNER JOIN pais B
    on A.pais_id = b.pais_id
INNER JOIN sistema_operacional C
    on A.sistema_operacional_id = C.sistema_operacional_id
	Where C.nome_sistema_operacional='Windows' and B.nome_pais='United States'

--Qual a média de salário dos usuários que moram em Israel e gostam de Linux?
SELECT avg(salario),count(id) as media_salario
FROM respondente A
INNER JOIN pais B
    on A.pais_id = b.pais_id
INNER JOIN sistema_operacional C
    on A.sistema_operacional_id = C.sistema_operacional_id
	Where C.nome_sistema_operacional like '%Linux%'and B.nome_pais='Israel'


select * from empresa
--Qual a média e o desvio padrão do salário dos 
--usuários que usam Slack para cada tamanho de 
--empresa disponível? (dica: o resultado deve
--ser uma tabela semelhante a apresentada abaixo)

drop table if exists media_salario_slack;
CREATE TEMPORARY TABLE media_salario_slack AS 
(
	SELECT distinct(empresa.tamanho)
	,TRUNC(AVG(salario)::numeric,2) as media_salario
	,TRUNC(stddev(salario)::numeric,2) as desvio_p_salario
	from respondente 
	left JOIN empresa 
    on respondente.empresa_id = empresa.empresa_id
	left JOIN resp_usa_ferramenta 
    on respondente.id = resp_usa_ferramenta.id
	left JOIN ferramenta_comunic 
    on resp_usa_ferramenta.ferramenta_comunic_id = ferramenta_comunic.ferramenta_comunic_id
	where ferramenta_comunic.nome_ferramenta_comunic= 'Slack'
	GROUP BY empresa.tamanho
	order by empresa.tamanho ASC
	
);
select * from media_salario_slack;

--Qual a diferença entre a média de salário
--dos respondentes do Brasil que acham 
--que criar código é um hobby
--e a média 
--de todos de salário de TODOS os respondentes brasileiros
--agrupado por cada sistema operacional 
--que eles usam?

drop table if exists media_salario_brasil;
CREATE TEMPORARY TABLE media_salario_brasil AS 
(
	SELECT linguagem_programacao.nome_linguagem_programacao
	,TRUNC(AVG(CASE WHEN respondente.programa_hobby = 'Yes'
	THEN respondente.salario
	else null end)::numeric,2) as media_hobby
	,TRUNC(AVG(respondente.salario)::numeric,2) as media_geral
	,TRUNC(AVG(CASE WHEN respondente.programa_hobby = 'Yes'
	THEN respondente.salario
	else null end)::numeric,2)-
	TRUNC(AVG(respondente.salario)::numeric,2) as diff_media
	from respondente 
	inner JOIN pais 
    on respondente.pais_id = pais.pais_id
	inner JOIN resp_usa_linguagem 
    on respondente.id = resp_usa_linguagem.id
	inner JOIN linguagem_programacao 
    on resp_usa_linguagem.linguagem_programacao_id = linguagem_programacao.linguagem_programacao_id
	where pais.nome_pais like '%Brazil%' 
	group by linguagem_programacao.nome_linguagem_programacao
);
select * from media_salario_brasil;

--Quais são as top 3 tecnologias mais usadas pelos desenvolvedores?
select count(respondente.id)
,linguagem_programacao.nome_linguagem_programacao
from respondente
inner join resp_usa_linguagem
on respondente.id = resp_usa_linguagem.id
inner join linguagem_programacao
on resp_usa_linguagem.linguagem_programacao_id = linguagem_programacao.linguagem_programacao_id
group by linguagem_programacao.nome_linguagem_programacao
order by count(respondente.id) desc
limit 3

--Quais são os top 5 países em questão de salário?
select TRUNC(AVG(respondente.salario)::numeric,2) as media_geral
	   ,pais.nome_pais
from respondente
right join pais
on respondente.pais_id = pais.pais_id
group by pais.nome_pais
order by media_geral desc
limit 5

