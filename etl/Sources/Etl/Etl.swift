//Solution goes in Sources
class ETL {
    static func transform(_ original: [Int : [String]]) -> [String : Int] {
        var etl: [String : Int] = [:]
        for item in original {
            for value in item.value {
                etl[value.lowercased()] = item.key
            }
        }
        return etl
    }
}
