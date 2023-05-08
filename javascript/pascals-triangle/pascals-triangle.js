//
// This is only a SKELETON file for the 'Pascals Triangle' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const rows = (row) => {
  let result = []
  inner(1)
  return result

  function inner(r) {
    if (result.length === row) {
      return
    }
    if (r === 1) {
      result.push([1])
    } else if (r === 2) {
      result.push([1, 1])
    } else {
      let beforeRow = result[result.length - 1]
      let curRow = []
      for (let i = 0; i + 1 < beforeRow.length; i++) {
        curRow.push(beforeRow[i] + beforeRow[i + 1])
      }
      result.push([1, ...curRow, 1])
    }
    inner(r + 1)
  }
};
