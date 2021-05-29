//Solution goes in Sources
struct Queens {
  let white, black: [Int]
  let canAttack: Bool
  let description: String

  init(white: [Int] = [0, 3], black: [Int] = [7, 3]) throws {
    guard white.count == 2 && black.count == 2 else {
      throw InitError.incorrectNumberOfCoordinates
    }
    guard (white + black).allSatisfy({ 0..<8 ~= $0 }) else {
      throw InitError.invalidCoordinates
    }
    guard white != black else {
      throw InitError.sameSpace
    }

    self.white = white
    self.black = black

    self.canAttack =
      white[0] == black[0]  // row
      || white[1] == black[1]  // column
      || abs(white[1] - black[1]) == abs(white[0] - black[0])  // diagonal

    self.description = (0..<8).map { x in
      (0..<8).map { y in
        switch [x, y] {
        case white: return "W"
        case black: return "B"
        default: return "_"
        }
      }.joined(separator: " ")
    }.joined(separator: "\n")
  }

  enum InitError: Error {
    case incorrectNumberOfCoordinates, invalidCoordinates, sameSpace
  }
}
