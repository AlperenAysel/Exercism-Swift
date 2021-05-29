//Solution goes in Sources
class Allergies {
    let score: UInt
    
    enum Allergy: UInt {
        case eggs = 1
        case peanuts = 2
        case shellfish = 4
        case strawberries = 8
        case tomatoes = 16
        case chocolate = 32
        case pollen = 64
        case cats = 128
        
    }
    
    func hasAllergy(_ allergy: Allergy) -> Bool {
        return score & allergy.rawValue != 0
    }
    
    init(_ givenAllergyMask: UInt) {
        score = givenAllergyMask
    }
}
