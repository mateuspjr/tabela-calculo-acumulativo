drop database if exists dbprod;
CREAT database dbprod;
USE dbprod;

CREATE TABLE PRODUTOS (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    ds_prod VARCHAR(500) NOT NULL,
    vlr_compra DECIMAL(10,2) NOT NULL,
    vl_venda DECIMAL(10,2) AS (vlr_compra * 1.2) STORED,
    CONSTRAINT pk_produtos PRIMARY KEY (id)
);

INSERT INTO PRODUTOS (nome, ds_prod, vlr_compra) VALUES ('água mineral garrafa','produto livre', 3.99);
INSERT INTO PRODUTOS (nome, ds_prod, vlr_compra) VALUES ('refrigerante', 'produto livre', 4.89);
INSERT INTO PRODUTOS (nome, ds_prod, vlr_compra) VALUES ('salgadinho saq/peq', 'produto prateleira', 2.99);
INSERT INTO PRODUTOS (nome, ds_prod, vlr_compra) VALUES ('energetico 500ml', 'produto prateleira', 6.99);

select * from produtos;

select concat (nome, ' - ', ds_prod) as 'PRODUTOS' from produtos;

select * from produtos;

update PRODUTOS set vlr_compra = 6 where id = 1;

select * from produtos;
