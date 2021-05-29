//Solution goes in Sources
import Foundation


class Squares {
    let number: Int
    var differenceOfSquares: Int {
        squareOfSum - sumOfSquares
    }
    var sumOfSquares: Int {
        var sum = 0
        for num in 1...number {
            sum += num*num
        }
        return sum
    }
    var squareOfSum: Int {
        var sum = 0
        for num in 1...number {
            sum += num
        }
        return sum*sum
    }
    
    init(_ number: Int) {
        self.number = number
    }
}
