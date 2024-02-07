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
    
    var showsAddLocationView: Binding<Bool>
    
    // MARK: - View
    
    var body: some View {
        VStack {
            TextField(viewModel.textFieldPlaceholder, text: $viewModel.query)
                .padding()
            List {
                ForEach(viewModel.addLocationCellViewModels) {
                    cellViewModel in
                    AddLocationCell(viewModel: cellViewModel) {
                        viewModel.addLocation(with: cellViewModel.id)
                        showsAddLocationView.wrappedValue.toggle()
                    }
                }
            }
        }
    }
}

#Preview {
    AddLocationView(viewModel: .init(), showsAddLocationView: .constant(true))
}
