//
//  LocationCellViewModel.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 02/02/2024.
//

import Foundation

struct LocationCellViewModel: Identifiable {
    
    // MARK: - Properties
    
    private let location: Location
    
    // MARK: - Identifiable
    
    var id: String {
        location.id
    }
    
    // MARK: - Initialization
    
    init(location: Location) {
        self.location = location
    }
    
    // MARK: - Public API
    
    var locationName: String {
        location.name
    }
    
    var locationCountry: String {
        location.country
    }
    
    var summary: String? {
        "Clear"
    }
    
    var windSpeed: String? {
        "10 mi/h"
    }
    
    var temperature: String? {
        "90 °F"
    }
}
