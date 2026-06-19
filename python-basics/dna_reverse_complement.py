def reverse_complement(dna):
  complement = {"A": "T", "T": "A", "C": "G", "G": "C"}
  reverse_dna = dna[::-1]
  result = " "
  for base in reverse_dna:
    result = result + complement[base]
    return result

sequence = "AATTCCGG"
print("Original sequence:", sequence)
print("Reverse complement:", reverse_complement(sequence))

  
