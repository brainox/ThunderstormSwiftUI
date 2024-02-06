//
//  ForecastCellViewModel.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 06/02/2024.
//

import Foundation

struct ForecastCellViewModel: Identifiable {
    
    // MARK: - Properties
    
    var id: UUID {
        UUID()
    }
    
    var temperature: String {
        let temperature = Int.random(in: 50...80)
        return "\(temperature) °F"
    }
}
