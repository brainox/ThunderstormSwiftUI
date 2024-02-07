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
    
    var textFieldPlaceholder: String {
        "Enter the name of a city ..."
    }
}
