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

## Uso de Inteligência Artificial

O desenvolvimento deste projeto contou com o apoio de ferramentas de
Inteligência Artificial (ChatGPT) como auxílio na organização inicial,
estruturação do código e revisão de boas práticas.

Todo o código gerado foi cuidadosamente analisado, validado, ajustado
e testado manualmente pelo desenvolvedor, que foi responsável final
pelas decisões técnicas, regras de negócio e correções necessárias.

A utilização da IA foi tratada como uma ferramenta de produtividade,
não substituindo a análise crítica, o conhecimento técnico e a
responsabilidade humana sobre a solução entregue.


## Configuração do Banco de Dados
1. Criar o banco Firebird 3 (exemplo):

```sql
CREATE DATABASE 'C:\Dados\BANCO.FDB'
USER 'SYSDBA'
PASSWORD 'masterkey'
PAGE_SIZE 16384
DEFAULT CHARACTER SET UTF8;
```
[firebird_nfe_schema.sql](https://github.com/user-attachments/files/25030894/firebird_nfe_schema.sql)
