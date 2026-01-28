# Criação do Permissionamento

ID: 86aetebgq
Custom ID: TECH-198
Status: to do
Assignee(s): —
Prioridade: high
List: Sprint 5 (1/26 - 2/8)

Datas:
- Criado: 2026-01-24
- Atualizado: 2026-01-26
- Due: —

## Descrição
*   Teremos permissões individuais no usuário e perfil de usuário
*   As permissões serão armazenadas em Json
*   O usuário poderá ter no máximo um perfil
*   O usuário poderá ter além do perfil dele as permissões adicionais
    *   As permissões adicionais deveria permitir **Adicionar** pemissões e também **Remover** permissões do usuário em específico caso necessário
*   A granularidade das permissões será a nível de negócio (ex: Acesso a busca por foto)
*   Criar um middleware/classe para carregar e validar permissão, utilizando o middleware em cada endpoint
    *   Printar um log
    *   Inicialmente colocaremos uma linguagem mais tech, logando a request inteira e a ação do usuário, endpoint e method
*   Para o front sempre retornaremos todas as permissões, true ou false,

[@Artur Antunes](#user_mention#260551329) Precisa pensar nas permissões iniciais para já setarmos

### Implementação
*   Revisar as tabelas de roles, permissions e tudo mais que foi criado inicialemnte
    *   Se necessário remover as tabelas desnecessárias ou atualizar e renomear, podemos desconsiderar tudo que ja existe, se for o caso

## Custom Fields
- Versão: 0
- Módulo/Épico: 3
