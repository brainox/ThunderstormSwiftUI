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
        (0..<10).map { _ in ForecastCellViewModel() }
    }
}
