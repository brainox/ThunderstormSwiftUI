//
//  LocationsViewModel.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 02/02/2024.
//

import Foundation

struct LocationsViewModel {
    
    var title: String {
        "Thunderstorm"
    }
    
    var addLocationTitle: String {
        "Add a Location"
    }
    
    var locationCellViewModels: [LocationCellViewModel] {
        Location.previews.map(LocationCellViewModel.init)
    }
}
