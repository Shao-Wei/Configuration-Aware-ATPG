#!/bin/bash
set -euo pipefail

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
repo_root=$(cd "${script_dir}/../../.." && pwd)
phase4_root="${repo_root}/FTL/04_Phase4_ATPG"
slurm_dir="${phase4_root}/results/slurm"
timeout_sec=${PHASE4_ATPG_TIMEOUT_SEC:-345600}
categories=(dirL0 dirL5 dirL7 dirL9 dirL11)

mkdir -p "${slurm_dir}"

python3 "${script_dir}/build_phase4_lib.py" \
  --categories "${categories[@]}"

for category in "${categories[@]}"; do
  job_file="${slurm_dir}/phase4_atpg_${category}.slurm"
  log_file="${slurm_dir}/phase4_atpg_${category}.%j.log"
  summary_file="FTL/04_Phase4_ATPG/results/phase4_summary_${category}.csv"

  cat > "${job_file}" <<EOF
#!/bin/bash
#SBATCH --export=NONE
#SBATCH --get-user-env=L
#SBATCH --job-name=phase4_atpg_${category}
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=shaowei22@tamu.edu
#SBATCH --time=96:00:00
#SBATCH --ntasks=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=20G
#SBATCH --output=${log_file}
#SBATCH --partition=cpu-research
#SBATCH --qos=olympus-cpu-research

source ~/.bashrc
cd "${repo_root}"

python3 "${script_dir}/run_phase4_atpg.py" \\
  --categories "${category}" \\
  --timeout-sec "${timeout_sec}" \\
  --summary "${summary_file}"
EOF

  sbatch "${job_file}"
done

echo "Submitted ${#categories[@]} Phase 4 ATPG jobs."
