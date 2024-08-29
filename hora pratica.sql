
----Selecione os primeiros 5 registros da tabela clientes, ordenando-os pelo nome em ordem crescente.
SELECT * FROM Clientes
ORDER BY nome DESC
LIMIT 5;

----Encontre todos os produtos na tabela produtos que não têm uma descrição associada (suponha que a coluna de descrição possa ser nula).
SELECT * FROM produtos
WHERE descricao isNULL

---Liste os funcionários cujo nome começa com 'A' e termina com 's' na tabela funcionarios.
SELECT * From Colaboradores
where nome like 'A%s';

----média salario por departamento acima de 5000.
SELECT
Cargo,
ROUND (AVG(salario),2) AS salario_média
from CargosColaboradores
GROUP by cargo 
HAVING salario_média > 5000;

----concat nome e a quantidade de letras do nome
SELECT 
(' A pessoa ' || Nome || ' de CPF ' || CPF) AS NomeCompleto,
LENGTH(nome) as qtd_caract_nome
FROM Colaboradores;

----trazer datas de inicio e fim e a diferença da quantidade de dias.
SELECT
id_colaborador,
datacontratacao,
datatermino,
JULIANDAY (datatermino) - JULIANDAY (datacontratacao) as intervalo
FROM CargosColaboradores
where datatermino IS not NULL

----arrendondar o preço total para numero inteiro maior
SELECT 
mes,
faturamento_bruto,
CEIL(faturamento_bruto) AS valor_ajustado
FROM faturamento

----alterar tipo string para DATE
SELECT * FROM eventos
WHERE CAST(data_string AS DATE) > '2023-01-01';

----classifique cada avaliação como 'Boa', 'Média', ou 'Ruim' 
SELECT
  WHEN pontuacao BETWEEN 1 AND 3 THEN 'RUIM'
  WHEN pontuacao BETWEEN 4 AND 7 THEN 'MÉDIO'
  WHEN pontuacao BETWEEN 8 AND 10 THEN 'BOA'
FROM avaliacoes

---alterar nomenclatura da coluna da tabela e trazer somente nascidos após 1990
ALTER TABLE colaboradores RENAME COLUMN datanascimento TO data_nascimento;

SELECT * FROM Colaboradores
where data_nascimento > '1990%';