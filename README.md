# Projeto Banco de Dados - Oficina Mecânica

## 📌 Descrição

Este projeto implementa o modelo lógico e físico de um banco de dados para uma oficina mecânica. O sistema gerencia informações sobre clientes, veículos, funcionários, serviços prestados, peças utilizadas e ordens de serviço. A proposta é simular um ambiente real com operações básicas e complexas de SQL.

## 🧩 Modelo Lógico

**Tabelas:**
- CLIENTE
- VEICULO
- FUNCIONARIO
- PECAS
- SERVICO
- ORDEM_SERVICO
- ORDEM_SERVICO_SERVICO
- ORDEM_SERVICO_PECA

As tabelas seguem as regras de normalização e incluem integridade referencial com chaves estrangeiras.

## 📊 Queries SQL

As queries demonstram:
- Seleções simples (SELECT)
- Filtros (WHERE)
- Atributos derivados (ex: tempo de execução do serviço)
- Ordenação (ORDER BY)
- Agrupamentos com condições (GROUP BY + HAVING)
- Junções entre múltiplas tabelas

## 🗂 Arquivos

- script_criacao.sql – Criação do esquema do banco
- script_dados.sql – Inserção de dados para teste
- queries.sql – Consultas SQL complexas

## ✅ Autor

Projeto desenvolvido como parte de desafio de modelagem de banco de dados.
