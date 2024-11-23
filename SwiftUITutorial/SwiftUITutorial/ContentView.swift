//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Igor Penkin on 23.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
                .foregroundStyle(.black)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                    .foregroundStyle(.black)
                Spacer()
                Text("California")
                    .font(.subheadline)
                    .foregroundStyle(.black)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
