def transcribe_dna_to_rna(dna):
  dna = dna.upper()
  rna = dna.replace("T","U")
  return rna

sequence = "ATGCTTACG"

rna_sequence = transcribe_dna_to_rna(sequence)

print("DNA sequence:",sequence)
print("RNA sequence:",rna_sequence)
