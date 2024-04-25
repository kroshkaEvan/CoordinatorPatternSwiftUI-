//
//  UserDefaultKey.swift
//  Custom UserDefaults
//
//  Created by EvanTsviatkouDev on 25/04/2022.
//

import Foundation

struct UserDefaultKey: RawRepresentable {
    let rawValue: String
}

extension UserDefaultKey: ExpressibleByStringLiteral {
    init(stringLiteral value: String) {
        rawValue = value
    }
}
