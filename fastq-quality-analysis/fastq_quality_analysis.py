def phred_quality_score(quality_char):
    return ord(quality_char) - 33


def analyze_fastq(filename):
    read_count = 0
    read_lengths = []
    quality_scores = []

    with open(filename, "r") as file:
        lines = file.readlines()

    for i in range(0, len(lines), 4):
        sequence = lines[i + 1].strip()
        quality = lines[i + 3].strip()

        read_count = read_count + 1
        read_lengths.append(len(sequence))

        for char in quality:
            quality_scores.append(phred_quality_score(char))

    average_read_length = sum(read_lengths) / len(read_lengths)
    average_quality_score = sum(quality_scores) / len(quality_scores)

    print("FASTQ Quality Analysis Results")
    print("------------------------------")
    print("Total reads:", read_count)
    print("Average read length:", average_read_length)
    print("Average quality score:", round(average_quality_score, 2))


analyze_fastq("sample_reads.fastq")