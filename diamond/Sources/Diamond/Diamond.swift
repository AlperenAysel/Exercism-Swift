//Solution goes in Sources
func makeDiamond(letter: String) -> [String] {
    let a: Unicode.Scalar = "A"
    let input = Unicode.Scalar(letter)
    let size = input!.value - a.value
    var result: [String] = []
    let sideTemplate = Array(repeating: " ", count: Int(size))
    for i in 0...size {
        let letter = String(UnicodeScalar(a.value + i)!)
        var side = sideTemplate
        side.insert(letter, at: Int(i))
        result.append((side.reversed().dropLast() + side).joined())
    }
    result += result.reversed().dropFirst()
    return result
}
