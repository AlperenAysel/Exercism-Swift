//Solution goes in Sources
struct SecretHandshake {
    let commands: [String]
    
    init(_ num: Int) {
        var commands = [String]()
        
        if num & 1 << 0 != 0 {
            commands.append("wink")
        }
        
        if num & 1 << 1 != 0 {
            commands.append("double blink")
        }
        
        if num & 1 << 2 != 0 {
            commands.append("close your eyes")
        }
        
        if num & 1 << 3 != 0 {
            commands.append("jump")
        }
        
        if num & 1 << 4 != 0 {
            commands = commands.reversed()
        }
        
        self.commands = commands
    }
}
