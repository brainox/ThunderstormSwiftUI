//
//  Geocoder.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 08/02/2024.
//

import CoreLocation

protocol Geocoder {
    func geocodeAddressString(_ addressString: String) async throws -> [CLPlacemark]
}
