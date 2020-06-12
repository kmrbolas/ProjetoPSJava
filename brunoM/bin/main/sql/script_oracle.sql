DROP TABLE usuario;
DROP SEQUENCE usuario_seq;

CREATE TABLE usuario (
    id              NUMBER(10) NOT NULL PRIMARY KEY,
    nome            VARCHAR2(256) NOT NULL,
    email           VARCHAR2(256) NOT NULL,
    senha           VARCHAR2(256) NOT NULL,
    tipo            NUMBER(10) NOT NULL
);

CREATE SEQUENCE usuario_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER tr_insert_id
BEFORE INSERT ON usuario FOR EACH ROW       
BEGIN
SELECT USUARIO_SEQ.NEXTVAL
INTO :new.id
FROM DUAL;
END;
/

INSERT INTO usuario ()NOME, EMAIL, SENHA, TIPO) VALUES ('Bruno', 'bruno@yahoo.com', '123', 1);
INSERT INTO usuario (NOME, EMAIL, SENHA, TIPO) VALUES ('Weslley', 'weslley@gamil.com', '123', 2);

commit;

SELECT * FROM usuario;
