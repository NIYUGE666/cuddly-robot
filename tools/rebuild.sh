#!/usr/bin/env bash
# Explicit regeneration command. Does not preserve edits to generated files.
set -euo pipefail
task_root=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
export XDG_CONFIG_HOME=/tmp/waveform-xdg/config
export XDG_CACHE_HOME=/tmp/waveform-xdg/cache
export XDG_DATA_HOME=/tmp/waveform-xdg/data
mkdir -p "$XDG_CONFIG_HOME" "$XDG_CACHE_HOME" "$XDG_DATA_HOME"
cd "$task_root"
/usr/bin/python3 tools/build_design.py
/usr/bin/python3 tools/route_board.py
/usr/bin/python3 tools/draw_schematics.py
bash tools/validate.sh
