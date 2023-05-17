//
// This is only a SKELETON file for the 'Clock' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class Clock {

  static DAY_OF_HOURS = 24
  static HOUR_OF_MINUTES = 60

  #minutes

  constructor(hour = 0, minutes = 0) {
    this.#minutes = hour * Clock.HOUR_OF_MINUTES + minutes
  }

  toString() {
    return `${this.#format(this.#getHour())}:${this.#format(this.#getMinutes())}`
  }

  #getMinutes() {
    return this.#absMod(this.#minutes, Clock.HOUR_OF_MINUTES)
  }

  #getHour() {
    return this.#absMod(Math.floor(this.#minutes / Clock.HOUR_OF_MINUTES), Clock.DAY_OF_HOURS)
  }

  #absMod(a, b) {
    return (b + a % b) % b
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
