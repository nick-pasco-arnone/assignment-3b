// Created on: October 16
// Created by: Nicholas Pasco-Arnone
// Created for: ICS3U
// This program calculates the price of pizza 

import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    
    let instructionLabel = UILabel()
    let pizzaSizeTextField = UITextField()
    let numberOfToppingssTextField = UITextField()
    let checkButton = UIButton()
    let answerLabel = UILabel()
    
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.239215686917305, green: 0.674509823322296, blue: 0.968627452850342, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "Please enter order"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        pizzaSizeTextField.borderStyle = UITextBorderStyle.roundedRect
        pizzaSizeTextField.placeholder = "Enter size (Extra large or Large)"
        view.addSubview(pizzaSizeTextField)
        pizzaSizeTextField.translatesAutoresizingMaskIntoConstraints = false
        pizzaSizeTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        pizzaSizeTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        numberOfToppingssTextField.borderStyle = UITextBorderStyle.roundedRect
        numberOfToppingssTextField.placeholder = "Enter number of toppings 1-4"
        view.addSubview(numberOfToppingssTextField)
        numberOfToppingssTextField.translatesAutoresizingMaskIntoConstraints = false
        numberOfToppingssTextField.topAnchor.constraint(equalTo: pizzaSizeTextField.bottomAnchor, constant: 20).isActive = true
        numberOfToppingssTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        checkButton.setTitle("Calculate", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.titleLabel?.textAlignment = .center
        checkButton.addTarget(self, action: #selector(checkNumberOfStudents), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo:numberOfToppingssTextField.bottomAnchor, constant: 20).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    @objc func checkNumberOfStudents() {
        // check if there are too many students in the class 
        //input
        let sizePrice = (pizzaSizeTextField.text!)
        var sizePrice2 : Double = 0
        
        if sizePrice == "Large" {
            //output
             sizePrice2 = 6.00
        }
        if sizePrice == "Extra large" {
             sizePrice2 = 10.00
        }
        
        let numberOfToppings = (numberOfToppingssTextField.text!) 
        var numberOfToppings2 : Double = 0
        
        
        
        if numberOfToppings == "1" {
             numberOfToppings2 = 1.00
        }
        if numberOfToppings == "2" {
             numberOfToppings2 = 1.75
        }
        if numberOfToppings == "3" {
             numberOfToppings2 = 2.50
        }
        if numberOfToppings == "4" {
             numberOfToppings2 = 3.25
        }
        
        //numberOfToppings2 = 4
        //sizePrice2 = 2.55
        // subtotal of size and toppings
        var subtotal =
            numberOfToppings2 + sizePrice2
        
        // add 13% tax for total
        var total = subtotal * 1.13 
        answerLabel.text = String(total)
        
        
        }
     
         
    }
    
    var prefersStatusBarHidden: Bool {
        return true
    }


// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
