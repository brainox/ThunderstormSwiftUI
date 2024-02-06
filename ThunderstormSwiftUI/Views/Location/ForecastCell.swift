//
//  ForecastCell.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 06/02/2024.
//

import SwiftUI

struct ForecastCell: View {
    
    // MARK: - Properties
    
    let viewModel: ForecastCellViewModel
    
    // MARK: - View
    
    var body: some View {
        Text(viewModel.temperature)
    }
}

#Preview {
    ForecastCell(viewModel: .init())
}
