#!/usr/bin/env bash
set -euo pipefail

# Rebuild script for react-native-google-signin/docs
# Runs on existing source tree (no clone). Installs deps, runs pre-build steps, builds.

echo "[INFO] Node version: $(node -v)"

# --- Enable Corepack and activate Yarn 4 (packageManager: yarn@4.9.2) ---
echo "[INFO] Enabling Corepack..."
corepack enable
corepack prepare yarn@4.9.2 --activate

echo "[INFO] Yarn version: $(yarn --version)"

# --- Install dependencies ---
echo "[INFO] Installing dependencies..."
yarn install --immutable

# --- Build ---
echo "[INFO] Running build..."
yarn build

echo "[DONE] Build complete."
