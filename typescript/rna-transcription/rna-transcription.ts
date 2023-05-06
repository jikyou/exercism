const DNATORNAPAIR: { [key: string]: string } = {
  "C": "G",
  "G": "C",
  "A": "U",
  "T": "A",
}

export function toRna(DNAStrand: string) {
  if (/[^CGAT]/.test(DNAStrand)) {
    throw new Error("Invalid input DNA.")
  }
  return [...DNAStrand].reduce((acc, cur) => {
    acc += DNATORNAPAIR[cur]
    return acc
  }, "")
}
