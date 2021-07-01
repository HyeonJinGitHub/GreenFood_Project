-- 생성자 Oracle SQL Developer Data Modeler 20.4.0.374.0801
--   위치:        2021-06-28 15:49:48 KST
--   사이트:      Oracle Database 11g
--   유형:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE article (
    no          NUMBER NOT NULL,
    foodname    CLOB NOT NULL,
    content     CLOB NOT NULL,
    uploaddate  DATE NOT NULL,
    user_no     NUMBER NOT NULL,
    views       NUMBER DEFAULT 0 NOT NULL,
    "LIKE"      NUMBER DEFAULT 0 NOT NULL,
    title       CLOB NOT NULL
);

ALTER TABLE article ADD CONSTRAINT article_pk PRIMARY KEY ( no,
                                                            user_no );

CREATE TABLE "COMMENT" (
    no               NUMBER NOT NULL,
    content          CLOB NOT NULL,
    article_no       NUMBER NOT NULL,
    article_user_no  NUMBER NOT NULL
);

ALTER TABLE "COMMENT" ADD CONSTRAINT comment_pk PRIMARY KEY ( no );

CREATE TABLE foodingredient (
    article_no       NUMBER NOT NULL,
    article_user_no  NUMBER NOT NULL,
    ingredient_no    NUMBER NOT NULL
);

CREATE TABLE ingredient (
    no    NUMBER NOT NULL,
    name  VARCHAR2(20) NOT NULL
);

ALTER TABLE ingredient ADD CONSTRAINT ingredient_pk PRIMARY KEY ( no );

CREATE TABLE tag 
    
    -- No Columns 
;

CREATE TABLE "USER" (
    no        NUMBER NOT NULL,
    id        VARCHAR2(16) NOT NULL,
    name      VARCHAR2(30) NOT NULL,
    password  VARCHAR2(20) NOT NULL
);

ALTER TABLE "USER" ADD CONSTRAINT user_pk PRIMARY KEY ( no );

CREATE TABLE user_article (
    user_no     NUMBER NOT NULL,
    article_no  NUMBER NOT NULL
);

CREATE TABLE video (
    no               NUMBER NOT NULL,
    article_no       NUMBER NOT NULL,
    article_user_no  NUMBER NOT NULL,
    url              VARCHAR2(50) NOT NULL
);

CREATE UNIQUE INDEX video__idx ON
    video (
        article_no
    ASC,
        article_user_no
    ASC );

ALTER TABLE video ADD CONSTRAINT video_pk PRIMARY KEY ( no );

ALTER TABLE article
    ADD CONSTRAINT article_user_fk FOREIGN KEY ( user_no )
        REFERENCES "USER" ( no );

ALTER TABLE "COMMENT"
    ADD CONSTRAINT comment_article_fk FOREIGN KEY ( article_no,
                                                    article_user_no )
        REFERENCES article ( no,
                             user_no );

ALTER TABLE foodingredient
    ADD CONSTRAINT foodingredient_article_fk FOREIGN KEY ( article_no,
                                                           article_user_no )
        REFERENCES article ( no,
                             user_no );

ALTER TABLE foodingredient
    ADD CONSTRAINT foodingredient_ingredient_fk FOREIGN KEY ( ingredient_no )
        REFERENCES ingredient ( no );

ALTER TABLE user_article
    ADD CONSTRAINT user_article_article_fk FOREIGN KEY ( article_no )
        REFERENCES article ( no,
                             user_no );

ALTER TABLE user_article
    ADD CONSTRAINT user_article_user_fk FOREIGN KEY ( user_no )
        REFERENCES "USER" ( no );

ALTER TABLE video
    ADD CONSTRAINT video_article_fk FOREIGN KEY ( article_no,
                                                  article_user_no )
        REFERENCES article ( no,
                             user_no );



-- Oracle SQL Developer Data Modeler 요약 보고서: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             1
-- ALTER TABLE                             12
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
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
-- CREATE SEQUENCE                          0
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
