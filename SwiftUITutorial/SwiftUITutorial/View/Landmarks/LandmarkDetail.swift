//
//  LandmarkDetail.swift
//  SwiftUITutorial
//
//  Created by Igor Penkin on 27.11.2024.
//

import SwiftUI

struct LandmarkDetail: View {
    private let mapHeight: CGFloat = 300
    private let imageOffset: CGFloat = 130

    @Environment(ModelData.self) var modelData
    var landmark: Landmark

    var landmarkIndex: Int {
        modelData.landmarks.firstIndex { $0.id == landmark.id }!
    }

    var body: some View {
        @Bindable var modelData = modelData
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: mapHeight)
            CircleImage(image: landmark.image)
                .offset(y: -imageOffset)
                .padding(.bottom, -imageOffset)
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                        .foregroundStyle(.black)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                    .font(.subheadline)
                    .foregroundStyle(.black)
                    .padding(.bottom)
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                    .padding(.top)
                Text(landmark.description)
                    .font(.subheadline)
            }
                .padding()
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks.first!)
            .environment(modelData)
}
