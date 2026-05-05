#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SITE_DIR="$ROOT_DIR/site"

echo "[postCreate] Installing GitHub Copilot CLI..."
npm install -g @github/copilot

echo "[postCreate] Installing GitHub Agentic Workflows CLI extension..."
if gh extension list | awk '{print $1}' | grep -qx "gh-aw"; then
  echo "[postCreate] gh-aw extension already installed."
else
  gh extension install github/gh-aw
fi

echo "[postCreate] Installing Mona Astro site dependencies..."
cd "$SITE_DIR"
npm ci

echo "[postCreate] Verifying Astro build..."
npm run build

echo "[postCreate] Done. GitHub CLI, Copilot CLI, and gh-aw are installed."
echo "[postCreate] Use the 'Mona Astro: Dev Server' launch config or the 'site: dev' task to start the site."
