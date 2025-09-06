-- Tabela: loja
CREATE TABLE loja (
    id_loja SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL
);

-- Tabela: jogo
CREATE TABLE jogo (
    id_jogo SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    ano_lancamento INTEGER NOT NULL,
    genero VARCHAR(100) NOT NULL
);

-- Tabela: cliente
CREATE TABLE cliente (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    cidade VARCHAR(100) NOT NULL
);

-- Tabela: compra
CREATE TABLE compra (
    id_compra SERIAL PRIMARY KEY,
    data_compra DATE NOT NULL,
    id_cliente INTEGER NOT NULL,
    id_loja INTEGER NOT NULL,
    CONSTRAINT fk_compra_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    CONSTRAINT fk_compra_loja FOREIGN KEY (id_loja) REFERENCES loja(id_loja)
);

-- Tabela: compra_jogo (tabela associativa)
CREATE TABLE compra_jogo (
    id_compra INTEGER NOT NULL,
    id_jogo INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    PRIMARY KEY (id_compra, id_jogo),
    CONSTRAINT fk_compra_jogo_compra FOREIGN KEY (id_compra) REFERENCES compra(id_compra),
    CONSTRAINT fk_compra_jogo_jogo FOREIGN KEY (id_jogo) REFERENCES jogo(id_jogo)
);
