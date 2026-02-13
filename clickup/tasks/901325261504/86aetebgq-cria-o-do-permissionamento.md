# Criação do Permissionamento

ID: 86aetebgq
Custom ID: TECH-198
Status: review
Assignee(s): Felipe Nogueira Gaudio
Prioridade: —
List: Sprint 6 (2/9 - 2/22)

Datas:
- Criado: 2026-01-24
- Atualizado: 2026-02-09
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

Cameras
\-Acesso total ao módulo
\-Apenas aovivo ou Aovivo e gravações (n sei que copy usar)
\-Solicitar manutenção
\-Fazer download de gravação (ainda n temos)

Facial
\-Acesso total ao módulo
\-Eventos e Alertas
\-Gerenciar pessoas cadastradas

LPR
\-Acesso total ao módulo
\-Eventos e Alertas
\-Gerenciar placas cadastradas

Configurações
\-Cadastro e Edição de usuário
\-Perfil de usuário
\-Gerenciar grupo de cameras (ainda n temos)
\-Gerenciar Órgãos/Unidades

Outras configs/módulos
\-Acesso ao módulo de Logs (ainda n temos)

### Implementação
*   Revisar as tabelas de roles, permissions e tudo mais que foi criado inicialemnte
    *   Se necessário remover as tabelas desnecessárias ou atualizar e renomear, podemos desconsiderar tudo que ja existe, se for o caso

## Custom Fields
- Versão: 0
- Módulo/Épico: 3
