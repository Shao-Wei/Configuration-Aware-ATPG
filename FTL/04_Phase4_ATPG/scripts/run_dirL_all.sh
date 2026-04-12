#!/bin/bash
set -euo pipefail

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

python3 "${script_dir}/build_phase4_lib.py" \
  --categories dirL0 dirL5 dirL7 dirL9 dirL11

python3 "${script_dir}/run_phase4_atpg.py" \
  --categories dirL0 dirL5 dirL7 dirL9 dirL11
