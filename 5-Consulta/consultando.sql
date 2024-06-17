SELECT * 
FROM Veiculo 
WHERE CPF = '10987654321';


SELECT * 
FROM Proprietario 
WHERE Nome LIKE '%Maria%';


SELECT * 
FROM Infracao i
JOIN Veiculo v ON i.Placa = v.Placa
WHERE i.Data_hora BETWEEN '2023-05-01 00:00:00' AND '2023-06-30 23:59:59';

SELECT ModeloID, COUNT(*) AS NumeroDeVeiculos
FROM Veiculo
GROUP BY ModeloID
ORDER BY COUNT(*) DESC;
