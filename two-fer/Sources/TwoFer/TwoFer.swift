
func twoFer(name: String? = nil) -> String {
    if let forName = name {
        return "One for \(forName), one for me."
    } else {
        return "One for you, one for me."
    }
}
