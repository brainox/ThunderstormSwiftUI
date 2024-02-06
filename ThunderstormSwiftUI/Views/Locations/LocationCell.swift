//
//  LocationCell.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 06/02/2024.
//

import SwiftUI

struct LocationCell: View {
    
    // MARK: - Properties
    
    var viewModel: LocationCellViewModel
    
    // MARK: - View
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(viewModel.locationName)
                    .font(.title)
                    .foregroundStyle(.accent)
                Text(viewModel.locationCountry)
                    .font(.body)
                    .foregroundStyle(.gray)
                Spacer()
                if let summary = viewModel.summary {
                    Text(summary)
                }
            }
            Spacer()
            if let temperature = viewModel.temperature, let windSpeed = viewModel.windSpeed {
                VStack(alignment: .trailing, content: {
                    HStack {
                        Image(systemName: "thermometer")
                            .foregroundStyle(.gray)
                        Text(temperature)
                    }
                    HStack {
                        Image(systemName: "wind")
                            .foregroundStyle(.gray)
                        Text(windSpeed)
                    }
                    Spacer()
                })
            } else {
                ProgressView()
            }
        }
        .padding()
        .overlay {
            RoundedRectangle(cornerRadius: 10.0)
                .stroke(Color.gray)
                .opacity(0.25)
        }
    }
}

#Preview {
    let viewModel = LocationCellViewModel(
        location: .preview
    )
    return LocationCell(viewModel: viewModel)
}
