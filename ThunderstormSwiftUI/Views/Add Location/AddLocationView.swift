//
//  AddLocationView.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 07/02/2024.
//

import SwiftUI

struct AddLocationView: View {
    
    // MARK: - Properties
    
    @ObservedObject var viewModel: AddLocationViewModel
    
    // MARK: - View
    
    var body: some View {
        VStack {
            TextField(viewModel.textFieldPlaceholder, text: $viewModel.query)
                .padding()
        }
    }
}

#Preview {
    AddLocationView(viewModel: .init())
}
