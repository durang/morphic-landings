#!/usr/bin/env bash
set -euo pipefail

SLUG="${1:-}"
TITLE="${2:-Landing}"
SUBTITLE="${3:-Hecha por Clawdbot}"
CTA_TEXT="${4:-Inscribirme}"
CTA_LINK="${5:-#}"

if [[ -z "$SLUG" ]]; then
  echo "Uso: make_landing.sh <slug> [title] [subtitle] [cta_text] [cta_link]"
  exit 1
fi

REPO_DIR="$HOME/morphic-landings"
OUT_DIR="$REPO_DIR/public/landings/$SLUG"
FILE="$OUT_DIR/index.html"

cd "$REPO_DIR"
git pull --rebase

mkdir -p "$OUT_DIR"

cat > "$FILE" <<EOF
<!doctype html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>$TITLE</title>
</head>
<body style="font-family: system-ui; padding: 40px; max-width: 900px; margin: 0 auto;">
  <h1>$TITLE</h1>
  <p>$SUBTITLE</p>
  <p>
    <a href="$CTA_LINK" style="display:inline-block;padding:12px 16px;border:1px solid #999;border-radius:10px;text-decoration:none;">
      $CTA_TEXT
    </a>
  </p>
</body>
</html>
EOF

# actualizar public/index.html agregando link si no existe
INDEX="$REPO_DIR/public/index.html"
if [[ -f "$INDEX" ]] && ! grep -q "/landings/$SLUG" "$INDEX"; then
  # inserta un <li> antes del cierre </ul>
  sed -i "s#</ul>#  <li><a href=\"/landings/$SLUG\">$SLUG</a></li>\n</ul>#g" "$INDEX" || true
fi

git add .
git commit -m "feat: landing $SLUG" || echo "Nada que commitear"
git push

echo "OK: https://morphic-landings.vercel.app/landings/$SLUG"
