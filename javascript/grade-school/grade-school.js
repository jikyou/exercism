//
// This is only a SKELETON file for the 'Grade School' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class GradeSchool {

  #roster
  #studToGrade

  constructor() {
    this.#roster = {}
    this.#studToGrade = {}
  }

  roster() {
    return JSON.parse(JSON.stringify(this.#roster))
  }

  add(name, grade) {
    this.#cleanOldGrade(name)
    if (!this.#roster[grade]) {
      this.#roster[grade] = []
    }
    this.#roster[grade].push(name)
    this.#roster[grade] = this.#roster[grade].sort()
    this.#studToGrade[name] = grade
    return
  }

  #cleanOldGrade(name) {
    let beforeGrade = this.#studToGrade[name]
    if (beforeGrade) {
      let studIndex = this.#roster[beforeGrade].indexOf(name)
      this.#roster[beforeGrade].splice(studIndex, 1)
    }
  }

  grade(gradeNum) {
    let gradeStudents = this.#roster[gradeNum] || []
    return Array.from(gradeStudents)
  }
}
