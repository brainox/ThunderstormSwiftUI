//
//  UserDefaults+Helpers.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 13/02/2024.
//

import Foundation

extension UserDefaults {
    private enum Keys {
        static let locations = "locations"
    }
    
    @objc var locations: Data? {
        get {
            data(forKey: Keys.locations)
        }
        set {
            set(newValue, forKey: Keys.locations)
        }
    }
}
