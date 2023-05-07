//
// This is only a SKELETON file for the 'List Ops' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class List {

  constructor(values = []) {
    this.values = []
    for (const v of values) {
      if (v instanceof List) {
        this.values = [...this.values, ...v.values]
        continue
      }
      this.values = [...this.values, v]
    }
  }

  append(other) {
    this.values = [...this.values, ...other.values]
    return this
  }

  concat(other) {
    this.values = [...this.values, ...other.values]
    return this
  }

  filter(func) {
    let innerValues = []
    for (const v of this.values) {
      if (func(v)) {
        innerValues = [...innerValues, v]
      }
    }
    this.values = innerValues
    return this
  }

  map(func) {
    let innerValues = []
    for (const v of this.values) {
      innerValues = [...innerValues, func(v)]
    }
    this.values = innerValues
    return this
  }

  length() {
    return this.values.length
  }

  foldl(func, initValue = 0) {
    let acc = initValue
    for (const v of this.values) {
      acc = func(acc, v)
    }
    return acc
  }

  foldr(func, initValue = 0) {
    return this.reverse().foldl(func, initValue)
  }

  reverse() {
    let innerValues = []
    for (let i = this.values.length - 1; i >= 0; i--) {
      const v = this.values[i];
      innerValues = [...innerValues, v]
    }
    this.values = innerValues
    return this
  }
}
