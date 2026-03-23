#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SITE_DIR="$ROOT_DIR/site"

echo "[postCreate] Installing Mona Astro site dependencies..."
cd "$SITE_DIR"
npm ci

echo "[postCreate] Verifying Astro build..."
npm run build

echo "[postCreate] Done. Use the 'Mona Astro: Dev Server' launch config or the 'site: dev' task to start the site."
