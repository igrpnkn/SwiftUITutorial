//
//  LandmarkRow.swift
//  SwiftUITutorial
//
//  Created by Igor Penkin on 27.11.2024.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview {
    let modelData = ModelData()
    return Group {
        LandmarkRow(landmark: modelData.landmarks.first!)
        LandmarkRow(landmark: modelData.landmarks.last!)
    }
}
