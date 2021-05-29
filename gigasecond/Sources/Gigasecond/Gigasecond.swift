//Solution goes in Sources
import Foundation

class Gigasecond {
    var description = ""
    
    init?(from: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT")
        if let initialDate = dateFormatter.date(from: from) {
           let newDate = initialDate.addingTimeInterval(1000000000)
           description = dateFormatter.string(from: newDate)
        } else {
        return nil
        }
    }
}
