//Solution goes in Sources
enum Planets: Double {
    case Mercury = 0.2408467
    case Venus = 0.61519726
    case Mars = 1.8808158
    case Jupyter = 11.862615
    case Saturn =  29.447498
    case Uranus = 84.016846
    case Neptune = 164.79132
}

class SpaceAge {
    let seconds: Double
    let onEarth: Double
    let secondsPerYearOnEarth = 31557600.0
    let onMercury: Double
    let onVenus: Double
    let onMars: Double
    let onJupiter: Double
    let onSaturn: Double
    let onUranus: Double
    let onNeptune: Double
    
    init(_ seconds: Int) {
        self.seconds = Double(seconds)
        onEarth = self.seconds / secondsPerYearOnEarth
        onMercury = onEarth / Planets.Mercury.rawValue
        onVenus = onEarth / Planets.Venus.rawValue
        onMars = onEarth / Planets.Mars.rawValue
        onJupiter = onEarth / Planets.Jupyter.rawValue
        onSaturn = onEarth / Planets.Saturn.rawValue
        onUranus = onEarth / Planets.Uranus.rawValue
        onNeptune = onEarth / Planets.Neptune.rawValue
    }
}
