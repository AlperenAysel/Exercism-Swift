//Solution goes in Sources
import Foundation

public class Robot {
 var name: String
 init() {
  self.name = generateRobotName()
 }
 
 func resetName() {
  self.name = generateRobotName()
 }
}

func generateRobotName()->String {
 return "\(randomLet())\(randomLet())\(randNum())\(randNum())\(randNum())"
}

//Random Number
func randNum()->Int {
 return Int.random(in: 0..<10)
}
//Random Letter
func randomLet()->String {
 let alphabet = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
 let randomNumber = Int.random(in: 0..<26)
 return String(alphabet[randomNumber])
}
