//
//  ViewController.swift
//  Simple Calculator
//
//  Created by Florian Jud on 18.03.17.
//  Copyright © 2017 Florian Jud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstNumberTxt: UITextField!
    @IBOutlet weak var secondNumberTxt: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        resultLabel.text = "Result is:     "
        
    }

    @IBAction func plusBtn(_ sender: Any) {
        
        if let firstNumber = Int(firstNumberTxt.text!) {
            if let secondNumber = Int(secondNumberTxt.text!) {
                result = firstNumber + secondNumber
                resultLabel.text = "Result is: \(String(result))"
            }
        }
        
    }
    
    @IBAction func minusBtn(_ sender: Any) {
        if let firstNumber = Int(firstNumberTxt.text!) {
            if let secondNumber = Int(secondNumberTxt.text!) {
                result = firstNumber - secondNumber
                resultLabel.text = "Result is: \(String(result))"
            }
        }
    }
    
    @IBAction func multiplyBtn(_ sender: Any) {
        if let firstNumber = Int(firstNumberTxt.text!) {
            if let secondNumber = Int(secondNumberTxt.text!) {
                result = firstNumber * secondNumber
                resultLabel.text = "Result is: \(String(result))"
            }
        }
        
    }
    
    @IBAction func divideBtn(_ sender: Any) {
        if let firstNumber = Int(firstNumberTxt.text!) {
            if let secondNumber = Int(secondNumberTxt.text!) {
                result = firstNumber / secondNumber
                resultLabel.text = "Result is: \(String(result))"
            }
        }
    }
    
    @IBAction func percentBtn(_ sender: Any) {
        if let firstNumber = Int(firstNumberTxt.text!) {
            if let secondNumber = Int(secondNumberTxt.text!) {
                result = firstNumber % secondNumber
                resultLabel.text = "Result is: \(String(result))"
            }
        }
    }
}

