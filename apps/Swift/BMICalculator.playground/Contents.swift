//: Playground - noun: a place where people can play

import UIKit

func bmiCalculator(weight:Double,height:Double) -> String{
    let bmi = weight/pow(height, 2)
    if bmi > 25{
        print("Your BMI is: \(bmi). You are overweight")
    }else if bmi<25 && bmi>18.5{
        print("Your BMI is: \(bmi). You are normal weight")
    }else{
        print("Your BMI is: \(bmi). You are under weight")
    }
    return ""
}

bmiCalculator(weight: 30, height: 1.5)
