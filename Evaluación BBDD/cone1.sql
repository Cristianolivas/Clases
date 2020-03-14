-- Generado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   en:        2020-03-13 19:54:53 CST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE alternativas (
    respuestas_respuestas_id  NUMBER NOT NULL,
    preguntas_preguntas_id    NUMBER NOT NULL,
    descripcion               VARCHAR2(50),
    valor_logico              VARCHAR2(50),
    porcentaje                VARCHAR2(50)
);

CREATE TABLE curso (
    curso_id      NUMBER NOT NULL,
    test_test_id  NUMBER NOT NULL,
    programa      VARCHAR2(50)
);

ALTER TABLE curso ADD CONSTRAINT curso_pk PRIMARY KEY ( curso_id );

CREATE TABLE estudiantes (
    curso_curso_id  NUMBER NOT NULL,
    nombre          VARCHAR2(50),
    apellido        VARCHAR2(50),
    rut             INTEGER
);

CREATE TABLE preguntas (
    preguntas_id  NUMBER NOT NULL,
    test_test_id  NUMBER NOT NULL,
    enunciado     VARCHAR2(50),
    puntaje       VARCHAR2(50)
);

ALTER TABLE preguntas ADD CONSTRAINT preguntas_pk PRIMARY KEY ( preguntas_id );

CREATE TABLE respuestas (
    respuestas_id  NUMBER NOT NULL,
    resultado      VARCHAR2(50)
);

ALTER TABLE respuestas ADD CONSTRAINT respuestas_pk PRIMARY KEY ( respuestas_id );

CREATE TABLE test (
    test_id         NUMBER NOT NULL,
    nombre          VARCHAR2(50),
    descripcion     VARCHAR2(50),
    programa        VARCHAR2(50),
    unidad          VARCHAR2(50),
    autor           VARCHAR2(50),
    fecha_creacion  VARCHAR2(10)
);

ALTER TABLE test ADD CONSTRAINT test_pk PRIMARY KEY ( test_id );

ALTER TABLE alternativas
    ADD CONSTRAINT alternativas_preguntas_fk FOREIGN KEY ( preguntas_preguntas_id )
        REFERENCES preguntas ( preguntas_id );

ALTER TABLE alternativas
    ADD CONSTRAINT alternativas_respuestas_fk FOREIGN KEY ( respuestas_respuestas_id )
        REFERENCES respuestas ( respuestas_id );

ALTER TABLE curso
    ADD CONSTRAINT curso_test_fk FOREIGN KEY ( test_test_id )
        REFERENCES test ( test_id );

ALTER TABLE estudiantes
    ADD CONSTRAINT estudiantes_curso_fk FOREIGN KEY ( curso_curso_id )
        REFERENCES curso ( curso_id );

ALTER TABLE preguntas
    ADD CONSTRAINT preguntas_test_fk FOREIGN KEY ( test_test_id )
        REFERENCES test ( test_id );

CREATE SEQUENCE curso_curso_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER curso_curso_id_trg BEFORE
    INSERT ON curso
    FOR EACH ROW
    WHEN ( new.curso_id IS NULL )
BEGIN
    :new.curso_id := curso_curso_id_seq.nextval;
END;
/

CREATE SEQUENCE estudiantes_rut_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER estudiantes_rut_trg BEFORE
    INSERT ON estudiantes
    FOR EACH ROW
    WHEN ( new.rut IS NULL )
BEGIN
    :new.rut := estudiantes_rut_seq.nextval;
END;
/

CREATE SEQUENCE preguntas_preguntas_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER preguntas_preguntas_id_trg BEFORE
    INSERT ON preguntas
    FOR EACH ROW
    WHEN ( new.preguntas_id IS NULL )
BEGIN
    :new.preguntas_id := preguntas_preguntas_id_seq.nextval;
END;
/

CREATE SEQUENCE preguntas_enunciado_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER preguntas_enunciado_trg BEFORE
    INSERT ON preguntas
    FOR EACH ROW
    WHEN ( new.enunciado IS NULL )
BEGIN
    :new.enunciado := preguntas_enunciado_seq.nextval;
END;
/

CREATE SEQUENCE preguntas_puntaje_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER preguntas_puntaje_trg BEFORE
    INSERT ON preguntas
    FOR EACH ROW
    WHEN ( new.puntaje IS NULL )
BEGIN
    :new.puntaje := preguntas_puntaje_seq.nextval;
END;
/

CREATE SEQUENCE respuestas_respuestas_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER respuestas_respuestas_id_trg BEFORE
    INSERT ON respuestas
    FOR EACH ROW
    WHEN ( new.respuestas_id IS NULL )
BEGIN
    :new.respuestas_id := respuestas_respuestas_id_seq.nextval;
END;
/

CREATE SEQUENCE test_test_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER test_test_id_trg BEFORE
    INSERT ON test
    FOR EACH ROW
    WHEN ( new.test_id IS NULL )
BEGIN
    :new.test_id := test_test_id_seq.nextval;
END;
/



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             0
-- ALTER TABLE                              9
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           7
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          7
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0