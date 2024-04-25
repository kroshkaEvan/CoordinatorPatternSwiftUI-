//
//  UserDefaultsStorage.swift
//  Custom UserDefaults
//
//  Created by EvanTsviatkouDev on 25/04/2022.
//

import Foundation
import UIKit

class UserDefaultsStorage {
    static let shared = UserDefaultsStorage()
    
    // MARK: USER PROPERTIES
        
    @StrongUserDefault(key: .isBiometric,
                       defaultValue: false)
    var isBiometric: Bool
    
    @UserDefault(key: .name)
    var name: String?
}

// MARK: User Default Key

private extension UserDefaultKey {
    static let isBiometric: UserDefaultKey = "isBiometric"
    static let name: UserDefaultKey = "name"
}
