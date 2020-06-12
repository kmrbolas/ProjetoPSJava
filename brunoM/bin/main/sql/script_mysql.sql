-- CREATE DATABASE PSJava;

USE PSJava;

-- DROP TABLE usuario;

CREATE TABLE usuario (
    id              INT(10) NOT NULL PRIMARY KEY auto_increment,
    nome            VARCHAR(256) NOT NULL,
    email           VARCHAR(256) NOT NULL,
    senha           VARCHAR(256) NOT NULL,
    tipo            INT(10) NOT NULL
);


INSERT INTO usuario (NOME, EMAIL, SENHA, TIPO) VALUES ('Bruno', 'bruno@yahoo.com', '123', 1);
INSERT INTO usuario (NOME, EMAIL, SENHA, TIPO) VALUES ('Weslley', 'weslley@gamil.com', '123', 2);

commit;

SELECT * FROM usuario;
