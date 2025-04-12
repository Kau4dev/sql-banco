CREATE TABLE CLIENTE (
  id_cliente INT PRIMARY KEY,
  nome VARCHAR(100),
  telefone VARCHAR(20),
  email VARCHAR(100)
);

CREATE TABLE VEICULO (
  id_veiculo INT PRIMARY KEY,
  id_cliente INT,
  placa VARCHAR(10),
  modelo VARCHAR(50),
  ano INT,
  FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);

CREATE TABLE FUNCIONARIO (
  id_funcionario INT PRIMARY KEY,
  nome VARCHAR(100),
  cargo VARCHAR(50)
);

CREATE TABLE PECAS (
  id_peca INT PRIMARY KEY,
  nome VARCHAR(100),
  preco DECIMAL(10,2),
  estoque INT
);

CREATE TABLE SERVICO (
  id_servico INT PRIMARY KEY,
  descricao VARCHAR(200),
  preco DECIMAL(10,2)
);

CREATE TABLE ORDEM_SERVICO (
  id_ordem INT PRIMARY KEY,
  id_veiculo INT,
  id_funcionario INT,
  data_abertura DATE,
  data_fechamento DATE,
  status VARCHAR(20),
  FOREIGN KEY (id_veiculo) REFERENCES VEICULO(id_veiculo),
  FOREIGN KEY (id_funcionario) REFERENCES FUNCIONARIO(id_funcionario)
);

CREATE TABLE ORDEM_SERVICO_SERVICO (
  id_ordem INT,
  id_servico INT,
  PRIMARY KEY (id_ordem, id_servico),
  FOREIGN KEY (id_ordem) REFERENCES ORDEM_SERVICO(id_ordem),
  FOREIGN KEY (id_servico) REFERENCES SERVICO(id_servico)
);

CREATE TABLE ORDEM_SERVICO_PECA (
  id_ordem INT,
  id_peca INT,
  quantidade INT,
  PRIMARY KEY (id_ordem, id_peca),
  FOREIGN KEY (id_ordem) REFERENCES ORDEM_SERVICO(id_ordem),
  FOREIGN KEY (id_peca) REFERENCES PECAS(id_peca)
);
