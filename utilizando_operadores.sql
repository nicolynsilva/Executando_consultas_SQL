--não tem campo vazio NOTNULL
SELECT * FROM HistoricoEmprego
WHERE cargo = 'Professor' 
AND datatermino NOTNULL;

--tem campo vazio ISNULL
SELECT * FROM HistoricoEmprego
WHERE cargo = 'Professor' 
AND datatermino NOTNULL;

---buscar dois dados 
SELECT * FROM HistoricoEmprego
WHERE cargo = 'Oftalmologista' OR cargo = 'Dermatologista';

---buscar mais de dois dados
SELECT * FROM HistoricoEmprego
WHERE cargo not IN ('Oftalmologista','Dermatologista', 'Professor');

---busca dados que tenha a informação 'palavra%' inicio, '%palavra%' no meio, "%palavra' fim.
SELECT * FROM Treinamento
WHERE (curso like 'o DIREITO%' and instituicao = 'da Rocha') 
OR (curso LIKE 'O Conforto%' AND instituicao = 'das Neves');