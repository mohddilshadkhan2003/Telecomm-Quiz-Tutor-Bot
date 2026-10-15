#!/bin/bash
# make_demo_gif.sh - convert an mp4 recording into an optimized GIF for the repo demo
# Usage: ./scripts/make_demo_gif.sh path/to/demo.mp4

set -e
if [ -z "$1" ]; then
  echo "Usage: $0 input.mp4"
  exit 1
fi
INPUT="$1"
TEMP="letstry/static/demo_temp.gif"
OUT="letstry/static/demo.gif"

# create a smooth gif at 15 fps scaled to 800px width
ffmpeg -y -i "$INPUT" -vf "fps=15,scale=800:-1:flags=lanczos" -ss 0 -t 8 "$TEMP"

# optimize colors and size (requires gifsicle)
if command -v gifsicle >/dev/null 2>&1; then
  gifsicle --optimize=3 "$TEMP" -o "$OUT"
  rm "$TEMP"
  echo "Created $OUT (optimized)"
else
  mv "$TEMP" "$OUT"
  echo "Created $OUT (unoptimized). Install gifsicle to reduce size: https://www.lcdf.org/gifsicle/"
fi
