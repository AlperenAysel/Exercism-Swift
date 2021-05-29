//Solution goes in Sources

func toLimit(_ lastValue: Int, inMultiples: [Int]) -> Int {
        var sum = 0
        for number in 0..<lastValue {
            if inMultiples.contains(where: number.isMultiple) {
                sum += number
            }
        }
        return sum
}
