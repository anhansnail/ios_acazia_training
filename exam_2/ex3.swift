//
//  ex3.swift
//  exam_2
//
//  Created by Minh Anh on 11/26/21.
//  Copyright © 2021 Minh Anh. All rights reserved.
//

import Foundation

/*
 Exam 3:
 Piggy Bank
 You just returned from a trip to South America and you came back with three different kinds of currencies. Let's convert them to USD!
 */
func exchangeUSD(money: Int, currency: String) -> String {
    let metaData: [String: Float] = ["peso": 0.023, "vnd": 0.000044, "canada": 0.79]
    let result = {(money: Float, rate: Float) -> Float in
        return money*rate
    }
    print(" \(money) peso we get \(result(Float(money), metaData[currency]!)) usd")
    return ""
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
