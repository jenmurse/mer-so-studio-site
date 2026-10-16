#!/usr/bin/env bash
# Copy the public files into .deploy/ and deploy them to Cloudflare Pages (project `mersostudio`).
# Needs `npx wrangler login` once on this Mac. Deploys what is on disk, so commit first.
#   bash scripts/deploy.sh
set -euo pipefail
REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO"
rm -rf .deploy
mkdir -p .deploy/fonts/Satoshi/WEB/fonts .deploy/fonts/DM_Mono
cp index.html styles.css main.js favicon.svg OG_image_mer-so.png .deploy/
cp fonts/Satoshi/WEB/fonts/Satoshi-Variable.woff2 fonts/Satoshi/WEB/fonts/Satoshi-Variable.woff \
  .deploy/fonts/Satoshi/WEB/fonts/
cp fonts/DM_Mono/DMMono-Regular.ttf .deploy/fonts/DM_Mono/
npx --yes wrangler@4 pages deploy --project-name mersostudio --branch main --commit-dirty=true
