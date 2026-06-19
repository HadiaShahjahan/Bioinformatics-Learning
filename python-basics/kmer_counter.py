def count_kmers(dna, k):
  dna = dna.upper()
  kmer_counts = {}
  for i in range(len(dna)-k+1):
    kmer = dna[i:i+k]
    if kmer in kmer_counts:
      kmer_counts[kmer] = kmer_counts[kmer} + 1
    else:
      kmer_counts[kmer] = 1
  return kmer_counts

sequence = "ATGATGATC"
k = 3
result = count_kmers(sequence, k)
print("DNA sequence:",sequence)
print("K-mer size:", k)
print("K-mer counts:", result)

      
