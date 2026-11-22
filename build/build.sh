#!/usr/bin/env bash
# Render slides HTML -> PDF via headless Chrome.
# Usage: ./build.sh <input.html> <output.pdf>
set -e
CHROME="/c/Program Files/Google/Chrome/Application/chrome.exe"
INPUT="$(cd "$(dirname "$1")" && pwd -W)/$(basename "$1")"
OUTPUT="$(cd "$(dirname "$2")" && pwd -W)/$(basename "$2")"
"$CHROME" --headless --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$OUTPUT" "file:///$INPUT"
echo "OK -> $OUTPUT"
