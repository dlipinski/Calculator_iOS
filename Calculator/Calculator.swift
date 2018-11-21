//
//  Calculator.swift
//  Calculator
//
//  Created by Dawid Lipnski on 21/11/2018.
//  Copyright © 2018 Dawid Lipnski. All rights reserved.
//

import UIKit

class Calculator: NSObject {
    
    var previousResultLabel: UILabel
    var currentResultLabel: UILabel
    var operationLabel: UILabel
    
    var currentExp: String = "  "
    var currentOpperation = ""
    var currentResult:Double = 0
    
    
    init(previousResult: UILabel, currentResult: UILabel, operationLabel: UILabel){
        self.previousResultLabel = previousResult
        self.currentResultLabel = currentResult
        self.operationLabel = operationLabel
        previousResultLabel.text = " "
        currentResultLabel.text = " "
        operationLabel.text = " "
    }
    
    func numberClicked(number: String) {
        if !(currentExp == "0" && number == "0") {
            currentExp += number
            currentResultLabel.text = currentExp
        }
    }
    
    func dotClicked() {
        if (currentResultLabel.text == " ") {
            currentExp += "0."
            currentResultLabel.text = currentExp
        } else if (!currentExp.contains(".")) {
            currentExp += "."
            currentResultLabel.text = currentExp
        }
    }
    
    func clearClicked() {
        currentResult = 0
        currentExp = ""
        currentOpperation = ""
        currentResultLabel.text = " "
        previousResultLabel.text = " "
        operationLabel.text = " "
    }
    
    func operationClicked(operation: String) {
        if (currentOpperation == "") {
            currentOpperation = "+"
        }
        currentExp = currentExp.trimmingCharacters(in: .whitespacesAndNewlines)
        executeOperation()
        operationLabel.text = "  " + operation
        if (floor(currentResult) == currentResult) {
            previousResultLabel.text = String(Int(currentResult))
        } else {
            previousResultLabel.text = String(currentResult)
        }
        currentExp = " "
        currentResultLabel.text = currentExp
        currentOpperation = operation
    }
    func equalClicked() {
        currentExp = currentExp.trimmingCharacters(in: .whitespacesAndNewlines)
        executeOperation()
        operationLabel.text =  " "
        if (floor(currentResult) == currentResult) {
            currentExp = String(Int(currentResult))
        } else {
            currentExp = String(currentResult)
        }
        currentResultLabel.text = currentExp
        currentExp = " "
        previousResultLabel.text = currentExp
        
    }
   
    private func executeOperation() {
        let number = (currentExp as NSString).doubleValue
        switch (currentOpperation) {
        case "+":
            currentResult += number
        case "-":
            currentResult -= number
        case "×":
            currentResult *= number
        case "÷":
            currentResult /= number
        default:
            currentResult = 0
        }
    }
    
}
