//
//  ViewController.swift
//  TesteUnitarioDIO
//
//  Created by user220237 on 8/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var generateNumberButton: UIButton!
    @IBOutlet weak var generateColorButton: UIButton!
    
    
    let maximumNumber = 100000
    
    lazy var testData: [Int] = {
        return (0..<maximumNumber).map { Int($0) }
    }()
    
    var evenNumbers = [Int]()
    
    var colors = ["Vermelho", "Laranja", "Amarelo", "Verde", "Azul"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateEvenNumber()
    }

    @IBAction func generateNumberButtonTapped(_ sender: UIButton) {
        label.text = generateRandomNumber()
    }
    
    
    @IBAction func generateColorButtonTapped(_ sender: UIButton) {
        label.text = generateRandomColor()
    }
    
    
    func generateRandomColor() -> String? {
        return colors.randomElement() ?? nil
    }
    
    func generateRandomNumber() -> String {
        guard let randomNumber = evenNumbers.randomElement() else { return ""}
        return String(randomNumber)
    }
    
    func generateEvenNumber() {
        for number in testData {
            if number % 2 == 0 {
                evenNumbers.append(number)
            }
        }
    }


}

