---saber o maior valor
SELECT
mes,
MAX(faturamento_bruto)
FROM faturamento;

---saber o menor valor
SELECT
mes,
MIN(faturamento_bruto)
FROM faturamento;

---saber a soma
SELECT 
SUM(numero_novos_clientes) AS 'NovosClientes2023' 
FROM faturamento

---saber a soma especifica de um ano
SELECT 
SUM(numero_novos_clientes) AS NovosClientes2023
FROM faturamento
where mes LIKE '%2023';

--saber quantidade com data termino indicada ( desempregados)
SELECT COUNT(*) FROM HistoricoEmprego
WHERE datatermino NOTNULL;

----trazer os valores da coluna
SELECT parentesco
FROM Dependentes
group by parentesco;

----trazer a quantidade de cada valor da coluna
SELECT parentesco,
COUNT(*)
FROM Dependentes
group by parentesco;

---(HAVING - condicação para registro agrupados )
---(WHERE - condição para registro único)

----trazer qts de curso cada instituição teve com a condição de mairo q 2 cursos
SELECT instituicao,
COUNt (curso)
FROM Treinamento
GROUP by instituicao
HAVING COUNT(curso) > 2;

----quantidade de colaboradores tem cada cargo, condição maior ou igual a dois.
SELECT cargo,
COUNT(*) QTD
FROM HistoricoEmprego
GROUP BY cargo
HAVING QTD >=2;