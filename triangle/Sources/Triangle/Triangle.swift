//Solution goes in Sources
struct Triangle {
    let kind: String

    init(_ a: Double, _ b: Double, _ c: Double){
        let sortedLegs = [a, b, c].sorted()
        
        switch (sortedLegs[0], sortedLegs[1], sortedLegs[2]) {
            case (let a, let b, let c) where a == 0 || a + b <= c:
                kind = "ErrorKind"
            case (let a, _, let c) where a == c:
                kind = "Equilateral"
            case (let a, let b, let c) where b == c || b == a:
                kind = "Isosceles"
            default:
                kind = "Scalene"
        }
    }
}
