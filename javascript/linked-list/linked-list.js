//
// This is only a SKELETON file for the 'Linked List' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class LinkedList {

  constructor() {
    this.head = null
    this.tail = null
  }

  push(value) {
    if (!this.head) {
      this.head = new Node(value)
      this.tail = this.head
      return
    }
    this.tail.next = new Node(value, this.tail)
    this.tail = this.tail.next
  }

  pop() {
    if (!this.tail) {
      throw new Error("no node to pop")
    }
    let result = this.tail.value
    if (!this.tail.before) {
      this.tail = null
      this.head = null
    } else {
      this.tail = this.tail.before
      this.tail.next = null
    }
    return result
  }

  shift() {
    if (!this.head) {
      throw new Error("no node to shift")
    }
    let result = this.head.value
    if (!this.head.next) {
      this.head = null
      this.tail = null
    } else {
      this.head = this.head.next
      this.head.before = null
    }
    return result
  }

  unshift(value) {
    if (!this.head) {
      this.head = new Node(value)
      this.tail = this.head
      return
    }
    this.head.before = new Node(value, null, this.head)
    this.head = this.head.before
  }

  delete(value) {
    let node = this.head
    while (node != null) {
      if (node.value === value) {
        if (!node.before) {
          if (this.head === this.tail) {
            this.tail = null
          }
          this.head = this.head.next
        } else if (!node.next) {
          this.tail.before.next = null
          this.tail = this.tail.before
        } else {
          node.before.next = node.next
          node.next.before = node.before
        }
        break
      }
      node = node.next
    }
  }

  count() {
    let count = 0
    let node = this.head
    while (node != null) {
      node = node.next
      count++
    }
    return count
  }
}

class Node {
  constructor(value, before, next) {
    this.value = value
    this.before = before
    this.next = next
  }
}
