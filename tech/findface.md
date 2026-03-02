# FindFace API

## Limites
- **6000px por dimensão** na imagem enviada para `/detect/`
- Erro retornado: `IMAGE_DECODING_FAILED: Failed to decode: Image (WxH) too large (limit 6000)`
- Não há resize automático — foto é enviada como Buffer direto

## Tratamento de Erros
- Erros do FindFace vêm em `error.response.data.original_error.desc`
- `parseFindFaceError()` em `findface.service.ts` extrai a mensagem
- Erros conhecidos são convertidos para `BadRequestException` (400) ao invés de propagar como 500 genérico
- Locais tratados: `detect()` e `createFindFaceRecord()`

## Fluxo de Criação (createFindFaceRecord)
1. `detect(photo, filename)` — POST `/detect/` com FormData (foto + attributes)
2. `createCard(name, comment, matchListId)` — POST `/cards/humans/` com JSON
3. `createFaceObject(sourcePhoto, detectId, cardId)` — POST `/objects/faces/` com FormData
4. Retorna: `{ card, detection, faceObject, embeddingId, fileUrl }`

## Autenticação
- Basic auth (`username:password` base64) para login em `/auth/login/`
- Token cacheado via `CacheService` com chave `findface_token`
- Requests autenticados usam header `Token <token>`

## Arquivos
- Service: `cms-api/src/modules/findface/findface.service.ts`
- DTOs: `cms-api/src/modules/findface/dto/`
