CREATE TABLE Qbankdb.dbo.CLIENTES (
	id_cliente INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    data_nascimento DATE,
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE CONTA (
    id_conta INT PRIMARY KEY,
    numero_conta VARCHAR(20) NOT NULL,
    tipo_conta VARCHAR(50),
    saldo DECIMAL(15, 2) DEFAULT 0.0,
    data_abertura DATE,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id_cliente)
);

CREATE TABLE TRANSACAO (
    id_transacao INT PRIMARY KEY,
    data_transacao DATE NOT NULL,
    valor DECIMAL(15, 2) NOT NULL,
    tipo_transacao VARCHAR(50),
    id_conta_origem INT,
    id_conta_destino INT,
    FOREIGN KEY (id_conta_origem) REFERENCES CONTA(id_conta),
    FOREIGN KEY (id_conta_destino) REFERENCES CONTA(id_conta)
);

CREATE TABLE EMPRESTIMOS (
    id_emprestimo INT PRIMARY KEY,
    valor_emprestimo DECIMAL(15, 2) NOT NULL,
    data_contratacao DATE,
    data_vencimento DATE,
    juros DECIMAL(5, 2),
    id_conta INT,
    FOREIGN KEY (id_conta) REFERENCES Conta(id_conta)
);

CREATE TABLE CartaoCredito (
    id_cartao INT PRIMARY KEY,
    limite_credito DECIMAL(15, 2),
    data_validade DATE,
    Nmr_Cartao VARCHAR (16),
    cvv VARCHAR(3),
    id_conta INT,
    FOREIGN KEY (id_conta) REFERENCES Conta(id_conta)
);

CREATE TABLE PagamentoServico (
    id_pagamento INT PRIMARY KEY,
    data_pagamento DATE NOT NULL,
    valor DECIMAL(15, 2) NOT NULL,
    descricao_servico VARCHAR(255),
    id_conta INT,
    FOREIGN KEY (id_conta) REFERENCES Conta(id_conta)
);