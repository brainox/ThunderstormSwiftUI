//
//  ForecastViewModel.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 06/02/2024.
//

import Foundation

struct ForecastViewModel {
    
    // MARK: - Properties
    
    var forecastCellViewModels: [ForecastCellViewModel] {
        (0..<10).map { day in 
            let increment = 24 * 3600 * TimeInterval(day)
            let forecastDate = Date().addingTimeInterval(increment)
            return ForecastCellViewModel(forecastDate: forecastDate)
        }
    }
}
