import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func cButtonPressed(_ sender: UIButton) {
        Calculator.setDefalutNumber()
        answerLabel.text = "0"
    }
    @IBAction func plusMinButtonPressed(_ sender: UIButton) {
    }
    @IBAction func percentButtonPressed(_ sender: UIButton) {
    }
    @IBAction func divisionButtonPressed(_ sender: UIButton) {
        operationButtonPressed(with: .division)
        answerLabel.text = "0"
    }
    @IBAction func multiplicationButtonPressed(_ sender: UIButton) {
        operationButtonPressed(with: .multiplication)
        answerLabel.text = "0"
    }
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        operationButtonPressed(with: .subtraction)
        answerLabel.text = "0"
    }
    @IBAction func plusButtonPressed(_ sender: UIButton) {
        operationButtonPressed(with: .addition)
        answerLabel.text = "0"
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        Calculator.calculate()
        Calculator.calculate()
        answerLabel.text = Calculator.resultNumber
    }

    @IBAction func floatingPoint(_ sender: UIButton) {
        addCurrentNumber(with: ",")
    }
    @IBAction func zero(_ sender: UIButton) {
        guard answerLabel.text != "0" else { return }
        addCurrentNumber(with: "0")
    }
    @IBAction func one(_ sender: UIButton) {
        addCurrentNumber(with: "1")
    }
    @IBAction func tow(_ sender: UIButton) {
        addCurrentNumber(with: "2")
    }
    @IBAction func three(_ sender: UIButton) {
        addCurrentNumber(with: "3")
    }
    @IBAction func four(_ sender: UIButton) {
        addCurrentNumber(with: "4")
    }
    @IBAction func five(_ sender: UIButton) {
        addCurrentNumber(with: "5")
    }
    @IBAction func six(_ sender: UIButton) {
        addCurrentNumber(with: "6")
    }
    @IBAction func seven(_ sender: UIButton) {
        addCurrentNumber(with: "7")
    }
    @IBAction func eigth(_ sender: UIButton) {
        addCurrentNumber(with: "8")
    }
    @IBAction func nine(_ sender: UIButton) {
        addCurrentNumber(with: "9")
    }

    func addCurrentNumber(with number: String) {
        Calculator.currentNumber += "\(number)"
        answerLabel.text = Calculator.currentNumber
    }

    func operationButtonPressed(with operation: MathematicalOperations ){
        Calculator.operation = operation
        Calculator.setDefalutNumber()
    }


}

