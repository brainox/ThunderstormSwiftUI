//
//  LocationsViewModel.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 02/02/2024.
//

import Combine
import Foundation

@MainActor
final class LocationsViewModel: ObservableObject {
    
    // MARK: - Properties
    
    var title: String {
        "Thunderstorm"
    }
    
    var addLocationTitle: String {
        "Add a Location"
    }
    
    @Published private(set) var locationCellViewModels: [LocationCellViewModel] = []
    
    var addLocationViewModel: AddLocationViewModel {
        AddLocationViewModel(geocodingService: GeocodingClient())
    }
    
    // MARK: -
    
    func start() {
        UserDefaults.standard.publisher(for: \.locations)
            .compactMap { $0 }
            .decode(type: [Location].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .map { $0.map(LocationCellViewModel.init(location:)) }
            .eraseToAnyPublisher()
            .assign(to: &$locationCellViewModels)
    }
}
