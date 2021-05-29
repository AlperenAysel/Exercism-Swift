//Solution goes in Sources
import Foundation

enum Plant: Character {
    case radishes = "R"
    case clover = "C"
    case grass = "G"
    case violets = "V"
}

struct Garden {
    var rows: [Substring]
    var children: [String]?

    init(_ diagram: String, children: [String] = ["Alice", "Bob", "Charlie", "David",
    "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph", "Kincaid", "Larry"]) {
        self.rows = diagram.split(separator: "\n")
        self.children = children.sorted()
    }
}

extension Garden {
    func plantsForChild(_ name: String) -> [Plant] {
        guard let index = children?.firstIndex(of: name) else { return [] }
        let plants = rows[0].windowFor(index) + rows[1].windowFor(index)
        return plants.map {plant in return (Plant.init(rawValue: plant)!)}
    }
}

extension Substring {
    func windowFor(_ index: Int) -> String {
        let str = self
        let start = str.index(str.startIndex, offsetBy: String.IndexDistance(index * 2))
        let end = str.index(str.startIndex, offsetBy: String.IndexDistance(index * 2 + 2))
        let range = start..<end
        let mySubstring = str[range]
        return String(mySubstring)
    }
}
