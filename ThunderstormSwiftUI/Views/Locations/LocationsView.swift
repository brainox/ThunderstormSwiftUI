//
//  LocationsView.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 02/02/2024.
//

import SwiftUI

struct LocationsView: View {
    
    // MARK: - Properties
    
    @ObservedObject private(set) var viewmodel: LocationsViewModel
    
    @State private var showsAddLocationView = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                Button(viewmodel.addLocationTitle) {
                    showsAddLocationView.toggle()
                }
                .padding()
                .foregroundStyle(.white)
                .background(.accent)
                .clipShape(Capsule())
                LazyVGrid(columns: [GridItem()], spacing: 20.0, content: {
                    ForEach(viewmodel.locationCellViewModels) { viewModel in
                        NavigationLink {
                            LocationView(viewModel: viewModel.locationViewModel)
                        } label: {
                            LocationCell(viewModel: viewModel)
                        }

                    }
                })
                .padding()
            }
            .navigationTitle("Thunderstorm")
            .sheet(isPresented: $showsAddLocationView, content: {
                AddLocationView(viewModel: viewmodel.addLocationViewModel, showsAddLocationView: $showsAddLocationView)
            })
        }
        .onAppear {
            viewmodel.start()
        }
    }
}

#Preview {
    LocationsView(viewmodel: .init())
}
