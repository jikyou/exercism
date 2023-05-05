export function toRna(DNAStrand: string) {
  if (DNAStrand.split("").some(r => !["C", "G", "A", "T"].includes(r))) {
    throw new Error("Invalid input DNA.")
  }
  return DNAStrand
    .replaceAll("C", "X")
    .replaceAll("G", "C")
    .replaceAll("X", "G")
    .replaceAll("A", "U")
    .replaceAll("T", "A")
}
