//Solution goes in Sources
struct GradeSchool {
    var roster = [Int:[String]] ()

    mutating func addStudent(_ name: String, grade: Int) -> Void {
        var students = roster[grade] ?? []
        students.append(name)
        roster.updateValue(students, forKey: grade)
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        roster[grade] ?? []
    }
    
    var sortedRoster: [Int:[String]] {
        var sortedGrades = [Int:[String]] ()
        for (grade, students) in roster {
            sortedGrades[grade] = students.sorted()
        }
        return sortedGrades
    }
}
