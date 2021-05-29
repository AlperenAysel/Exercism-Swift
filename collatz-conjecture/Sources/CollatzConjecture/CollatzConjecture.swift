//Solution goes in Sources
struct CollatzConjecture {

    static func steps(_ num: Int) throws -> Int {
        guard num > 0 else {
            throw Errors.UnexpectedValue
        }
        
        var steps = 0
        var num = num
        
        while num > 1 {
            if num % 2 == 0 {
                num /= 2
            } else {
                num = num * 3 + 1
            }
            steps += 1
        }
        
        return steps
    }
}

enum Errors: Error {
    case UnexpectedValue
}
