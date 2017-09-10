//: Playground - noun: a place where people can play

import UIKit

func loveCalculator(yourName:String,theirName:String) -> String{
    
    let loveScore:Int = Int(arc4random_uniform(101))
    
    if loveScore>80{
        return "Your score is: \(loveScore). Which me you are More compatible"
    }else if loveScore>40 && loveScore<=80{
        return "Your score is: \(loveScore). Which me you are average compatible"
    }else{
        return "Your score is: \(loveScore). Which me you are not compatible"
    }
}

print(loveCalculator(yourName: "Aditya", theirName: "Satya"))

