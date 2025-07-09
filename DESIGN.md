# Design Document: Coverage Analysis for NA12878

## Objective

Calculate the whole-genome average sequencing coverage for the NA12878 sample (WGS, aligned to GRCh38).

## Tools

- **mosdepth** 
  - Fast
  - Supports CRAM and multi-threading
  - Outputs coverage summary directly

## Steps

1. Download CRAM file from the 1000 Genomes Project (https://www.internationalgenome.org/data-portal/sample/NA12878)
2. Specify GRCh38 reference genome (required for CRAM decoding)
3. Run mosdepth with 8 threads
4. Extract the `mean` value from the `total` row in the `NA12878_coverage.mosdepth.summary.txt` output

## Result Interpretation

- The `NA12878_coverage.mosdepth.summary.txt` file contains per-chromosome depth
- The `total` row reports genome-wide average depth

**Final Result: Mean coverage = ~31.21×**

- The total mean coverage includes standard chromosomes and all additional contigs present in the reference genome, including HLA alleles.
