//: Playground - noun: a place where people can play

/*
     Multiline comments
     in swift
*/
import UIKit

//Get Started

var str = "Hello, playground"

var integer = 23

var floatValue = 19.50

print(integer)

//Data Types

var myAge:Int = 24

myAge = 25

let myName:String = "Aditya"

let myAgeInTenYears = myAge + 10

let myFullName = myName + "Emani"

let myLegalName:String = "\(myName) Emani"

let myDetails = "\(myName), \(myAge)"

let number = 22

let text:String = "abc"

let boolean:Bool = true

let floatNumber:Float = 12.33

let doubleNumber:Double = 12.3333333333


//Functions

func firstFunction() {
    print("Hello World!")
}

firstFunction()

func getMilk(){
    print("Got to the shops!")
    print("Buy two cartons of milk!")
    print("Pay $2")
    print("come home")
}

getMilk()

func getMilk(howManyCartonsOfMilk: Int){
    print("Got to the shops!")
    print("Buy \(howManyCartonsOfMilk) cartons of milk!")
    let priceToPay = 2 * howManyCartonsOfMilk
    print("Pay $\(priceToPay)")
    print("come home")
}

getMilk(howManyCartonsOfMilk: 4)

func getMilk(howManyCartonsOfMilk: Int,howMuchMoneyRobotWasGiven: Int) -> Int{
    print("Got to the shops!")
    print("Buy \(howManyCartonsOfMilk) cartons of milk!")
    let priceToPay = 2 * howManyCartonsOfMilk
    let change = howMuchMoneyRobotWasGiven - priceToPay
    print("Pay $\(priceToPay)")
    print("come home")
    return change
}

var amountOfChange = getMilk(howManyCartonsOfMilk: 4,howMuchMoneyRobotWasGiven: 10)
print("The change returned is: \(amountOfChange)")
