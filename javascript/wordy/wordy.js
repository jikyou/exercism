//
// This is only a SKELETON file for the 'Wordy' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

const OPERATES = ["plus", "minus", "multiplied", "divided"]

export const answer = (problem) => {
  const startStr = "What is"
  if (!problem.startsWith(startStr) || !problem.endsWith("?")) {
    throw new Error('Unknown operation')
  }

  problem = problem.replaceAll(/\sby/g, "")
  problem = problem.slice(startStr.length, problem.length - 1).trim()
  if (!problem) {
    throw new Error('Syntax error')
  }
  let eles = problem.split(" ")
  validate(eles)
  return cal(eles)
};

function validate(eles) {
  for (let i = 0; i < eles.length; i++) {
    const ele = eles[i];
    let num = Number(ele)
    if (i % 2 !== 0) {
      if (!OPERATES.includes(ele)) {
        if (Number.isFinite(num)) {
          throw new Error('Syntax error')
        }
        throw new Error('Unknown operation')
      }
      if (i === eles.length - 1) {
        throw new Error('Syntax error')
      }
      continue
    }
    if (!Number.isFinite(num)) {
      throw new Error('Syntax error')
    }
    eles[i] = num
  }
}

function cal(eles) {
  let result = 0
  let action
  for (let i = 0; i < eles.length; i++) {
    const ele = eles[i];
    if (i % 2 !== 0) {
      action = ele
      continue
    }
    if (!action) {
      result = ele
    }
    if (action === "plus") {
      result += ele
    } else if (action === "minus") {
      result -= ele
    } else if (action === "multiplied") {
      result *= ele
    } else if (action === "divided") {
      result /= ele
    }
  }
  return result
}
