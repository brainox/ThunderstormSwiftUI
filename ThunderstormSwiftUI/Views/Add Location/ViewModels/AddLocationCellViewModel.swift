//
//  AddLocationCellViewModel.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 07/02/2024.
//

import Foundation

struct AddLocationCellViewModel: Equatable, Identifiable {
    
    // MARK: - Properties
    
    private let location: Location
    
    // MARK: - Identifiable Conformance
    
    var id: String {
        location.id
    }
    
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
