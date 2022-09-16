-- Listar OS Finalizado por ordem data emissao
SELECT * FROM os WHERE status = 'Finalizado'
ORDER BY data_emissao;

-- Listar a quantidade de OS por tipo e não Finalizado
SELECT tipo_os,count(*) FROM os WHERE status != 'Finalizado'
GROUP BY tipo_os;

-- Lista Equipe que possui mais de uma OS sem data de conclusão
SELECT e.nome_equipe,count(*) FROM os 
INNER JOIN equipe e ON os.equipe_idequipe = e.idequipe
WHERE os.data_conclusao IS NULL
GROUP BY e.nome_equipe
HAVING count(*) > 1;


-- Lista Veiculos e a quantidade de OS
SELECT 
v.placa,v.fabricante,v.modelo,v.cor,
c.nome as cliente,
(SELECT COUNT(*) FROM os WHERE os.veiculo_idveiculo = v.idveiculo) as total_os
FROM veiculo v
INNER JOIN cliente c on v.cliente_idcliente = c.idcliente;