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
        VStack {
            MapView()
                .frame(height: mapHeight)
            CircleImage()
                .offset(y: -imageOffset)
                .padding(.bottom, -imageOffset)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundStyle(.black)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                    .font(.subheadline)
                    .foregroundStyle(.black)
                    .padding(.bottom)
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                    .padding(.top)
                Text("Descriptive text goes here...")
                    .font(.subheadline)
            }
                .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
