//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Igor Penkin on 10.02.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
