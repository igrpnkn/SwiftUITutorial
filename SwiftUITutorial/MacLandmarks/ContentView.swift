//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Igor Penkin on 10.02.2025.
//

import SwiftUI

struct ContentView: View {
//    The preview no longer builds because the LandmarkList uses LandmarkDetail, but you haven’t defined a detail view for the macOS app yet. You’ll take care of that in the next section.
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
