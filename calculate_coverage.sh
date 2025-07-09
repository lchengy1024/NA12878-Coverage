
---

### `calculate_coverage.sh`

```bash
#!/bin/bash

# Step 1: Download CRAM file
wget -c ftp://ftp.sra.ebi.ac.uk/vol1/run/ERR323/ERR3239334/NA12878.final.cram

# Step 2: Reference genome
REF_FA="/reference/GRCh38.d1.vd1.fa"

# Step 3: File paths
CRAM_FILE="NA12878.final.cram"
OUT_PREFIX="results/NA12878_coverage_fulllength"

# Step 4: Set reference for CRAM decoding
export REF_PATH="${REF_FA}"
export HTS_REFERENCE="${REF_FA}"

# Step 5: Run mosdepth (multi-threaded)
mosdepth -t 8 "${OUT_PREFIX}" "${CRAM_FILE}"
