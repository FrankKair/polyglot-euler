func solve() -> Int {
    var list = [1]
    
    for gridSize in (3...1001) {
        guard gridSize % 2 != 0 else { continue }

        let interval = gridSize - 1
        
        // We can safely assume there's
        // always a last element since
        // we created the list with one
        // element in it.
        let start = list.last!
        
        let diagonalNumbers = [
            start + interval,
            start + (interval * 2),
            start + (interval * 3),
            start + (interval * 4)
        ]

        list.append(contentsOf: diagonalNumbers)
    }

    return list.reduce(0) { $0 + $1 }
}


let result = solve()
print(result)

