//
//  GeocodingPreviewClient.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 07/02/2024.
//

import Foundation

struct GeocodingPreviewClient: GeocodingService {
    
    func geocodeAddressString(_ addressString: String) async throws -> [Location] {
        Location.previews
    }
}
