//Solution goes in Sources
struct NumberClassifier {
    enum Classification {
        case perfect
        case abundant
        case deficient
    }

    let number: Int
    let classification: Classification

    init(number: Int) {
        self.number = number

        let sum = (1...number/2).filter { number % $0 == 0 }.reduce(0, +)
        if sum == self.number {
            self.classification = .perfect
        } else if sum > self.number {
            self.classification = .abundant
        } else {
            self.classification = .deficient
        }
    }
}
