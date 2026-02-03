# Decisões Técnicas do Projeto

## Arquitetura
Foi adotada a separação em camadas (DTO, DAO, Controller e Service) para
garantir organização, manutenibilidade e clareza das responsabilidades.

- DTO: modelo puro de dados, sem lógica
- DAO: acesso ao banco de dados via FireDAC
- Controller: regras de negócio e controle do fluxo
- Service: leitura e interpretação do XML

## Parser XML
Optou-se pelo uso do parser nativo do Delphi (IXMLDocument), evitando
dependências externas e facilitando a avaliação do código.

As conversões de datas e valores numéricos foram feitas manualmente,
respeitando o padrão ISO 8601 e o formato decimal do XML da NF-e.

## Chave de Acesso
No XML da NF-e, a chave vem no atributo `infNFe.Id` com prefixo `NFe`.
Foi implementada normalização para armazenar apenas os 44 dígitos
numéricos, conforme o padrão fiscal.

## Controle de Status
Os estados do processamento foram centralizados em constantes:
- NOVO
- PROCESSADO
- ERRO
- PENDENTE_REVISAO
- REPROCESSADO

Isso evita inconsistências e facilita manutenção.

## Eventos e Rastreabilidade
Toda alteração relevante no ciclo de vida do documento gera um evento,
permitindo auditoria e rastreabilidade completa do processamento.

## Reprocessamento
O sistema permite reprocessar documentos com erro ou pendentes,
registrando histórico de status anterior e posterior.

## Convenção de Código
Todo o código Delphi segue convenção de nomenclatura em camel case,
conforme boas práticas e padronização definida no projeto.
