//
//  CurrentConditionsView.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 06/02/2024.
//

import SwiftUI

struct CurrentConditionsView: View {
    
    // MARK: - Properties
    
    let viewModel: CurrentConditionsViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viewModel.temperature)
                .font(.largeTitle)
            Group {
                HStack {
                    Image(systemName: "wind")
                    Text(viewModel.windSpeed)
                }
                Spacer()
                    .frame(height: 10.0)
                Text(viewModel.summary)
            }
            .font(.body)
        }
        .padding()
    }
}

#Preview {
    CurrentConditionsView(viewModel: .init())
}
