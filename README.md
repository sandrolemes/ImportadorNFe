# ImportadorNFe
Importação de XML de NF-e

## Descrição
Projeto desenvolvido como teste técnico para importação de XML de NF-e,
simulando um mini processo de integração ERP, com controle de estados,
rastreabilidade e reprocessamento.

## Tecnologias Utilizadas
- Delphi Alexandria (VCL)
- Firebird 3
- FireDAC
- Parser XML nativo (IXMLDocument)

## Estrutura do Projeto
- dto: modelos de dados (DTO)
- dao: acesso a dados (FireDAC)
- controller: regras de negócio e fluxo
- service: leitura e interpretação do XML NF-e
- view: interface VCL

## Configuração do Banco de Dados
1. Criar o banco Firebird 3 (exemplo):

```sql
CREATE DATABASE 'C:\Dados\BANCO.FDB'
USER 'SYSDBA'
PASSWORD 'masterkey'
PAGE_SIZE 16384
DEFAULT CHARACTER SET UTF8;

[firebird_nfe_schema.sql](https://github.com/user-attachments/files/25030894/firebird_nfe_schema.sql)

-- Firebird 3.x compatible database creation script
-- Charset UTF8

-- =========================
-- SEQUENCES
-- =========================
CREATE SEQUENCE GEN_DOCUMENTO_NFE;
CREATE SEQUENCE GEN_DOCUMENTO_NFE_ITEM;
CREATE SEQUENCE GEN_DOCUMENTO_EVENTO;

-- =========================
-- DOCUMENTO_NFE
-- =========================
CREATE TABLE DOCUMENTO_NFE (
  ID_DOCUMENTO       INTEGER NOT NULL,
  CHAVE_ACESSO       VARCHAR(44),
  NUMERO             VARCHAR(12),
  SERIE              VARCHAR(5),
  DT_EMISSAO         TIMESTAMP,
  EMIT_CNPJ_CPF      VARCHAR(14),
  EMIT_RAZAO         VARCHAR(120),
  DEST_CNPJ_CPF      VARCHAR(14),
  DEST_RAZAO         VARCHAR(120),
  VL_TOTAL           DECIMAL(15,2),
  STATUS_PROC        VARCHAR(20) NOT NULL,
  MSG_STATUS         VARCHAR(255),
  ARQUIVO_NOME       VARCHAR(200),
  XML_CONTEUDO       BLOB SUB_TYPE TEXT,
  DT_IMPORTACAO      TIMESTAMP NOT NULL,
  CONSTRAINT PK_DOCUMENTO_NFE PRIMARY KEY (ID_DOCUMENTO)
);

CREATE UNIQUE INDEX UX_DOC_CHAVE
  ON DOCUMENTO_NFE (CHAVE_ACESSO);

-- =========================
-- DOCUMENTO_NFE_ITEM
-- =========================
CREATE TABLE DOCUMENTO_NFE_ITEM (
  ID_ITEM            INTEGER NOT NULL,
  ID_DOCUMENTO       INTEGER NOT NULL,
  ITEM               INTEGER NOT NULL,
  DESCRICAO          VARCHAR(160) NOT NULL,
  NCM                VARCHAR(8),
  QUANTIDADE         DECIMAL(15,4) NOT NULL,
  VL_UNITARIO        DECIMAL(15,2) NOT NULL,
  VL_TOTAL           DECIMAL(15,2) NOT NULL,
  CONSTRAINT PK_DOCUMENTO_NFE_ITEM PRIMARY KEY (ID_ITEM),
  CONSTRAINT FK_ITEM_DOC FOREIGN KEY (ID_DOCUMENTO)
    REFERENCES DOCUMENTO_NFE (ID_DOCUMENTO)
);

CREATE UNIQUE INDEX UX_ITEM_DOC
  ON DOCUMENTO_NFE_ITEM (ID_DOCUMENTO, ITEM);

-- =========================
-- DOCUMENTO_EVENTO
-- =========================
CREATE TABLE DOCUMENTO_EVENTO (
  ID_EVENTO          INTEGER NOT NULL,
  ID_DOCUMENTO       INTEGER NOT NULL,
  DT_EVENTO          TIMESTAMP NOT NULL,
  TIPO_EVENTO        VARCHAR(30) NOT NULL,
  STATUS_ANTES       VARCHAR(20),
  STATUS_DEPOIS      VARCHAR(20) NOT NULL,
  MENSAGEM           VARCHAR(255),
  DETALHE            VARCHAR(2000),
  USUARIO            VARCHAR(60) NOT NULL,
  CONSTRAINT PK_DOCUMENTO_EVENTO PRIMARY KEY (ID_EVENTO),
  CONSTRAINT FK_EVT_DOC FOREIGN KEY (ID_DOCUMENTO)
    REFERENCES DOCUMENTO_NFE (ID_DOCUMENTO)
);
