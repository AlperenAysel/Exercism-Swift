//Solution goes in Sources
import Foundation

class Grains {
    enum GrainsError: Error {
        case inputTooHigh(errorMessage: String)
        case inputTooLow(errorMessage: String)
    }
    
    static var total: UInt64 = UInt64.max
    
    static func square(_ input: Int) throws -> UInt64 {
        guard  input < 65 else {
            throw GrainsError.inputTooHigh(errorMessage: "Input[\(input)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        guard  input > 0  else {
            throw GrainsError.inputTooLow(errorMessage: "Input[\(input)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        return UInt64(1) << UInt64(input-1)
    }
}
