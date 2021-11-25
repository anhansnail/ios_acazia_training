//
//  main.swift
//  exam_2
//
//  Created by Minh Anh on 11/24/21.
//  Copyright © 2021 Minh Anh. All rights reserved.
//

import Foundation
//import SwiftJSON

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
            print("There's no solution")
        } else if (delta == 0) {
            x1 = -(b/(2*a))
            print("There are 2 results same solution: x1 = x2 = \(x1)")
        } else {
            x1 =  (-(b) - sqrt(delta))/(2*a)
            x2 =  (-(b) + sqrt(delta))/(2*a)
            print("There are 2 solutions: x1 = \(x1), x2= \(x2)")
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
        print("The chain is not palindrome")
    } else {
        print("The chain is palindrome")
    }
    return ""
}
/*
 You just returned from a trip to South America and you came back with three different kinds of currencies. Let's convert them to USD!
 */
func exchangeUSD(money: Int, currency: String) -> String {
    //    var result: Double
    let metaData: [String: Float] = ["peso": 0.023, "vnd": 0.000044, "canada": 0.79]
    let result = {(money: Float, rate: Float) -> Float in
        return money*rate
    }
    print(" \(money) peso we get \(result(Float(money), metaData[currency]!)) usd")
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
    print("A got \(a!), B got \(b!)")
    if a == b {
        print("Result A pair B ")
    } else {
        checkWinner(a: a!, b: b!) == 1 ? print("A grater B") : print("B grater A")
    }
    return ""
}
func quadraticEquationMain () {
    print("Welcome to resolve quadratic equation feature:")
    print("Please text a, b, c following \"ax^2 + bx + c = 0\": ")
    var a: Float? = 0
    var b: Float? = 0
    var c: Float? = 0
    a = Float(readLine()!) ?? a
    b = Float(readLine()!) ?? b
    c = Float(readLine()!) ?? c
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
    var money: Int? = 0
    var currency: String? = ""
    money = Int(readLine()!) ?? money
    currency = readLine()
    while !currencies.contains(currency!) {
        print("We have no \(currency!) currency, please press other:")
        currency = readLine()!
    }
    exchangeUSD(money: money!, currency: currency!)
    return
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
    var palinderome: [Int] = []
    if (length! > 1) {
        for index in 0..<(length!) {
            print("Please press number \(index+1)")
            var a:Int? = 0
            a = Int(readLine()!) ?? a
            palinderome.append(a!)
        }
    }
    palindromeChecker(a: palinderome)
}
enum pokemonTypes {
    case Bug,
    Dark,
    Dragon,
    Electric,
    Fairy,
    Fighting,
    Fire,
    Flying,
    Ghost,
    Grass,
    Ground,
    Ice,
    Normal,
    Poison,
    Psychic,
    Rock,
    Steel,
    Water
}
class pokemonObject {
    var id: Int
    var name: String
    var captured: Bool
    var imgUrl: String
    var pokemonTypes: [String]
    
    init(id: Int, name: String, captured: Bool, imgUrl: String, pokemonTypes: [String]) {
        self.id = id
        self.name = name
        self.captured = captured
        self.imgUrl = imgUrl
        self.pokemonTypes = pokemonTypes
    }
    func info() -> String {
        print("Pokemon infomation:\n  id: \(self.id), name: \(self.name), captured: \(self.captured), iamge url: \(self.imgUrl), category: \(self.pokemonTypes)")
        return ""
    }
}

func pokemonMain () {
    var pokemons: [pokemonObject] = []
    pokemons += [
        pokemonObject(id: 1, name: "Bulbasaur", captured: false, imgUrl: "http://img.pokemondb.net/artwork/bulbasaur.jpg", pokemonTypes: ["Grass", "Poison"]),
        pokemonObject(id: 2, name: "Ivysaur", captured: false, imgUrl: "http://img.pokemondb.net/artwork/ivysaur.jpg", pokemonTypes: ["Grass", "Poison"]),
        pokemonObject(id: 3, name: "Venusaur", captured: false, imgUrl: "http://img.pokemondb.net/artwork/venusaur.jpg", pokemonTypes: ["Grass", "Poison"]),
        pokemonObject(id: 4, name: "Charmander", captured: false, imgUrl: "http://img.pokemondb.net/artwork/charmander.jpg", pokemonTypes: ["Fire"])
    ]
    
    let displayPokemonList = {(pokemons: [pokemonObject]) -> String in
        if pokemons.count > 1 {
            var check = 0
            for (pokemon) in pokemons {
                check += 1
                print("Pokemon infomation number \(check):\n  id: \(pokemon.id), name: \(pokemon.name), captured: \(pokemon.captured), iamge url: \(pokemon.imgUrl), category: \(pokemon.pokemonTypes)")
            }
        } else {
            // item could not be found
        }
        return ""
    }
    let pokemonInfoById = {(value: Int, pokemons: [pokemonObject]) -> String in
        if let result = pokemons.enumerated().first(where: {$0.element.id == value}) {
            result.element.info()
        } else {
            print("We don't have this Pokemon by id: \(value)")
        }
        print(pokemons.count)
        return ""
    }
    let pokemonInfoByName = {(value: String, pokemons: [pokemonObject]) -> String in
        if let result = pokemons.enumerated().first(where: {$0.element.name == value}) {
            result.element.info()
        } else {
            print("We don't have this Pokemon by name: \(value)")
        }
        return ""
    }
    let pokemonListByCategory = {(value: String, pokemons: [pokemonObject]) -> String in
        var filterResult: [pokemonObject] = []
        print("Pokemon info belong to \(value) category:")
        for pokemon in pokemons {
            if pokemon.pokemonTypes.contains(value) {
                pokemon.info()
            }
        }
        return ""
    }
    var feature = 0
    let elements = [1, 2, 3, 4, 5]
    repeat {
        print("1: Display list pokemon")
        print("2: Get pokemon info by id.")
        print("3: Get pokemon info by name.")
        print("4: Get list pokemon by category")
        print("5: Out:")
        print("please choose choice your feature: ")
        feature = Int(readLine()!) ?? 0
    } while (!elements.contains(feature))
    
    if elements.contains(feature) {
        switch feature {
        case 1:
            displayPokemonList(pokemons)
        case 2:
            print("Press Pokemon Id that you impress: ")
            let poId = Int(readLine()!) ?? 0
            pokemonInfoById(poId, pokemons)
        case 3:
            print("Press Pokemon Name that you impress: ")
            let poName = String(readLine()!)
            pokemonInfoByName(poName, pokemons)
        case 4:
            print("Press Pokemon Category Nam that you impress: ")
            let poCategoryName = String(readLine()!)
            pokemonListByCategory(poCategoryName, pokemons)
        case 5:
            byeFunction()
            break
        default:
            break
        }
    }
}
func byeFunction () {
    print("Bye")
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
            break
        }
    }
}


pokemonMain()
//introduction()
//palindromeCheckerMain()
//var choice = readLine()
//random()
//exchangeUSD(money: 123, currency: "vnd")
//palindromeChecker(a: [1, 2, 2, 1])
//quadraticEquation(a: 1, b: 5, c: 1)
//fizzBuzz(a: 100)


