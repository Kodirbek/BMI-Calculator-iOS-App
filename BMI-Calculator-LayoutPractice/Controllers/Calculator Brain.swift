//
//  Calculator Brain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Abduqodir's MacPro on 2021/09/08.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    var bmiAdvice: String?
    var bmiColor: UIColor?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let BMIValue = weight / (height * height)
        
        if BMIValue < 18.5 {
            bmiAdvice = "Eat more snacks!"
            bmiColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        } else if BMIValue < 24.9 {
            bmiAdvice = "You are good to go!"
            bmiColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        } else {
            bmiAdvice = "Eat less sweets!"
            bmiColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
        
        bmi = BMI(value: BMIValue, advice: bmiAdvice!, color: bmiColor!)
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0) //Here, we used Nil Coalescing Operator to avoid ending up force unwrapping a nil value
        return bmiTo1DecimalPlace
    }
    
    func getBMIAdvice() -> String {
        return bmiAdvice ?? "nil"
    }
    
    func getUIColor() -> UIColor {
        return bmiColor ?? UIColor.clear
    }
    
}
