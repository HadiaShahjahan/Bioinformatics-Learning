def find_motif(dna, motif):
  dna = dna.upper()
  motif = motif.upper()

  positions = []
  for i in range(len(dna) - len(motif) + 1):
    if dna[i:i + len(motif)] == motif:
      positions.append(i + 1)

  return positions

sequence = "ATGCGATATCGAT
motif = "gat"

motif_positions = find_motif(sequence, motif)

print("DNA sequence:", sequence)
print("Motif:",motif)
print("Motif found at positions:", motif_positions)


