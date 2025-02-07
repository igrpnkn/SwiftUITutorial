//
//  CategoryItem.swift
//  SwiftUITutorial
//
//  Created by Igor Penkin on 07.02.2025.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark

    var body: some View {
        VStack(alignment: .leading, content: {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .clipShape(.rect(cornerRadius: 5))
            Text(landmark.name)
                .foregroundStyle(.primary)
                .font(.caption)
        })
        .padding(.leading, 15)
    }
}

#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
}
