struct Stack<E> {
    var items = [E]()
    var size: Int { return items.count }
    var isEmpty: Bool { return items.isEmpty }

    mutating func push(_ item: E) {
        items.append(item)
    }

    mutating func pop() {
        items.removeLast()
    }

    func peek() -> E? {
        guard !isEmpty else { return nil }
        return items.last
    }
}