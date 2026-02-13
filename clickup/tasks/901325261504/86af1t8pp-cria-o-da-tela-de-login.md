# Criação da tela de login

ID: 86af1t8pp
Custom ID: TECH-258
Status: review
Assignee(s): Francisco Perdoná
Prioridade: —
List: Sprint 6 (2/9 - 2/22)

Datas:
- Criado: 2026-02-03
- Atualizado: 2026-02-09
- Due: —

## Descrição
*   Tela de login com responsivo
*   Salvar o token e org\_id
    *   Como vamos salvar? o front ja ta preparado?
    *   precisa serta algo além do token?
    *   document.cookie=\`access\_token=${(await (await fetch("[https://api-dev.visio.io/cms/auth/login",{method:"POST",headers:{"Content-Type":"application/json"},body:JSON.stringify({email:"joiville@visio.io",password:"visio1234](https://api-dev.visio.io/cms/auth/login",{method:"POST",headers:{"Content-Type":"application/json"},body:JSON.stringify({email:"joiville@visio.io",password:"visio1234)"})})).json()).accessToken}; path=/\`
*   Tema não será alterado por aqui, mas sim pegara o que o user setou se ele ja logou uma vez
*   Alterar o copy para **ENTRAR**
*   Redirect de todas as telas de quando o usuário não está autenticado, levando para a tela de login
    *   Após ele logar, redirecionar para a página que ele estava tentando entrar
*   Quando o usuário começa a digitar novamente o email ou senha após o erro, limpar o erro de ambos os campos

**Dúvidas:**
*   A sessão cai após X tempo no back, tem algo para fazer no front?
*   Qual o onfocus ou hover do input padrão

## Custom Fields
- Versão: —
- Módulo/Épico: —
