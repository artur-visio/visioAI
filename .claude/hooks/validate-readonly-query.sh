#!/bin/bash
# Valida que apenas queries read-only são executadas no PostgreSQL

# Lê JSON do stdin
INPUT=$(cat)

# Extrai o comando usando jq (se disponível) ou grep
if command -v jq &> /dev/null; then
  COMMAND=$(echo "$INPUT" | jq -r '.tool_input.command // empty')
else
  COMMAND=$(echo "$INPUT" | grep -o '"command":"[^"]*"' | cut -d'"' -f4)
fi

if [ -z "$COMMAND" ]; then
  exit 0
fi

# Bloqueia operações de escrita (case-insensitive)
if echo "$COMMAND" | grep -iE '\b(INSERT|UPDATE|DELETE|DROP|CREATE|ALTER|TRUNCATE|REPLACE|MERGE)\b' > /dev/null; then
  echo "BLOCKED: Write operations not allowed. Use SELECT queries only." >&2
  exit 2
fi

exit 0
