//
//  ViewController.swift
//  Prime Checker
//
//  Created by Chatterjee, Snigdhaman on 20/12/15.
//  Copyright © 2015 Chatterjee, Snigdhaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    
    @IBAction func checkButton(sender: AnyObject) {
        
        if let inputNumber = Int(inputTextField.text!) {
            let isPrime = checkForPrime(inputNumber)
            if isPrime {
                outputLabel.text = "Number \(inputNumber) is Prime!!!"
            }
            else {
                outputLabel.text = "Number \(inputNumber) is not Prime."
            }
        }
        else {
            outputLabel.text = "Please enter a number"
        }
        
    }
    
    func checkForPrime(num:Int) -> Bool {
        if num == 1 || num == 0 {
            return false
        }
        for var i = 2; i <= (num/2); i++ {
            if num%i == 0 {
                return false
            }
        }
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

