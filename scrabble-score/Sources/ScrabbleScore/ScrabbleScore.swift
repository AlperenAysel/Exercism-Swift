//Solution goes in Sources
class Scrabble {
    var score: Int

    init(_ word: String?) {
        self.score = Scrabble.score(word ?? "")
    }
    
    static func score(_ word: String) -> Int {
        var sum = 0
        for letter in word.lowercased() {
            switch letter {
            case "a", "e", "i", "o", "u", "l", "n", "r", "s", "t":
                sum += 1
            case "d", "g":
                sum += 2
            case "b", "c", "m", "p":
                sum += 3
            case "f", "h", "v", "w", "y":
                sum += 4
            case "k":
                sum += 5
            case "j", "x":
                sum += 8
            case "q", "z":
                sum += 10
            default: break
            }
        }
        return sum
    }

}
