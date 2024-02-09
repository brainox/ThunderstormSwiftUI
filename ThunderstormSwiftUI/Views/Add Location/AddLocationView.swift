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
            switch viewModel.state {
            case .empty:
                Spacer()
            case .querying:
                MessageView(style: .progressView)
            case .message(let message):
                MessageView(style: .message(message))
            case .results(let viewModels):
                List {
                    ForEach(viewModels) {
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
}

#Preview {
    let viewModel = AddLocationViewModel(geocodingService: GeocodingPreviewClient())
    return AddLocationView(viewModel: viewModel,
                    showsAddLocationView: .constant(true))
}

fileprivate struct MessageView: View {
    
    enum Style {
        case progressView
        case message(String)
    }
    
    let style: Style
    
    var body: some View {
        VStack {
            Spacer()
            switch style {
            case .progressView:
                ProgressView()
            case .message(let message):
                Text(message)
                    .font(.body)
                    .foregroundStyle(.darkGray)
            }
            Spacer()
        }
    }
}
