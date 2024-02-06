//
//  LocationsView.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 02/02/2024.
//

import SwiftUI

struct LocationsView: View {
    
    // MARK: - Properties
    
    let viewmodel: LocationsViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem()], spacing: 20.0, content: {
                    ForEach(viewmodel.locationCellViewModels) { viewModel in
                        LocationCell(viewModel: viewModel)
                    }
                })
                .padding()
            }
            .navigationTitle("Thunderstorm")
        }
    }
}

#Preview {
    LocationsView(viewmodel: .init())
}
