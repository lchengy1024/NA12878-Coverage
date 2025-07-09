# NA12878 Whole Genome Coverage Estimation

This project calculates the average whole-genome sequencing coverage for the NA12878 sample aligned to GRCh38.

##  Tools

- [`mosdepth`](https://github.com/brentp/mosdepth): A fast and efficient tool for calculating sequencing depth, supports CRAM.

## Input

- CRAM file: `NA12878.final.cram`
- Reference genome: `GRCh38.d1.vd1.fa`

## Run the Pipeline

```bash
bash calculate_coverage.sh
