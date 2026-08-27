from collections import Counter

file = "/content/test_fastq/SRR19654344_3.fastq"

motif = "AAGCAGTGGTATCAACGCAGAGTACATG"

total = 0
start_count = 0

with open(file, "r") as f:
    while total < 100000:
        header = f.readline()
        seq = f.readline().strip()
        plus = f.readline()
        qual = f.readline()

        if not seq:
            break

        total += 1

        if seq.startswith(motif):
            start_count += 1

print("Reads checked:", total)
print("Reads starting with motif:", start_count)

## output:
Reads checked: 100000
Reads starting with motif: 11239
Percentage: 11.24%
print("Percentage:", round(start_count/total*100,2), "%")
