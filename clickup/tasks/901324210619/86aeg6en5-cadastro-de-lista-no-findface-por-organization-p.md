# Cadastro de lista no findface por Organization - P

ID: 86aeg6en5  
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
Precisamos casar a CMS com a findface, garantindo que inserções, atualiações e deleções na entidade de Organization replique fazendo o que for necessário na findface
 
Vamos usar os mesmos endpoints de Organization nossa usando os endpoints existentes  
Como
Vamos fazer diretamente na CMS api, sem nenhum serviço adicional para isso
vamos fazer via http service 
Garantir que tudo seja uma transaction, para proteger contra inconsistência
Vamos utilizar o ID da Organization da CMS api como nome da Lista no Findface
 
Listas
A premissa será 1 lista por organizationID, o nome da lista será o ID da Organização
 
Documentação
[1] Acessar a documentação da nossa maquina, ver o IP

## Custom Fields
- —
