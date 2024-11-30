//
//  LandmarkList.swift
//  SwiftUITutorial
//
//  Created by Igor Penkin on 27.11.2024.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly: Bool = true

    private var filteredLandmarks: [Landmark] {
        landmarks.filter { !showFavoritesOnly || $0.isFavorite }
    }

    var body: some View {
        NavigationSplitView {
            List(filteredLandmarks, id: \.id) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
