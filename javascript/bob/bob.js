//
// This is only a SKELETON file for the 'Bob' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const hey = (message) => {
  message = message.trim()
  if (!message) {
    return 'Fine. Be that way!'
  }
  if (isQuestion(message) && isYell(message)) {
    return "Calm down, I know what I'm doing!"
  }
  if (isQuestion(message)) {
    return "Sure."
  }
  if (isYell(message)) {
    return "Whoa, chill out!"
  }
  return "Whatever.";
};

function isQuestion(message) {
  return message.endsWith("?")
}

function isYell(message) {
  if (!/[a-z]/i.test(message)) {
    return false
  }
  return message === message.toUpperCase()
}
