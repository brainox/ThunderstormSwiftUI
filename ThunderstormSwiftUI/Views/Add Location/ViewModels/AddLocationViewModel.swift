//
//  AddLocationViewModel.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 07/02/2024.
//

import Foundation

internal final class AddLocationViewModel: ObservableObject {
    
    // MARK: - Properties
    
    @Published var query = ""
    
    @Published private(set) var locations: [Location]  = Location.previews
    
    var textFieldPlaceholder: String {
        "Enter the name of a city ..."
    }
    
    var addLocationCellViewModels: [AddLocationCellViewModel] {
        locations.map(AddLocationCellViewModel.init)
    }
    
    func addLocation(with id: String) {
        guard let locations = locations.first(where: { $0.id == id }) else {
            return
        }
    }
}
