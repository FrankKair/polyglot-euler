extension String {
  var hasUniqueCharacters: Bool {
    var uniqueChars = Set<String>()
    for char in self.characters {
      if uniqueChars.contains(String(char)) {
        return false
      }
      uniqueChars.insert(String(char))
    }
    return true
  }
}