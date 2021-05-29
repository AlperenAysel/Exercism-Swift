//Solution goes in Sources
class Sieve {
    let count: Int
    var primes: [Int] {
        var arr = [Int]()
        arr += 2...count
        for i in 2 ..< count {
            var multiple = i * 2
            while multiple <= count {
                if let removeIn = arr.firstIndex(of: multiple) {
                    arr.remove(at: removeIn)
                }
                multiple += i
            }
        }
        return arr
    }
    
    init(_ count: Int) {
        self.count = count
    }
}
