//Solution goes in Sources
import Foundation

struct ScaleGenerator {
    let tonic: String
    let name: String
    let pattern: String
    
    init(tonic: String, scaleName: String, pattern: String = "mmmmmmmmmmmm") {
        self.tonic = tonic
        self.name = "\(tonic.capitalized) \(scaleName)"
        self.pattern = pattern
    }
    
    func pitches() -> [String] {
        let sharps = ["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#"]
        let flats  = ["A", "Bb", "B", "C", "Db", "D", "Eb", "E", "F", "Gb", "G", "Ab"]
        let scale: [String]
        
        if "dFg".contains(tonic.first!) || tonic.last == "b" {
            scale = flats
        }
        else {
            scale = sharps
        }
        
        let i = scale.index(of: tonic.capitalized)!
        
        let pitches = Array(scale[i...] + scale[..<i])
        
        var res = [0]
        for x in pattern {
            res.append(res.last! + Array("_mMA").index(of: x)!)
        }
        
        guard res.removeLast() == 12 else {
            return []
        }
        
        return res.map { pitches[$0] }
    }
}
