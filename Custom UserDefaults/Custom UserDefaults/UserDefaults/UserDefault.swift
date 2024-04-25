//
//  UserDefault.swift
//  Custom UserDefaults
//
//  Created by EvanTsviatkouDev on 25/04/2022.
//

import Foundation

@propertyWrapper
struct StrongUserDefault<T: PropertyListValue> {
    private let key: UserDefaultKey
    private let defaultValue: T
    
    init(key: UserDefaultKey, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
    var wrappedValue: T {
        get { UserDefaults.standard.value(forKey: key.rawValue) as? T ?? defaultValue }
        set { UserDefaults.standard.set(newValue, forKey: key.rawValue) }
    }
}

@propertyWrapper
struct UserDefault<T: PropertyListValue> {
    private let key: UserDefaultKey
    private let defaultValue: T?
    
    init(key: UserDefaultKey, defaultValue: T? = nil) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
    var wrappedValue: T? {
        get { UserDefaults.standard.value(forKey: key.rawValue) as? T ?? defaultValue }
        set { UserDefaults.standard.set(newValue, forKey: key.rawValue) }
    }
}
