SELECT o.id_ordem, c.nome AS cliente, v.modelo, o.status
FROM ORDEM_SERVICO o
JOIN VEICULO v ON o.id_veiculo = v.id_veiculo
JOIN CLIENTE c ON v.id_cliente = c.id_cliente;

SELECT * FROM ORDEM_SERVICO
WHERE status = 'Concluído';

SELECT id_ordem,
       DATEDIFF(data_fechamento, data_abertura) AS dias_execucao
FROM ORDEM_SERVICO
WHERE data_fechamento IS NOT NULL;

SELECT nome, estoque
FROM PECAS
ORDER BY estoque ASC;

SELECT f.nome, COUNT(*) AS total_ordens
FROM FUNCIONARIO f
JOIN ORDEM_SERVICO o ON f.id_funcionario = o.id_funcionario
GROUP BY f.nome
HAVING COUNT(*) > 1;

SELECT o.id_ordem, SUM(s.preco) AS total_servicos
FROM ORDEM_SERVICO o
JOIN ORDEM_SERVICO_SERVICO oss ON o.id_ordem = oss.id_ordem
JOIN SERVICO s ON oss.id_servico = s.id_servico
GROUP BY o.id_ordem;

SELECT o.id_ordem, p.nome, osp.quantidade, (p.preco * osp.quantidade) AS custo_total
FROM ORDEM_SERVICO o
JOIN ORDEM_SERVICO_PECA osp ON o.id_ordem = osp.id_ordem
JOIN PECAS p ON osp.id_peca = p.id_peca;
