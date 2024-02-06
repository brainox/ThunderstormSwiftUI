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
            Divider()
            ForecastView(viewModel: viewModel.forecastViewModel)
        }
        .navigationTitle(viewModel.locationName)
    }
}

#Preview {
    NavigationView {
        LocationView(viewModel: .init(location: .preview))
    }
}
