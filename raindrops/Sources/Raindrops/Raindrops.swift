//Solution goes in Sources
struct Raindrops {
    var number: Int
    
    init(_ number: Int) {
        self.number = number
    }
    
    private static let harmonics = [
        (3, "Pling"),
        (5, "Plang"),
        (7, "Plong")
    ]
    
    var sounds: String {
        let resultingString = Raindrops.harmonics.reduce("") {
            $0 + (number % $1.0 == 0 ? $1.1 : "")
        }
        
        return resultingString.isEmpty ? String(number) : resultingString
    }
}
