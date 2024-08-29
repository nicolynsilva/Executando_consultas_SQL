---arredondar valores numericos MÉDIA
SELECT AVG(faturamento_bruto) AS TOTAL,
ROUND (AVG(faturamento_bruto),2)
FROM faturamento;

---arredonda o número para o menor inteiro maior ou igual ao número dado
SELECT CEIL(faturamento_bruto),
CEIL(despesas)
FROM faturamento;

---arredonda o número para o maior inteiro menor ou igual ao número dado
SELECT FLOOR(faturamento_bruto),
FLOOR(despesas)
FROM faturamento;

----juntar texto com dados CAST
SELECT 
(' O Faturamento bruto médio foi ' || CAST(ROUND (AVG(faturamento_bruto),2) AS TEXT))
from faturamento;


