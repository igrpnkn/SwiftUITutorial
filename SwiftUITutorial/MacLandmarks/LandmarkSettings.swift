//
//  LandmarkSettings.swift
//  MacLandmarks
//
//  Created by Igor Penkin on 10.02.2025.
//

import SwiftUI

struct LandmarkSettings: View {
    @AppStorage(MapView.appStorageZoomKey)
    private var zoom: MapView.Zoom = .medium

    var body: some View {
        Form {
            Picker("Map Zoom", selection: $zoom) {
                ForEach(MapView.Zoom.allCases) {
                    Text($0.rawValue)
                }
            }
            .pickerStyle(.inline)
        }
        .frame(width: 300)
        .navigationTitle("Landmark Settings")
        .padding(80)
    }
}

#Preview {
    LandmarkSettings()
}
