
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

export function decodedValue(colors: Color[]): number {
  if (!colors.length || colors.some(r => !Object.prototype.hasOwnProperty.bind(ResistorValues, r))) {
    throw new Error("error color")
  }
  let value = ResistorValues[colors[0]]
  if (colors[1]) {
    value = value * 10 + ResistorValues[colors[1]]
  }
  return value
}
