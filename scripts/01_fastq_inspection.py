from Bio import SeqIO

files = [
"SRR19654344_1.fastq",
"SRR19654344_2.fastq",
"SRR19654344_3.fastq"
]

for file in files:

    print("====================")
    print(file)

    for i, record in enumerate(SeqIO.parse(file,"fastq")):

        print("Read:", i+1)
        print("Length:", len(record.seq))
        print("Sequence:", record.seq)

        if i == 4:
            break
