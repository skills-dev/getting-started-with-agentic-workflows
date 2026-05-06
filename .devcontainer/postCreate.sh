#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SITE_DIR="$ROOT_DIR/site"

echo "[postCreate] Installing sandbox dependencies for agentic workflows..."
if command -v apt-get >/dev/null 2>&1; then
  sudo apt-get update
  sudo apt-get install -y bubblewrap socat
fi

echo "[postCreate] Installing GitHub Copilot CLI..."
npm install -g @github/copilot

echo "[postCreate] Installing Mona Astro site dependencies..."
cd "$SITE_DIR"
npm ci

echo "[postCreate] Verifying Astro build..."
npm run build

echo "[postCreate] Done. GitHub CLI and Copilot CLI are installed."
echo "[postCreate] Use the 'Mona Astro: Dev Server' launch config or the 'site: dev' task to start the site."
