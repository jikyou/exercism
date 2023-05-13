//
// This is only a SKELETON file for the 'Meetup' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const meetup = (year, month, weekth, week) => {
  let date = new Date(year, month - 1, 15)
  date.setDate(getNewDay(date, weekth, week))
  return date
};

function getNewDay(date, weekth, week) {
  let newDay = date.getDate() - (date.getDay() - getDayInWeek(week))
  if (weekth === "teenth") {
    newDay = getTeenthDay(newDay)
  } else if (weekth === "first") {
    newDay = getFirstWeekDay(newDay)
  } else if (weekth === "second") {
    newDay = getFirstWeekDay(newDay) + 7
  } else if (weekth === "third") {
    newDay = getFirstWeekDay(newDay) + 7 * 2
  } else if (weekth === "fourth") {
    newDay = getFirstWeekDay(newDay) + 7 * 3
  } else if (weekth === "last") {
    date.setMonth(date.getMonth() + 1)
    newDay = date.getDate() - (date.getDay() - getDayInWeek(week))
    newDay = getFirstWeekDay(newDay) - 7
  }
  return newDay
}

function getFirstWeekDay(day) {
  return day % 7 === 0 ? 7 : day % 7
}

function getTeenthDay(day) {
  if (day < 13) {
    day += Math.ceil(Math.abs(day - 13) / 7) * 7
  } else if (day > 19) {
    day -= Math.ceil(Math.abs(day - 13) / 7) * 7
  }
  return day
}

function getDayInWeek(week) {
  switch (week) {
    case "Monday":
      return 1
    case "Tuesday":
      return 2
    case "Wednesday":
      return 3
    case "Thursday":
      return 4
    case "Friday":
      return 5
    case "Saturday":
      return 6
    default:
      // Sunday
      return 0
  }
}
