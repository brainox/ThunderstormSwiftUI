//
//  LocationView.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 06/02/2024.
//

import SwiftUI

struct LocationView: View {
    
    // MARK: - Properties
    
    let viewModel: LocationViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            CurrentConditionsView(viewModel: viewModel.currentConditionsViewModel)
            ForecastView(viewModel: viewModel.forecastViewModel)
        }
    }
}

#Preview {
    LocationView(viewModel: .init(location: .preview))
}
