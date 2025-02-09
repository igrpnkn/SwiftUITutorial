//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Igor Penkin on 09.02.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
