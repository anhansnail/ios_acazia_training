//
//  ex5.swift
//  exam_2
//
//  Created by Minh Anh on 11/26/21.
//  Copyright © 2021 Minh Anh. All rights reserved.
//

import Foundation

/*
 Exam 5:
 Palindrome
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
