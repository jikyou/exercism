//
// This is only a SKELETON file for the 'Wordy' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

const ERR = {
  UNK_OP: "Unknown operation",
  SYN: "Syntax error",
}

const OPS = {
  'What is': '',
  'plus': '+',
  'minus': '-',
  'multiplied by': '*',
  'divided by': '/',
  '?': ''
}

const notNumber = word => isNaN(Number(word));
const isOp = word => '+-*/'.includes(word);
const odd = (_, i) => i % 2;

export const answer = (question) => {
  if (!question.startsWith("What is") || !question.endsWith("?")) {
    throw new Error(ERR.UNK_OP)
  }

  let words = question.replace(/What is|plus|minus|multiplied by|divided by|\?/g, w => OPS[w])
    .split(' ')
    .filter(word => word)

  if (!words.filter(notNumber).every(isOp)) {
    throw new Error(ERR.UNK_OP)
  }
  if (words.length % 2 === 0 || !words.filter(odd).every(isOp)) {
    throw new Error(ERR.SYN)
  }

  while (words.length > 1) {
    words = [cal(...words.slice(0, 3))].concat(words.slice(3))
  }

  return Number(words[0])
};

function cal(a, op, b) {
  return eval(`${a} ${op} ${b}`)
}
