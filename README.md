# BANCO DE DADOS - QBANK

Este repositório contém o Script SQL do banco de dados para o projeto QBANK. 

# TABELAS DO BANCO DE DADOS

TABELA CLIENTES

- A tabela clientes tem como objetivo e principal funcionalidade, controlar os atributos de cada cliente do Qbank.
- Chave primaria: Id_cliente
- Relacionamento: Um cliente pode ter N contas (1).

TABELA CONTA

- Gerenciamento de contas bancárias, com saldo e dados dos clientes.
- Chave primária: id_conta
- Relacionamento: Uma conta pode realizar N transações (1).

TABELA TRANSACAO

- Armazena as transações realizadas entre contas
- Chave primária: id_transacao
- Relacionamento: Uma transação envolve duas contas (N).

TABELA EMPRESTIMOS

- Armazena informações sobre os empréstimos solicitados pelos clientes.
- Chave primária: id_emprestimo
- Relacionamento: Uma conta pode estar associada a N empréstimos (1).

TABELA CartaoCredito

- Armazena as informações sobre os cartões de crédito solicitados pelos clientes.
- Chave primária: id_cartao
- Relacionamento: Uma conta pode ter N cartões de crédito (1).

TABELA PagamentoServico

- Armazena os pagamentos de serviços realizados pelos clientes.
- Chave primária: id_pagamento
- Relacionamento: Uma conta pode registrar N pagamentos de serviços (1).

# Modelo de Entidade de Relacionamento

![QBank MER](https://github.com/user-attachments/assets/e438b3dd-e95b-4ab0-8a18-b4c198f219b5)
