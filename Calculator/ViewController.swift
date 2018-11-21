//
//  ViewController.swift
//  Calculator
//
//  Created by Dawid Lipnski on 20/11/2018.
//  Copyright © 2018 Dawid Lipnski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calculator:Calculator!
    var curOp: String = ""
    var result: IntegerLiteralType = 0
    var currentOperation = ""
    
    @IBOutlet weak var previousResult: UILabel!
    @IBOutlet weak var currentResult: UILabel!
    @IBOutlet weak var operationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        calculator = Calculator(previousResult: previousResult, currentResult: currentResult, operationLabel: operationLabel)
    }
    
    @IBAction func OneClicked(_ sender: Any) {
        calculator.numberClicked(number: "1")
    }
    @IBAction func twoClicked(_ sender: Any) {
        calculator.numberClicked(number: "2")
    }
    @IBAction func threeClicked(_ sender: Any) {
        calculator.numberClicked(number: "3")
    }
    @IBAction func fourClicked(_ sender: Any) {
        calculator.numberClicked(number: "4")
    }
    @IBAction func fiveClicked(_ sender: Any) {
        calculator.numberClicked(number: "5")
    }
    @IBAction func sixClicked(_ sender: Any) {
        calculator.numberClicked(number: "6")
    }
    @IBAction func sevenClicked(_ sender: Any) {
        calculator.numberClicked(number: "7")
    }
    @IBAction func eightClicked(_ sender: Any) {
        calculator.numberClicked(number: "8")
    }
    @IBAction func nineClicked(_ sender: Any) {
        calculator.numberClicked(number: "9")
    }
    @IBAction func zeroClicked(_ sender: Any) {
        calculator.numberClicked(number: "0")
    }
    @IBAction func dotClicked(_ sender: Any) {
        calculator.dotClicked()
    }
    @IBAction func clearClicked(_ sender: Any) {
        calculator.clearClicked()
    }
    @IBAction func divideClicked(_ sender: Any) {
        calculator.operationClicked(operation: "÷")
    }
    @IBAction func multiplyClicked(_ sender: Any) {
        calculator.operationClicked(operation: "×")
    }
    @IBAction func substractClicked(_ sender: Any) {
        calculator.operationClicked(operation: "-")
    }
    @IBAction func addClicked(_ sender: Any) {
        calculator.operationClicked(operation: "+")
    }
    @IBAction func equalClicked(_ sender: Any) {
        calculator.equalClicked()
    }
    
}

