//
//  GeocodingClient.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 07/02/2024.
//

import Foundation
import CoreLocation

final class GeocodingClient: GeocodingService {
    
    // MARK: - Types
    
    enum GeocodingError: Error {
        case invalidAddressString
        case requestFailed
    }
    
    // MARK: - Properties
    
    private let geocoder = CLGeocoder()
    
    // MARK: - Geocoding Service
    
    func geocodeAddressString(_ addressString: String) async throws -> [Location] {
        guard !addressString.isEmpty else {
            throw GeocodingError.invalidAddressString
        }
        do {
            return try await geocoder.geocodeAddressString(addressString)
                .compactMap(Location.init(placemark:))
          
        } catch {
            print("Unable to Geocode \(addressString) \(error)")
            throw GeocodingError.requestFailed
        }
    }
}
