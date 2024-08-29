-------QTD DE CARACTERES DENTRO DE UMA COLUNA (INT)
SELECT 
LENGTH(cpf)qtd,
COUNT(nome)
FROM Colaboradores
where qtd = 11;

--VERIFICAR QTD CPF 'LARGURA' DIFERENTE 
SELECT distinct nome, length(cpf) qtd 
FROM Colaboradores
where qtd <> 11;

------- CONCATENAR DADOS ( CONCAT)
SELECT 
('A pessoa Colaboradora ' || nome || ' de CPF ' || cpf || ' possui o seguinte endereço: ' || endereco) as Texto
FROM Colaboradores;

-------CONCATENAR DADOS ( CONCAT) LOWER minusculo / UPPER maiusculo
SELECT UPPER
('A pessoa Colaboradora ' || nome || ' de CPF ' || cpf || ' possui o seguinte endereço: ' || endereco) as Texto
FROM Colaboradores;
