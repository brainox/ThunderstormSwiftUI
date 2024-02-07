//
//  AddLocationViewModel.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 07/02/2024.
//

import Combine
import Foundation

@MainActor
internal final class AddLocationViewModel: ObservableObject {
    
    // MARK: - Properties
    
    private let geocodingService: GeocodingService
    
    @Published var query = ""
    
    @Published private(set) var locations: [Location]  = []
    
    var textFieldPlaceholder: String {
        "Enter the name of a city ..."
    }
    
    var addLocationCellViewModels: [AddLocationCellViewModel] {
        locations.map(AddLocationCellViewModel.init)
    }
    
    private var subscriptions: Set<AnyCancellable> = []
    
    // MARK: - Initialization
    
    init(geocodingService: GeocodingService) {
        self.geocodingService = geocodingService
        setupBindings()
    }
    
    // MARK: - Public API
    
    func addLocation(with id: String) {
        guard let locations = locations.first(where: { $0.id == id }) else {
            return
        }
    }
    
    // MARK: - Helper Methods
    
    private func setupBindings() {
        $query
            .throttle(for: 1.0, scheduler: RunLoop.main, latest: true)
            .filter{ !$0.isEmpty }
            .sink { [weak self] addressString in
                self?.geocodeAddressString(addressString)
            }
            .store(in: &subscriptions)
    }
    
    private func geocodeAddressString(_ addressString: String) {
        Task {
            do {
                locations = try await geocodingService.geocodeAddressString(addressString)
            } catch {
                print("Unable to Geocode \(addressString) \(error)")
            }
        }
    }
}
