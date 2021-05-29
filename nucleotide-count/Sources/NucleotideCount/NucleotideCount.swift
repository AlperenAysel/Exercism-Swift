//Solution goes in Sources
struct DNA {
    let dnaSet: Set<String> = ["A", "C", "G", "T"]
    var strand: String
    
    init?(strand: String) {
        for nucleotide in strand.characters {
            guard dnaSet.contains(String(nucleotide)) else { return nil }
        }
        
        self.strand = strand
    }
    
    func count(_ nucleotide: String) -> Int {
        guard nucleotide.characters.count == 1 else { return 0 }
        
        let nucleotideChar = nucleotide.characters.first
        return strand.characters.filter { $0 == nucleotideChar } .count
    }
    
    func counts() -> [ String : Int ] {
        var counts = [ String : Int ]()
        
        for nucleotide in dnaSet {
            counts[nucleotide] = count(nucleotide)
        }
        
        return counts
    }
}
