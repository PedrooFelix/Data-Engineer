# Data-Engineer
Challenge Data Engineer - Python - SQL 

# Context
Each year, we at Stack Overflow ask the developer community about everything from their favorite technologies to their job preferences. This year marks the eighth year we’ve published our Annual Developer Survey results—with the largest number of respondents yet. Over 100,000 developers took the 30-minute survey in January 2018.

This year, we covered a few new topics ranging from artificial intelligence to ethics in coding. We also found that underrepresented groups in tech responded to our survey at even lower rates than we would expect from their participation in the workforce. Want to dive into the results yourself and see what you can learn about salaries or machine learning or diversity in tech? We look forward to seeing what you find!

# Content
This 2018 Developer Survey results are organized on Kaggle in two tables:

surveyresultspublic contains the main survey results, one respondent per row and one column per question

surveyresultsschema contains each column name from the main results along with the question text corresponding to that column

There are 98,855 responses in this public data release. These responses are what we consider “qualified” for analytical purposes based on completion and time spent on the survey and included at least one non-PII question. Approximately 20,000 responses were started but not included here because respondents did not answer enough questions, or only answered questions with personally identifying information. Of the qualified responses, 67,441 completed the entire survey.

# Acknowledgements
Massive, heartfelt thanks to all Stack Overflow contributors and lurking developers of the world who took part in the survey this year. We value your generous participation more than you know.

# Inspiration
At Stack Overflow, we put developers first and want all developers to feel welcome and included on our site. Can we use our annual survey to understand what kinds of users are less likely to identify as part of our community, participate, or feel kinship with fellow developers? Check out our blog post for more details.

# Desafio em Portugês:

# Regras de negócio

Salário vazio ou com valor “NA” deve ser convertido para zero (0.0).
Salário deve ser sempre calculado em reais e mensal. Para esse cálculo você usará a coluna ConvertedSalary, que contém o salário anual. Considere que 1 dólar equivale a R$3,81.
O nome dos respondentes deve seguir a regra respondente_[número] . (ex: respondente_1, respondente_2, respondente_3). O critério de geração desse número é todo seu.
Cada linha da tabela linguagem_programacao deve conter uma única linguagem de programação.
Cada linha da tabela ferramenta_comunic deve conter apenas uma ferramenta de comunicação.

# QUERIES SQL
Qual a quantidade de respondentes de cada país?
Quantos usuários que moram em “United States” gostam de Windows?
Qual a média de salário dos usuários que moram em Israel e gostam de Linux?
Qual a média e o desvio padrão do salário dos usuários que usam Slack para cada tamanho de empresa disponível? (dica: o resultado deve ser uma tabela semelhante a apresentada abaixo)
-imagem no pdf

Quais são as top 3 tecnologias mais usadas pelos desenvolvedores?
Quais são os top 5 países em questão de salário?
A tabela abaixo contém os salários mínimos mensais de cinco países presentes na amostra de dados. Baseado nesses valores, gostaríamos de saber quantos usuários ganham mais de 5 salários mínimos em cada um desses países.
-imagem no pdf

O que esperamos ver ao final?

Nosso time está curioso para ver o seu projeto. Esperamos que seu entregável final contenha os seguintes ítens:

1. Um arquivo de introdução nos explicando a visão geral do seu projeto e quais tecnologias utilizou (ex: PostgreSQL 9.6).

2. Um arquivo contendo as respostas das questões que fizemos acima.

3. As consultas SQL que você realizou no banco para responder as perguntas.

4. Os arquivos com o seu código utilizado para ler os arquivos textos e publicar os dados no banco.

Caso você tenha dificuldade de finalizar o seu projeto, nós encorajamos fortemente que nos envie a sua evolução (consultas SQL, código, descrição de como resolveria o problema, etc.).
