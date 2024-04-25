//
//  PropertyListValue.swift
//  Custom UserDefaults
//
//  Created by EvanTsviatkouDev on 25/04/2022.
//

import Foundation

protocol PropertyListValue {}
extension UUID: PropertyListValue {}
extension String: PropertyListValue {}
extension Data: PropertyListValue {}
extension Date: PropertyListValue {}
extension Bool: PropertyListValue {}
extension Int: PropertyListValue {}
extension Double: PropertyListValue {}
extension Array: PropertyListValue where Element: PropertyListValue {}
extension Dictionary: PropertyListValue where Key == String, Value: PropertyListValue {}
