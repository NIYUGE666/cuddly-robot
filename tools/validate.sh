#!/usr/bin/env bash
set -euo pipefail
task_root=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
export XDG_CONFIG_HOME=/tmp/waveform-xdg/config
export XDG_CACHE_HOME=/tmp/waveform-xdg/cache
export XDG_DATA_HOME=/tmp/waveform-xdg/data
export MPLCONFIGDIR=/tmp/waveform-xdg/matplotlib
mkdir -p "$XDG_CONFIG_HOME" "$XDG_CACHE_HOME" "$XDG_DATA_HOME" "$MPLCONFIGDIR"
cd "$task_root"
kicad-cli sch export netlist --format kicadxml -o validation/netlist.xml hardware/waveform.kicad_sch
kicad-cli sch erc --exit-code-violations -o validation/ERC.rpt hardware/waveform.kicad_sch
/usr/bin/python3 tools/check_connections.py
kicad-cli pcb drc --schematic-parity --exit-code-violations -o validation/DRC.rpt hardware/waveform.kicad_pcb
python tools/analyse.py
/usr/bin/python3 tools/export_eagle.py
# Run DRC on the file read by the actual EAGLE importer, using that exchange's rules.
task_roundtrip=$(python -c 'import json; print(json.load(open("validation/eagle_exchange.json"))["roundtrip_board"])')
kicad-cli pcb drc --exit-code-violations -o validation/EAGLE_roundtrip_DRC.rpt "$task_roundtrip"
