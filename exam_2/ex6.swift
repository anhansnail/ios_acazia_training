//
//  ex6.swift
//  exam_2
//
//  Created by Minh Anh on 11/26/21.
//  Copyright © 2021 Minh Anh. All rights reserved.
//

import Foundation

/*
 Exam 6:
 Rock, Paper, Scissors
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
