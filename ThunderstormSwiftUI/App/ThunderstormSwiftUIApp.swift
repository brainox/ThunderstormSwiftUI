//
//  ThunderstormSwiftUIApp.swift
//  ThunderstormSwiftUI
//
//  Created by Obinna on 02/02/2024.
//

import SwiftUI

@main
struct ThunderstormSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            LocationsView(viewmodel: .init())
        }
    }
}
