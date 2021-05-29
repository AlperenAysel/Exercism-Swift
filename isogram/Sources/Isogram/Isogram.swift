//Solution goes in Sources
struct Isogram {
    static func isIsogram(_ input: String) -> Bool {
        let letters = input.lowercased().filter({$0.isLetter})
        return letters.count == Set(letters).count
    }
}
