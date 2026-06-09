#!/usr/bin/env bash
# Compile index.md -> index.html as a single self-contained file.
# Uses the GitHub-Flavored Markdown reader so lists/headings render the
# same way they do in the editor preview and on GitHub.
set -euo pipefail
cd "$(dirname "$0")"

pandoc index.md \
  --from gfm \
  --to html \
  --standalone \
  --embed-resources \
  --metadata pagetitle="Elias Gjedde-Grundtvig" \
  --css style.css \
  -o index.html

echo "Built index.html ($(du -h index.html | cut -f1))"