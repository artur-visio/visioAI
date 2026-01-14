# Cadastro de faces no findface - M

ID: 86aeg3yyn  
Status: to do  
Assignee(s): Esau Bandeira  
Prioridade: —  
List: Sprint 4 (1/12 - 1/25)  

Datas:
- Criado: 2026-01-13
- Atualizado: 2026-01-13
- Due: —

## Descrição
Objetivo
Precisamos casar a CMS com a findface, garantindo que inserções, atualiações e deleções na entidade de face replique fazendo o que for necessário na findface

Fazer tudo que for necessário para inserir no findface, Face e o CardHuman

Vamos usar os mesmos endpoints de facial nossa usando os endpoints existentes
https://api-dev.visio.io/cms/docs#tag/facial
Como
Vamos fazer diretamente na CMS api, sem nenhum serviço adicional para isso
vamos fazer via http service 
Garantir que tudo seja uma transaction, para proteger contra inconsistência
Vamos utilizar o ID da face da CMS api como ID no findface,
Sem colocar nenhum dado pessoal que não seja a foto no findface

Listas
A premissa será 1 lista por organizationID, o nome da lista será o ID da Organização

Documentação
[1] Acessar a documentação da nossa maquina, ver o IP

## Custom Fields
- —
