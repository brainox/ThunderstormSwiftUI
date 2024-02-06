//
//  Location.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 02/02/2024.
//

import Foundation

struct Location: Codable {
    
    // MARK: - Properties
    
    let id: String
    
    let name: String
    let country: String
    
    let latitude: Double
    let longitude: Double
}

extension Location {
    
    static var previews: [Location] {
        [
            .init(id: "1", name: "Paris", country: "France", latitude: 48.857438, longitude: 2.295790),
            .init(id: "2", name: "New York", country: "United States", latitude: 40.690337, longitude: -74.045473),
            .init(id: "3", name: "Cape Town", country: "South Africa", latitude: -33.957369, longitude: 18.403098)
        ]
    }
    
    static var previewsData: Data {
        try! JSONEncoder().encode(Location.previews)
    }
}
