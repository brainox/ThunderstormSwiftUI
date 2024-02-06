//
//  CurrentConditionsView.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 06/02/2024.
//

import SwiftUI

struct CurrentConditionsView: View {
    
    // MARK: - Properties
    
    let viewModel: CurrentConditionsViewModel
    
    var body: some View {
        Text("Current Conditions View")
    }
}

#Preview {
    CurrentConditionsView(viewModel: .init())
}
