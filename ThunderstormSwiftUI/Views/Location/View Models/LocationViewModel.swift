//
//  LocationViewModel.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 06/02/2024.
//

import Foundation

struct LocationViewModel {
    
    // MARK: - Properties
    
    private let location: Location
    
    var currentConditionsViewModel: CurrentConditionsViewModel {
        .init()
    }
    
    var forecastViewModel: ForecastViewModel {
        .init()
    }
    
    // MARK: - Initialization
    
    init(location: Location) {
        self.location = location
    }
}
