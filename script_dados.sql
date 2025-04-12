INSERT INTO CLIENTE VALUES
(1, 'João Silva', '11999999999', 'joao@email.com'),
(2, 'Maria Souza', '11888888888', 'maria@email.com');

INSERT INTO VEICULO VALUES
(1, 1, 'ABC1234', 'Civic', 2015),
(2, 2, 'XYZ9876', 'Corolla', 2018);

INSERT INTO FUNCIONARIO VALUES
(1, 'Carlos Mendes', 'Mecânico'),
(2, 'Ana Paula', 'Atendente');

INSERT INTO PECAS VALUES
(1, 'Filtro de óleo', 50.00, 30),
(2, 'Pastilha de freio', 120.00, 15);

INSERT INTO SERVICO VALUES
(1, 'Troca de óleo', 80.00),
(2, 'Revisão de freios', 150.00);

INSERT INTO ORDEM_SERVICO VALUES
(1, 1, 1, '2024-04-01', '2024-04-03', 'Concluído'),
(2, 2, 1, '2024-04-05', NULL, 'Aberto');

INSERT INTO ORDEM_SERVICO_SERVICO VALUES
(1, 1),
(1, 2),
(2, 2);

INSERT INTO ORDEM_SERVICO_PECA VALUES
(1, 1, 1),
(1, 2, 2),
(2, 2, 1);
