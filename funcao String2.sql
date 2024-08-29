----separar data %Yano, %mmes, %ddia
SELECT 
id_colaborador, 
STRFTIME('%Y/%m', datainicio)
FROM Licencas;

----trazer intervalo de tempo/dias
---(os dias que foi contratado até o termino do contrato por colaborador)
---ordenado por mais tempo
---data fim sempre antes da primeira data
SELECT 
id_colaborador,
JULIANDAY (datatermino) - JULIANDAY (datacontratacao) as intervalo
FROM HistoricoEmprego
WHERE datatermino NOTNULL
order by intervalo DESC;