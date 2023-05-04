
enum ResistorValues {
  black = 0,
  brown = 1,
  red = 2,
  orange = 3,
  yellow = 4,
  green = 5,
  blue = 6,
  violet = 7,
  grey = 8,
  white = 9,
}

type Color = keyof typeof ResistorValues;

const Units = [
  {
    base: 10 ** 9,
    value: "gigaohms",
  },
  {
    base: 10 ** 6,
    value: "megaohms",
  },
  {
    base: 10 ** 3,
    value: "kiloohms",
  },
]

export function decodedResistorValue(colors: Color[]): string {
  if (colors.length < 3 || colors.some(r => !Object.prototype.hasOwnProperty.bind(ResistorValues, r))) {
    throw new Error("error color value")
  }

  let [first, second, zero] = colors
  let value = (ResistorValues[first] * 10 + ResistorValues[second]) * 10 ** ResistorValues[zero]

  let unit = Units.find(r => value >= r.base)
  if (unit) {
    return `${value / unit.base} ${unit.value}`
  }
  return `${value} ohms`
}
