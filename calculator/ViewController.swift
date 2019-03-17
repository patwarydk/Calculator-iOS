//
//  ViewController.swift
//  calculator
//
//  Created by Mac on 14/11/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var numberlabel: UILabel!
    
    
    var operation = true
    
    
    
    //appending number to label
    func Addnumberfunc(number:String)
    {
        
        var textnum = String(numberlabel.text!)
        
        
        if operation {

          textnum = ""
            operation = false


        }
        
        
        textnum = textnum + number
        
        numberlabel.text = textnum
    
        
    }
    
    
    
    

    //clear button action
    @IBAction func acaction(_ sender: Any) {
        
        
        numberlabel.text = "0"
        
        operation = true
        
    
        
    }
    
    
    //number making negitive
    @IBAction func some(_ sender: Any) {
        
        
        var textnum = String(numberlabel.text!)
        
        textnum = "-" + textnum
        
        numberlabel.text = textnum
        
        operation = true
        
        
        
    }
    
    
    //percent button
    @IBAction func percentage(_ sender: Any) {
        
        
        var number1 = Double(numberlabel.text!)
        
        number1 = number1!/100.0
        
        numberlabel.text = String(number1!)
    
        operation = true
        
    
    }
    
    @IBAction func divide(_ sender: Any) {
        op = "/"
        
        number1 = Double(numberlabel.text!)
        
        
        operation = true
        

        
    }
    
    
    @IBAction func seven(_ sender: Any) {
        
        Addnumberfunc(number: "7")
        
        
    }
    
    @IBAction func eight(_ sender: Any) {
        
        
        Addnumberfunc(number: "8")
        
    
    }
    
    
    @IBAction func nine(_ sender: Any) {
        
        Addnumberfunc(number: "9")
        
    }
    
    
    var op = "+"
    var number1 : Double?
    
    @IBAction func mul(_ sender: Any) {
        
        
        op = "*"
        
        number1 = Double(numberlabel.text!)
    
        operation = true
        
        
    }
    
    
    
    
    @IBAction func four(_ sender: Any) {
        
        
        Addnumberfunc(number: "4")
        
        
        
    }
    
    @IBAction func five(_ sender: Any) {
        
        Addnumberfunc(number: "5")
        
        
    }
    
    @IBAction func six(_ sender: Any) {
        
        Addnumberfunc(number: "6")
        
        
    }
    @IBAction func minus(_ sender: Any) {
        op = "-"
        
        number1 = Double(numberlabel.text!)
        
        
        operation = true
        
        
    }
    @IBAction func one(_ sender: Any) {
        
        Addnumberfunc(number: "1")
        
    }
    
    @IBAction func two(_ sender: Any) {
        
        
        Addnumberfunc(number: "2")
        
    }
    @IBAction func three(_ sender: Any) {
        
        Addnumberfunc(number: "3")

    
    }
    
    @IBAction func plus(_ sender: Any) {
        
        op = "+"
        
        number1 = Double(numberlabel.text!)
        
        
        operation = true
        
        
    }
    @IBAction func zero(_ sender: Any) {
        
        Addnumberfunc(number: "0")
    }
    
    @IBAction func dot(_ sender: Any) {
        
        Addnumberfunc(number: ".")
        
    }
    
    @IBAction func eqauls(_ sender: Any) {
        
        
        
        
        let number2 = Double(numberlabel.text!)
        
        var result:Double?
        
        switch op {
        case "*":
            result = number1! * number2!
        case "/":
            result = number1! / number2!
            
        case "-":
            result = number1! - number2!
            
        case "+":
            result = number1! + number2!
        
        default:
            result = 0.0
            
            
        }
        
    
        numberlabel.text = String(result!)

        operation = true
    
        
        
    }
    
    
    
    
    
    
}

