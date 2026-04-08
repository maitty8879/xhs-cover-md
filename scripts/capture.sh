#!/bin/bash
# Capture XHS cover from HTML → PNG (3:4 at 1500×2000)
# Usage: ./scripts/capture.sh input.html output.png

set -euo pipefail

INPUT="${1:?Usage: capture.sh input.html output.png}"
OUTPUT="${2:?Usage: capture.sh input.html output.png}"

WIDTH=1500
HEIGHT=2000

# Find Chrome
CHROME="${CHROME_BIN:-}"
if [ -z "$CHROME" ]; then
  for cmd in google-chrome chromium-browser chromium chrome; do
    if command -v "$cmd" &>/dev/null; then CHROME="$cmd"; break; fi
  done
fi
if [ -z "$CHROME" ] && [ -d "/Applications/Google Chrome.app" ]; then
  CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
fi
if [ -z "$CHROME" ]; then echo "Chrome not found"; exit 1; fi

ABS_INPUT="$(cd "$(dirname "$INPUT")" && pwd)/$(basename "$INPUT")"

"$CHROME" --headless --disable-gpu --no-sandbox \
  --window-size="${WIDTH},${HEIGHT}" \
  --screenshot="$OUTPUT" \
  --default-background-color=0 \
  --force-device-scale-factor=1 \
  "file://${ABS_INPUT}" 2>/dev/null

echo "Saved: $OUTPUT (${WIDTH}×${HEIGHT})"
