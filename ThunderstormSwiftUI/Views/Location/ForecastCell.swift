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
        HStack {
            VStack(alignment: .leading) {
                Text(viewModel.day)
                    .font(.title)
                    .foregroundStyle(.accent)
                Group {
                    Text(viewModel.date)
                        
                    Spacer()
                    Text(viewModel.summary)
                }
                .font(.body)
                .foregroundStyle(.darkGray)
                
            }
            Spacer()
            VStack(alignment: .trailing) {
                Image(systemName: viewModel.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40.0)
                    .foregroundStyle(.darkGray)
                Spacer()
                Text(viewModel.windSpeed)
                    .font(.body)
                    .foregroundStyle(.darkGray)
                HStack {
                    Text(viewModel.lowTemperature)
                    Text("-")
                    Text(viewModel.highTemperature)
                }
                .font(.body)
                .foregroundStyle(.darkGray)
            }
        }
    }
}

#Preview {
    ForecastCell(viewModel: .init(forecastDate: Date()))
}
