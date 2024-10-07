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
- ASD
- AS

TABELA EMPRESTIMOS

- Armazena informações sobre os empréstimos solicitados pelos clientes.
- ASDA
- ASD

TABELA Cartao_Credito

- Armazena as informações sobre os cartões de crédito solicitados pelos clientes.
- as
- as

TABELA PagamentoServico

- Armazena os pagamentos de serviços realizados pelos clientes.
-asd
- asda

# Modelo de Entidade de Relacionamento

![QBank MER](https://github.com/user-attachments/assets/e438b3dd-e95b-4ab0-8a18-b4c198f219b5)
