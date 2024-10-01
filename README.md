# terraform-db-fase-3
Tech Challenge Fase 3 Terraform Database

## Justificativa escolha PostgreSQL

A opção pela escolha do banco de dados relacional PostgreSQL se deu principalmente pelos seguintes pontos:

1. *Robustez e Comunidade*: Banco de dados consagrado no mercado, conhecido por sua eficiência, velocidade e escalabilidade. Com uma comunidade ativa nos permitindo ter acesso a mais informações sobre configurações e melhorias de performance.
2. *Relacionamento e SQL*: Por ser um banco de dados relacional ele permite ter um relacionamento forte entre os registros mantendo a integridade dos dados através das chaves e constraints. Nossa modelagem de dados tirou proveito dessas características, o que nos proporcionou a possiblidade de escrevermos consultas eficientes e flexíveis através do suporte da linguagem SQL.
3. *Versatilidade para dados não estruturados*: O PostgreSQL apesar de ser um banco de dados relacional, ele também permite guardar informações em formato não estruturado, como o JSON. Utilizamos essa funcionalidade no cadastro de um novo pedido copiando as informações dos ingredientes para dentro de um JSON na tabela do pedido. Dessa forma, conseguimos manter um histórico daquilo que foi produzido, independentemente do cadastro de ingredientes. Essa abordagem nos permitiu diminuir o número de dependências externas do projeto, não dependendo de outra base de dados para guardar essas informações, já que nossa API no momento se trata de um monolito.
