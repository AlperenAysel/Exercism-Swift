//Solution goes in Sources

enum TranscriptionError: Error {
    case invalidNucleotide(errorMessage: String)
}

class Nucleotide {
    var dnaStrand = ""
    var rnaComplement = ""
    
    func complementOfDNA() throws -> String {
        for letter in dnaStrand {
            switch letter {
            case "G": self.rnaComplement += "C"
            case "C": self.rnaComplement += "G"
            case "T": self.rnaComplement += "A"
            case "A": self.rnaComplement += "U"
            default: throw TranscriptionError.invalidNucleotide(errorMessage: "\(letter) is not a valid Nucleotide")
            }
        }
        
        return self.rnaComplement
    }
    
    init(_ dnaStrand: String) {
        self.dnaStrand = dnaStrand.uppercased()
        self.rnaComplement = ""
    }
}
