#!/bin/bash

# Convert SRA files into FASTQ format

ACCESSIONS=(
SRR19654344
SRR19654345
SRR19654346
SRR19654347
)

for SAMPLE in ${ACCESSIONS[@]}
do

echo "Processing $SAMPLE"

fasterq-dump \
--split-files \
--skip-technical \
--threads 8 \
$SAMPLE.sra \
-O ../data/raw/

done
