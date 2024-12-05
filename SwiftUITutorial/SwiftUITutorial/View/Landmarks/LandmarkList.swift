//
//  LandmarkList.swift
//  SwiftUITutorial
//
//  Created by Igor Penkin on 27.11.2024.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly: Bool = false

    private var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { !showFavoritesOnly || $0.isFavorite }
    }

    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
            .animation(.default, value: filteredLandmarks)
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
