#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SITE_DIR="$ROOT_DIR/site"
READY_MARKER="${TMPDIR:-/tmp}/mona-codespace-ready"

rm -f "$READY_MARKER"
cd "$SITE_DIR"

if [ ! -d node_modules ]; then
  echo "[postStart] node_modules missing, running npm ci..."
  npm ci
fi

echo "[postStart] Workspace ready."
echo "[postStart] CLI tools available: gh and copilot."
echo "[postStart] Start the site with the VS Code launch config 'Mona Astro: Dev Server' or the task 'site: dev'."
echo "[postStart] When running, the site will be available on port 4321."
touch "$READY_MARKER"
