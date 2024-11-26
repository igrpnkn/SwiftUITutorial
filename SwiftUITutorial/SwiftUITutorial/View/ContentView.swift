//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Igor Penkin on 23.11.2024.
//

import SwiftUI

struct ContentView: View {
    private let mapHeight: CGFloat = 300
    private let imageOffset: CGFloat = 130

    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
}
