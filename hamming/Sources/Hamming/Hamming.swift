//Solution goes in Sources
struct Hamming {
    
    static func compute(_ dna: String, against: String) -> Int? {
        
        let dna = dna
        let against = against
        
        guard dna.count == against.count else { return nil }
        
        return zip(dna, against).filter({$0.0 != $0.1}).count
    }
}
