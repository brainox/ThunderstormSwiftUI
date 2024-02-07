//
//  GeocodingService.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 07/02/2024.
//

import Foundation

protocol GeocodingService {
    
    func geocodeAddressString(_ addressString: String) async throws -> [Location]
}
