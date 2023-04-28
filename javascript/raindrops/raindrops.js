//
// This is only a SKELETON file for the 'Raindrops' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const convert = (n) => {
  let result = getFactorResult(n)
  if (result.length) {
    return result.join('')
  }
  return String(n)
};

function getFactorResult(n) {
  let result = []
  if (n % 3 == 0) {
    result.push('Pling')
  }
  if (n % 5 == 0) {
    result.push('Plang')
  }
  if (n % 7 == 0) {
    result.push('Plong')
  }
  return result
};
