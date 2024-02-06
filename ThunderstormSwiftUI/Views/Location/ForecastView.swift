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
        Text("Forecast View")
    }
}

#Preview {
    ForecastView(viewModel: .init())
}
