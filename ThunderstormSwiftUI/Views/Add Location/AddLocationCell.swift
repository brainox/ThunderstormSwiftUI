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
    
    let didTapPlusButton: () -> Void
    
    var body: some View {
        HStack {
            Button {
                didTapPlusButton()
            } label: {
                Image(systemName: "plus")
                    .padding()
                    .tint(.green)
                    .frame(width: 5.0, height: 5.0)
            }
            .padding(.all, 10.0)
            .background(.white)
            Spacer()
                .frame(width: 20.0)
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
            Spacer()
        }
    }
}

#Preview {
    AddLocationCell(viewModel: .init(location: .preview), didTapPlusButton: {})
}
