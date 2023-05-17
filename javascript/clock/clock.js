//
// This is only a SKELETON file for the 'Clock' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class Clock {

  #minutes

  constructor(hour = 0, minutes = 0) {
    this.#minutes = hour * 60 + minutes
  }

  toString() {
    return `${this.#format(this.#getHour())}:${this.#format(this.#getMinutes())}`
  }

  #getMinutes() {
    let minutes = this.#minutes % 60
    if (minutes < 0) {
      minutes += 60
    }
    return minutes
  }

  #getHour() {
    let hour = Math.floor(this.#minutes / 60) % 24
    if (hour < 0) {
      hour += 24
    }
    return hour
  }

  #format(num) {
    return String(num).padStart(2, "0")
  }

  plus(minutes) {
    this.#minutes += minutes
    return this
  }

  minus(minutes) {
    this.#minutes -= minutes
    return this
  }

  equals(other) {
    return this.toString() === other.toString()
  }
}
