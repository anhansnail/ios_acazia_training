//
//  ex4.swift
//  exam_2
//
//  Created by Minh Anh on 11/26/21.
//  Copyright © 2021 Minh Anh. All rights reserved.
//

import Foundation

/*
 Exam 4:
 Fizz Buzz
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
func fizzBuzzMain () {
    print("Welcome to fizzbuzz feature:")
    //    print("Please press end of range interger number greater than 1:")
    //    let end = Int(readLine()!)
    fizzBuzz(a: 100)
}
