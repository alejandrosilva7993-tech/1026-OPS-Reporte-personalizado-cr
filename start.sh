#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
PORT="${PORT:-8090}"
cd "$DIR"
echo "Sirviendo prototipo en http://localhost:${PORT}/reporte-customizado-cr.html"
if command -v python3 >/dev/null 2>&1; then
  exec python3 -m http.server "$PORT"
elif command -v python >/dev/null 2>&1; then
  exec python -m http.server "$PORT"
else
  echo "Se requiere Python para servir el prototipo localmente." >&2
  exit 1
fi
