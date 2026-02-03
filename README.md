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
CREATE DATABASE 'C:\Dados\TESTE_NFE.FDB'
USER 'SYSDBA'
PASSWORD 'masterkey'
PAGE_SIZE 16384
DEFAULT CHARACTER SET UTF8;
