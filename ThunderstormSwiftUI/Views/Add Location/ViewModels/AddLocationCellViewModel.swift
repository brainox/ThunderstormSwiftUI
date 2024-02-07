//
//  AddLocationCellViewModel.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 07/02/2024.
//

import Foundation

struct AddLocationCellViewModel {
    
    // MARK: - Properties
    
    private let location: Location
    
    // MARK: - Initialization
    
    init(location: Location) {
        self.location = location
    }
    
    // MARK: - Public API
    
    var name: String {
        location.name
    }
    
    var country: String {
        location.country
    }
    
    var coordinates: String {
        "\(location.latitude), \(location.longitude)"
    }
}
