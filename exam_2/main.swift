//
//  main.swift
//  exam_2
//
//  Created by Minh Anh on 11/24/21.
//  Copyright © 2021 Minh Anh. All rights reserved.
//

import Foundation

func displayInitial() -> String {
    print("*******************************************")
    print("**VV*******VV**MMM*****MMM*******AAA*******")
    print("***VV*****VV***MM*M***M*MM******AA*AA******")
    print("****VV***VV****MM**M*M**MM*****AA***AA*****")
    print("*****VV*VV*****MM***M***MM****AAAAAAAAA****")
    print("******VVV******MM*******MM***AA*******AA***")
    print("*******V*******MM*******MM**AA*********AA**")
    print("*******************************************")
    return ""
}

func quadraticEquation(a: Float, b: Float, c: Float) -> String {
    var x1, x2 :Float
    if a != 0 {
        let delta = b*b - 4*a*c
        if delta < 0 {
            print("Vo nghiem")
        } else if (delta == 0) {
            x1 = -(b/(2*a))
            print("Phuong trinh co nghiem kep: x1 = x2 = \(x1)")
        } else {
            x1 =  (-(b) - sqrt(delta))/(2*a)
            x2 =  (-(b) + sqrt(delta))/(2*a)
            print("Phuong trinh co nghiem: x1 = \(x1), x2= \(x2)")
        }
    }
    return ""
}
/*
 Write a program that prints the numbers from 1 to 100. But for multiples of 3 print "Fizz" instead of the number and for the multiples of 5 print "Buzz". For numbers which are multiples of both 3 and 5 print "FizzBuzz".
 */

func fizzBuzz(a: Int) -> String {
    if a >= 1 {
        for index in 1...a {
            if (index % 3) == 0 {
                print("Fizz")
            } else if (index % 3) == 0 {
                print("Buzz")
            } else {
                print("\(index)")
            }
        }
    }
    return ""
}

/*
 Create a Palindrome checker by iterating through an array.
 */
func palindromeChecker(a: [Int]) -> String {
    let length = a.count
    let _ = length/2
    var check = 0
    for (index, _) in a.enumerated() {
        if a[index] != a[length - index - 1] {
            check += 1
        }
    }
    if check > 0 {
        print("Khong doi xung")
    } else {
        print("Doi xung")
    }
    return ""
}
/*
 You just returned from a trip to South America and you came back with three different kinds of currencies. Let's convert them to USD!
 */
func exchangeUSD(money: Int, currency: String) -> String {
    var result: Double
    switch currency {
    case "peso":
        result = Double(money)*0.023
        print("\(money) peso we get \(result) usd")
    case "vnd":
        result = Double(money)*0.000044
        print("\(money) vnd we get \(result) usd")
    case "canada":
        result = Double(money)*0.79
        print("\(money) canada dola we get \(result) usd")
    default:
        print("We have no \(currency) currency")
    }
    return ""
}
/*
 In this lesson, you’ve learned about and explored the power of functions. In this project, you’ll be honing your knowledge of functions and previous Swift concepts by building a rock, paper, scissors game!
 */
func checkWinner(a: String, b: String) -> Int {
    let r = "rock"
    let p = "paper"
    let s = "scissor"
    if ((a == r && b == s) || (a == p && b == r) || (a == s && b == p)) {
        return 1
    }
    return 0
}
func random() -> String {
    let inputs = ["rock", "paper", "scissor"]
    let a = inputs.randomElement()
    let b = inputs.randomElement()
    print("A ra \(a), B ra \(b)")
    if a == b {
        print("Ket qua A vs B Hoa nhau")
    } else {
        checkWinner(a: a!, b: b!) == 1 ? print("A thang B") : print("B thang A")
    }
    return ""
}
func quadraticEquationMain () {
    print("Welcome to resolve quadratic equation feature:")
    print("Please text a, b, c following \"ax^2 + bx + c = 0\": ")
    var a, b, c: Float?
    a = Float(readLine()!)
    b = Float(readLine()!)
    c = Float(readLine()!)
    if a != 0 {
        quadraticEquation(a: a!, b: b!, c: c!)
    } else {
        print("Error quadratic equation")
    }
    return
}
func exchangeUSDMain () {
    let currencies = ["peso", "vnd", "canada"]
    print("Welcome to exchange USD feature:")
    print("Our change service currency 1: peso, 2: vnd, 3: canada")
    print("Press currency and money that you want to change following money, currency")
    var money: Int?
    var currency: String?
    money = Int(readLine()!)
    currency = readLine()
    while !currencies.contains(currency!) {
        print("We have no \(currency!) currency, please press other:")
        currency = readLine()!
    }
    exchangeUSD(money: money!, currency: currency!)
    
    //    money = Int(readLine()!)!
    //    currency = readLine()!
    //    while !currencies.contains(currency) {
    //        print("We have no \(currency) currency, please press other:")
    //        currency = readLine()!
    //    }
    //    exchangeUSD(money: money, currency: currency)
}
func fizzBuzzMain () {
    print("Welcome to fizzbuzz feature:")
//    print("Please press end of range interger number greater than 1:")
//    let end = Int(readLine()!)
    fizzBuzz(a: 100)
}
func palindromeCheckerMain () {
    print("Welcome to palindrome checker feature:")
    print("Please length of numbers: ")
    let length = Int(readLine()!)
    var palinderome: [Int]?
    print(length)
    if (length! > 1) {
        for index in 0...(length! - 1) {
            palinderome?.append(Int(readLine()!)!)
        }
    }
    print(palinderome)
}
func pokemonMain () {
    
}
func byeFunction () {
    
}
func introduction() {
    var choice = 0
    let elements = [1, 2, 3, 4, 5, 6, 7, 8]
    repeat {
        print("1: Display your initials on the screen in block letters and create an ASCII art.")
        print("2: Write a Swift program that solves the quadratic equation.")
        print("3: You just returned from a trip to South America and you came back with three different kinds of currencies. Let's convert them to USD!")
        print("4: Write a program that prints the numbers from 1 to 100. But for multiples of 3 print Fizz instead of the number and for the multiples of 5 print Buzz. For numbers which are multiples of both 3 and 5 print FizzBuzz.")
        print("5: Create a Palindrome checker by iterating through an array.")
        print("6: In this lesson, you’ve learned about and explored the power of functions. In this project, you’ll be honing your knowledge of functions and previous Swift concepts by building a rock, paper, scissors game!")
        print("7: In this project, you will be using Swift classes to help Professor Oak categorize all the different Pokémons into an electronic device — a Pokédex.")
        print("8: Out:")
        print("please choose choice your feature: ")
        choice = Int(readLine()!) ?? 0
    } while (!elements.contains(choice))
    
    if elements.contains(choice) {
        switch choice {
        case 1:
            displayInitial()
        case 2:
            quadraticEquationMain()
        case 3:
            exchangeUSDMain()
        case 4:
            fizzBuzzMain()
        case 5:
            palindromeCheckerMain()
        case 6:
            random()
        case 7:
            pokemonMain()
        case 8:
            byeFunction()
        default:
            print("b")
        }
    }
    print("\(choice)")
    
}
introduction()
//var choice = readLine()

//random()
//exchangeUSD(money: 123, currency: "vnd")
//palindromeChecker(a: [1, 2, 2, 1])
//quadraticEquation(a: 1, b: 5, c: 1)
//fizzBuzz(a: 100)


