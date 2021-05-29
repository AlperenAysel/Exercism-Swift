//Solution goes in Sources
import Foundation

struct Clock: CustomStringConvertible, Equatable {

    let minutes: Int
    let description: String
    
    init(hours: Int, minutes: Int = 0) {
        let m = (hours * 60 + minutes) % 1440
        
        self.minutes = m < 0 ? m + 1440 : m
        description = String(format: "%.2i:%.2i", self.minutes / 60, self.minutes % 60)
    }

    func add(minutes: Int) -> Clock {
        return Clock(hours: 0, minutes: self.minutes + minutes)
    }
    
    func subtract(minutes: Int) -> Clock {
        return add(minutes: -minutes)
    }
    
    static func ==(lhs: Clock, rhs: Clock) -> Bool {
        return lhs.description == rhs.description
    }
}
