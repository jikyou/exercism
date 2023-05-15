//
// This is only a SKELETON file for the 'Wordy' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const answer = (problem) => {
  const startStr = "What is"
  if (!problem.startsWith(startStr) || !problem.endsWith("?")) {
    throw new Error('Unknown operation')
  }

  problem = problem.replaceAll(/\sby/g, "")
  problem = problem.slice(startStr.length, problem.length - 1).trim()
  let eles = problem.split(" ")
  console.log("eles", eles);
  let result = 0
  let action
  for (let i = 0; i < eles.length; i++) {
    const ele = eles[i];
    if (i % 2 !== 0) {
      if (!["plus", "minus", "multiplied", "divided"].includes(ele)) {
        throw new Error('Unknown operation')
      }
      if (i === eles.length - 1) {
        throw new Error('Syntax error')
      }
      action = ele
      continue
    }
    let num = Number(ele)
    if (!action) {
      result = num
    }
    if (!Number.isFinite(num)) {
      throw new Error('Syntax error')
    }
    if (action === "plus") {
      result += num
    } else if (action === "minus") {
      result -= num
    } else if (action === "multiplied") {
      result *= num
    } else if (action === "divided") {
      result /= num
    }
  }
  return result
};
