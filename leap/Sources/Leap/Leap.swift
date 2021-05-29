//Solution goes in Sources
class Year {
    let calendarYear: Int
    let isLeapYear: Bool
    
    init (calendarYear: Int) {
        self.calendarYear = calendarYear
        if calendarYear % 4 == 0 && calendarYear % 100 != 0 {
            self.isLeapYear = true
        }
        else if calendarYear % 400 == 0 {
            self.isLeapYear = true
        }
        else {
            self.isLeapYear = false
        }
    }
}

