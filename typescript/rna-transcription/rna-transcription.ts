export function toRna(DNAStrand: string) {
  if (/[^CGAT]/.test(DNAStrand)) {
    throw new Error("Invalid input DNA.")
  }
  return DNAStrand
    .replaceAll("C", "X")
    .replaceAll("G", "C")
    .replaceAll("X", "G")
    .replaceAll("A", "U")
    .replaceAll("T", "A")
}
