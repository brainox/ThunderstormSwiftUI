//
//  AddLocationCell.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 07/02/2024.
//

import SwiftUI

struct AddLocationCell: View {
    
    // MARK: - Properties
     
    let viewModel: AddLocationCellViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viewModel.name)
                .font(.headline)
                .foregroundStyle(.accent)
            Text(viewModel.country)
                .font(.subheadline)
                .foregroundStyle(.gray)
            Text(viewModel.coordinates)
                .font(.caption)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    AddLocationCell(viewModel: .init(location: .preview))
}
