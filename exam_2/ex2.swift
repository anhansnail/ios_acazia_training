//
//  ex2.swift
//  exam_2
//
//  Created by Minh Anh on 11/26/21.
//  Copyright © 2021 Minh Anh. All rights reserved.
//

import Foundation

/*
 Exam 2:
 Quadratic Formula
 Write a Swift program that solves the quadratic equation.
 */
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
