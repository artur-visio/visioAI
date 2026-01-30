# CMS API - Desenvolvimento Local

**Última atualização:** 2026-01-30

---

## Quick Start

```bash
cd repos/plataforma/cms-api
npm install
cp .env.example .env
npm run compose:dev:up    # PostgreSQL na porta 5440
npm run migration:run
npm run start:dev
```

**Container PostgreSQL:**
- Nome: `cms-api-db`
- Porta: `5440` → `5432`
- User/DB/Password: `cmsapi`

---

## Database

### Conectar
```bash
docker exec -e PGPASSWORD=cmsapi cms-api-db psql -U cmsapi -d cmsapi
```

### Tabela `mvp_cameras`

Campos principais:
- `serial_number` - Identificador único (UNIQUE por organização)
- `last_seen_at` - Timestamp última conexão (DDNS/ISUP)
- `last_seen_ip4` / `last_seen_ip6` - IP da câmera

### Cadastrar câmera para teste

```sql
-- Verificar/criar organização
INSERT INTO mvp_organizations (id, name)
VALUES ('sc-demo', 'Smart City Demo') ON CONFLICT DO NOTHING;

-- Verificar/criar spot
INSERT INTO mvp_spots (organization_id, name)
SELECT 'sc-demo', 'Spot Teste'
WHERE NOT EXISTS (SELECT 1 FROM mvp_spots WHERE organization_id = 'sc-demo');

-- Cadastrar câmera
INSERT INTO mvp_cameras (
  organization_id, spot_id, serial_number, name,
  status, orientation, algorithm, manufacturer
) VALUES (
  'sc-demo',
  (SELECT id FROM mvp_spots WHERE organization_id = 'sc-demo' LIMIT 1),
  'GA7462504',  -- Serial da sua câmera
  'Camera Teste',
  'active', 0, 'facial', 'Hikvision'
);
```

---

## Padrões de Código

### CamerasService

```typescript
// Buscar por serial
const camera = await this.camerasService.findBySerialNumber('GA7462504');

// Atualizar
await this.camerasService.update(camera.id, {
  lastSeenAt: new Date().toISOString(),
  lastSeenIp4: '192.168.1.64',
});
```

### IpValidationUtil

**Localização:** `src/common/utils/ip-validation.util.ts`

```typescript
import { IpValidationUtil } from '../../common/utils/ip-validation.util';

if (IpValidationUtil.isIPv4(ip)) {
  payload.lastSeenIp4 = ip;
} else if (IpValidationUtil.isIPv6(ip)) {
  payload.lastSeenIp6 = IpValidationUtil.normalizeIPv6(ip);  // Remove %interface
}
```

---

## Debug

### Logs
```bash
# Ver logs
tail -f /tmp/cms-api.log

# Filtrar
tail -f /tmp/cms-api.log | grep isup_
```

### Portas
```bash
lsof -i:3000   # API HTTP
lsof -i:7660   # ISUP Gateway
```

### Queries SQL
```sql
-- Câmeras e última conexão
SELECT serial_number, last_seen_at, last_seen_ip4
FROM mvp_cameras
ORDER BY last_seen_at DESC;
```

---

## Troubleshooting

**Porta em uso:**
```bash
lsof -ti:3000 | xargs kill -9
lsof -ti:7660 | xargs kill -9
```

**Container não sobe:**
```bash
docker ps | grep cms-api-db
npm run compose:dev:up
docker logs cms-api-db -f
```

**Câmera não encontrada:**
```sql
SELECT * FROM mvp_cameras WHERE serial_number = 'SEU_SERIAL';
```
