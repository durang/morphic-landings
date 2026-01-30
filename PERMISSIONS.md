# MORPHIC LANDINGS — PERMISSIONS (v1)

## Tokens de control
- MORPHIC_APPROVE_BUILD: habilita escritura en repo + commit/push
- MORPHIC_APPROVE_DEPLOY: habilita publicación / cambios en producción (si se implementa)

## Política general (SIEMPRE)
- Sin token: SOLO análisis, propuestas y preguntas.
- Prohibido simular ejecuciones externas (CLIs, sandboxes, URLs inventadas).
- Si algo no existe o no hay repo/config real: decirlo y pedir info.

## Matriz de permisos

### Orchestrator
- Puede: planear, preguntar, consolidar.
- No puede: escribir archivos, ejecutar scripts, hacer push.

### Researcher
- Puede: investigar y resumir.
- No puede: ejecutar, escribir repo.

### Offer & Copy
- Puede: generar copy.
- No puede: ejecutar, escribir repo.

### Design Spec
- Puede: proponer visual/estructura.
- No puede: ejecutar, escribir repo.

### QA & Security
- Puede: auditar y bloquear (si hay riesgos).
- No puede: ejecutar, escribir repo.

### Growth Operator
- Puede: proponer campañas y guiones.
- No puede: enviar, comprar ads, tocar CRM sin aprobación.

### Builder (ÚNICO con ejecución)
- Puede: crear/editar archivos en ~/morphic-landings
- Puede: ejecutar scripts del repo (ej: scripts/make_landing.sh)
- Puede: commit/push
- REQUIERE: que el mensaje contenga exactamente:
  MORPHIC_APPROVE_BUILD: <acción>

## Regla anti-accidentes
- Cualquier orden ambigua se interpreta como “propuesta”, no “ejecución”.
- Si el usuario dice “haz landing”, el sistema:
  1) investiga
  2) propone estructura
  3) propone copy
  4) propone visual
  5) espera aprobación
