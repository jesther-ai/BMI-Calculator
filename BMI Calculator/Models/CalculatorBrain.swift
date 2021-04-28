//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Jesther Silvestre on 4/28/21.
//

import UIKit
struct CalculatorBrain {
    var bmiValue:BMI?
    
    func getBMIValue() -> Float {
        return bmiValue?.value ?? 0.0
    }
    func getAdvice()->String{
        return bmiValue?.advice ?? "No Advice"
    }
    func getColor() -> UIColor {
        return bmiValue?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    
    mutating func calculateBMI(height:Float, weight:Float) {
        let x = weight / (height*height)
        let y = Float(String(format: "%.2f", x))
        if x > 24.9 {
            bmiValue = BMI(value: y!, advice: "Eat more Pies", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }else if x > 18.5 && x < 24.9{
            bmiValue = BMI(value: y!, advice: "Fit as Fibble", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }else if x < 18.5{
            bmiValue = BMI(value: y!, advice: "Eat fewer Pies", color:#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
        
    }
    
    
}
