//
//  ForecastView.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 06/02/2024.
//

import SwiftUI

struct ForecastView: View {
    
    // MARK: - Properties
    
    let viewModel: ForecastViewModel
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem()]) {
                ForEach(viewModel.forecastCellViewModels) { viewModel in
                        ForecastCell(viewModel: viewModel)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ForecastView(viewModel: .init())
}
