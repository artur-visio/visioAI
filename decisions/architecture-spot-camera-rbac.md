# Architecture Decision: Spot, Camera, RBAC e Mapa

Status: DECIDIDO  
Data: 2025-01  
Escopo: Arquitetura core da plataforma VISIO  
Área: Produto + Dados + Autorização + UX

---

## 0. Contexto de atuação do agente

- Papel assumido: Specialist Product Manager (com forte domínio técnico)
- Lente predominante: Produto + Arquitetura
- Nível de abstração: Estrutural / sistêmico
- Objetivo do uso desse papel:
  Definir uma base escalável de produto e dados para operação urbana
  com milhares de câmeras, governança de acesso e preparação para IA
  (LPR e reconhecimento facial).

---

## 1. Objetivo de produto

Criar uma fundação de produto e arquitetura que permita:

- Operar câmeras urbanas em escala via mapa
- Separar claramente local físico de dispositivo
- Garantir controle de acesso territorial e funcional (RBAC)
- Suportar casos avançados de IA (facial e LPR)
- Manter simplicidade no MVP sem bloquear evolução futura

Esta decisão suporta a visão de longo prazo da VISIO como
plataforma SaaS B2B para segurança pública e smart cities.

---

## 2. Problema central

Antes desta decisão, havia ambiguidade e acoplamento excessivo entre:

- Organização ↔ unidade ↔ usuário ↔ câmera
- Local físico ↔ dispositivo
- Permissão funcional ↔ escopo territorial

Isso gerava riscos de:
- UX confusa no mapa
- Dificuldade de escalar RBAC
- Complexidade excessiva em IA e eventos
- Re-trabalho estrutural no futuro

---

## 3. Decisão principal

### 3.1 Separação conceitual: Spot vs Camera

Foi decidido separar explicitamente:

- **Spot (Ponto)**  
  Representa o local físico/geográfico (poste, esquina, prédio).
  É o que aparece como *pin* no mapa.

- **Camera (Dispositivo)**  
  Representa o equipamento físico instalado no spot.

Relação:
- Um Spot pode conter múltiplas câmeras (1:N).
- Toda câmera deve obrigatoriamente pertencer a um Spot.

---

### 3.2 Mapa orientado a Spot

- O mapa carrega **Spots**, não câmeras individuais.
- O clique no Spot abre um painel lateral com:
  - dados do local
  - lista de câmeras
  - acesso a eventos e streams

Essa decisão reduz poluição visual e melhora operação urbana.

---

## 4. Modelo de autorização (RBAC)

### 4.1 Princípio geral

- **Autenticação**: Keycloak (identidade, login, token)
- **Autorização**: Banco de dados (RBAC e escopo)

### 4.2 Estrutura de permissões

- `permissions`
  Catálogo global de permissões técnicas
  (ex.: camera.live_view, camera.lpr, camera.face_recognition)

- `roles`
  Criadas dinamicamente pelo cliente, associadas a uma
  `organization_unit`.

- `role_permissions`
  Liga roles às permissões técnicas.

- `user_assignments`
  Liga usuário (Keycloak sub) à organização, unidade e role.

---

### 4.3 Escopo territorial (grupos)

- Existem `camera_groups` para organização territorial/lógica.
- O vínculo de grupo foi movido da câmera para o **Spot**.
- As câmeras herdam o grupo via Spot.

Motivo:
- O território é propriedade do local físico, não do dispositivo.
- Simplifica filtros, RBAC e UX no mapa.

---

## 5. Decisões de modelagem de dados

### 5.1 Spot (campos principais)

- organization_id (obrigatório)
- organization_unit_id (opcional, recomendado)
- camera_group_id (opcional)
- latitude / longitude
- address (obrigatório)
- infraestrutura:
  - internet_type (enum)
  - internet_provider (enum)
  - network_type (enum)
- instalação:
  - installer_name (texto no MVP)

Enums foram escolhidos em vez de tabelas no MVP
por simplicidade e velocidade.

---

### 5.2 Camera (campos principais)

- organization_id
- spot_id (obrigatório)
- name, status
- serial_number (único por organização)
- manufacturer (enum)
- type (enum)
- algorithm (enum)
- source_type (enum)
- model (texto opcional)

O conceito de `external_id` foi descartado no MVP;
a identidade do dispositivo é o `serial_number`.

---

## 6. Eventos e IA

- Eventos (facial, LPR) pertencem à câmera.
- Via câmera → spot → grupo → unidade,
  é possível aplicar RBAC e filtros territoriais.

O modelo suporta:
- alertas em tempo real
- investigação forense
- rastreabilidade e auditoria

---

## 7. Fluxos operacionais principais

### 7.1 Onboarding (Admin)

1. Criar organization
2. Criar organization_units
3. Criar camera_groups
4. Criar spots (pins do mapa)
5. Criar câmeras dentro dos spots
6. Criar roles e permissões
7. Vincular usuários (Keycloak + DB)

---

### 7.2 Operação (Mapa)

- Carregar spots por bbox + filtros
- Selecionar spot → ver câmeras
- Selecionar câmera → stream / eventos

---

## 8. Trade-offs explícitos

### 8.1 Grupo no Spot vs Camera
- ✅ Simplicidade operacional e UX
- ❌ Menos flexibilidade se uma câmera precisar “escapar” do spot
- Mitigação futura: override por resource_permissions se necessário

### 8.2 Enums vs tabelas
- ✅ MVP rápido e simples
- ❌ Governança futura exige disciplina
- Mitigação: endpoint de metadata/versionamento

---

## 9. Riscos e pontos de atenção

- Consistência organization_id entre Spot e Camera deve ser validada
- RBAC por user_assignment pode gerar ambiguidade se não houver padrão
- Escalabilidade do mapa exige índices e queries por bbox
- Reconhecimento facial exige UX forte contra falsos positivos

---

## 10. Consequências desta decisão

- Todo novo módulo deve respeitar Spot como entidade territorial
- O mapa é o centro da operação
- RBAC sempre combina:
  - permissões técnicas
  - unidade organizacional
  - grupo territorial

---

## 11. Pendências futuras (não bloqueantes)

- Diagrama visual da arquitetura
- Tasks de migration/backfill se houver base antiga
- Definição formal de enums iniciais
- Avaliação de clusterização no mapa (V2)