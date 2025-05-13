//
//  Double.swift
//  SwiftTradingAppTest
//
//  Created by Alexis Smith on 5/13/25.
//

import Foundation


extension Double {
    
    // converts double into currency with 2 decimal places
    /// ```
    ///  Converts 1234.56 to $1,234.56
    ///  Converts 1223456 to $12.35
    ///  Converts 0.123456 to $0.12
    /// ```
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    // converts double into currency as a string with 2 decimal places
    /// ```
    ///  Converts 1234.56 to "$1,234.56"
    /// ```
    
    func asCurrencyWith2Decimals()
    -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    // converts double into currency with 2-6 decimal places
    /// ```
    ///  Converts 1234.56 to $1,234.56
    ///  Converts 1223456 to $12.3456
    ///  Converts 0.123456 to $0.123456
    /// ```
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    // converts double into currency as a string with 2-6 decimal places
    /// ```
    ///  Converts 1234.56 to "$1,234.56"
    ///  Converts 1223456 to "$12.3456"
    ///  Converts 0.123456 to "$0.123456"
    /// ```
    
    func asCurrencyWith6Decimals()
    -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    // converts double into string representation
    /// ```
    ///  Converts 1.2345 to "$1.23"
    /// ```
    
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    // converts double into string representation
    /// ```
    ///  Converts 1.2345 to "1.23%"
    /// ```
    
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
}
