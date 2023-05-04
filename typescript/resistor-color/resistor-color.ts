export const colorCode = (color: string) => {
  let index = COLORS.indexOf(color)
  if (index === -1) {
    throw new Error("error color value")
  }
  return index
}

export const COLORS = [
  'black',
  'brown',
  'red',
  'orange',
  'yellow',
  'green',
  'blue',
  'violet',
  'grey',
  'white',
]
