//Solution goes in Sources
struct WordCount {
    let words: String

    func count() -> [String: Int] {
        words.split { !$0.isLetter && !$0.isNumber }.reduce(into: [:]) { count, word in
            count[String(word).lowercased(), default: 0] += 1
        }
    }
}
