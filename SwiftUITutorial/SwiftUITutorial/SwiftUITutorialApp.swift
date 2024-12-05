//
//  SwiftUITutorialApp.swift
//  SwiftUITutorial
//
//  Created by Igor Penkin on 23.11.2024.
//

import SwiftUI

@main
struct SwiftUITutorialApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
