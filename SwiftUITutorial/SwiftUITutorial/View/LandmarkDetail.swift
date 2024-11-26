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

    var landmark: Landmark

    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: mapHeight)
            CircleImage(image: landmark.image)
                .offset(y: -imageOffset)
                .padding(.bottom, -imageOffset)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .foregroundStyle(.black)
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
    LandmarkDetail(landmark: landmarks.first!)
}
