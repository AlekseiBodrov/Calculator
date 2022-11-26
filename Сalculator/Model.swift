import Foundation

enum MathematicalOperations {
    case addition
    case subtraction
    case multiplication
    case division
}

class Calculator {
    static var currentNumber: String = ""
    private static var firstNumber: String = ""
    private static var secondNumber: String = ""
    static var resultNumber: String = ""
    static var operation: MathematicalOperations = .addition

    static func calculate() {
        if provarca() {
            let first = Double(firstNumber)!
            let second = Double(secondNumber)!

            switch operation {
            case .addition:
                let result = first + second
                resultNumber = "\(result)"
            case .subtraction:
                let result = first - second
                resultNumber = "\(result)"
            case .multiplication:
                let result = first * second
                resultNumber = "\(result)"
            case .division:
                let result = first / second
                resultNumber = "\(result)"
            }

        }
    }

    static func provarca() -> Bool{
        if firstNumber != "" {
            if currentNumber != ""{
                secondNumber = currentNumber
                return true
            }
        } else if currentNumber != "" {
            firstNumber = currentNumber
            return false
        }
        return false
    }

    static func setDefalutNumber() {
        currentNumber = ""
        firstNumber = ""
        secondNumber = ""
        resultNumber = ""
    }


}
