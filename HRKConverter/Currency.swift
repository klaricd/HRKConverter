//
//  Currency.swift
//  HRKConverter
//
//  Created by David Klaric on 14.05.2021..
//

import Foundation

struct Currency {
    var type = ""
    var sell = 0.00
    var buy = 0.00
    var mid = 0.00
}

func getCurrency() -> [Currency] {
    let currency1 = Currency(type: "EUR", sell: 7.54, buy: 7.49, mid:7.51)
    let currency2 = Currency(type: "USD", sell: 6.23, buy: 6.19, mid:6.15)
    let currency3 = Currency(type: "JPY", sell: 5.69, buy: 5.66, mid:5.63)
    let currency4 = Currency(type: "GBP", sell: 8.75, buy: 8.70, mid:8.72)
    let currency5 = Currency(type: "CAD", sell: 5.13, buy: 5.10, mid:5.09)
    
    return [currency1, currency2, currency3, currency4, currency5]
}
