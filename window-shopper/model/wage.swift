//
//  wage.swift
//  window-shopper
//
//  Created by peretz on 2017-11-08.
//  Copyright © 2017 peretz. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage:Double, andPrice price:Double)->Int {
        return Int(ceil(price/wage))
    }
}
