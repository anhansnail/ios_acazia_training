//
//  main.swift
//  exam_2
//
//  Created by Minh Anh on 11/24/21.
//  Copyright © 2021 Minh Anh. All rights reserved.
//

import Foundation

func byeFunction () {
    print("Bye")
}

func main() {
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
        print("8: Out!")
        print("please choose your feature: ")
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
            break
        }
    }
}


main()

/* // test functions
 pokemonMain()
 palindromeCheckerMain()
 var choice = readLine()
 random()
 exchangeUSD(money: 123, currency: "vnd")
 palindromeChecker(a: [1, 2, 2, 1])
 quadraticEquation(a: 1, b: 5, c: 1)
 fizzBuzz(a: 100)
 */


