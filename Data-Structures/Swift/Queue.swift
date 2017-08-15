struct Queue<E> {
  var items = [E]()
  var size: Int { return items.count }
  var isEmpty: Bool { return items.isEmpty }

  mutating func enqueue(_ item: E) {
    items.insert(item, at: 0)
  }

  mutating func dequeue() {
    let index = size - 1
    items.remove(at: index)
  }
}