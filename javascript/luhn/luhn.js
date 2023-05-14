//
// This is only a SKELETON file for the 'Luhn' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const valid = (str) => {
  str = str.replaceAll(/\s/g, "")
  if (str.length <= 1 || /[^\d]/.test(str)) {
    return false
  }
  let totalCount = str.split("").reverse().map((r, i) => {
    r = Number(r)
    if (i % 2 === 0) {
      return r
    }
    r *= 2
    return r > 9 ? r - 9 : r;
  }).reduce((acc, cur) => acc + cur, 0)
  return totalCount % 10 === 0
};
