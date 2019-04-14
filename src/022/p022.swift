import Foundation

extension String {
    func trimmed() -> String {
        return self.replacingOccurrences(of: "\\", with: "")
                   .replacingOccurrences(of: "\"", with: "")
    }

    func score() -> UInt32 {
        return self.unicodeScalars.map { $0.value - 64 }.reduce(0, +)
    }
}

func loadNames() -> [String] {
    let contents = try! String(contentsOfFile: "p022_names.txt", encoding: String.Encoding.utf8)
    return contents.trimmed()
                   .components(separatedBy: ",")
                   .sorted()
}

func nameScore(index: Int, name: String) -> Int {
    let score = name.score()
    let index = UInt32((index + 1))
    return Int(score * index)
}

func solve() -> Int {
    return loadNames().enumerated().map(nameScore).reduce(0, +)
}

let result = solve()
print(result)
