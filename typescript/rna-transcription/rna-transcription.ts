const DNATORNAPAIR: { [key: string]: string } = {
  "C": "G",
  "G": "C",
  "A": "U",
  "T": "A",
}

export function toRna(DNAStrand: string): string {
  if (new RegExp(`[^${Object.keys(DNATORNAPAIR).join("")}]`).test(DNAStrand)) {
    throw new Error("Invalid input DNA.")
  }
  return [...DNAStrand].reduce((acc, cur) => {
    acc += DNATORNAPAIR[cur]
    return acc
  }, "")
}
