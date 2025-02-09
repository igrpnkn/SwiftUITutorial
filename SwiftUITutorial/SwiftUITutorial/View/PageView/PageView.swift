//
//  PageView.swift
//  SwiftUITutorial
//
//  Created by Igor Penkin on 09.02.2025.
//

import SwiftUI

struct PageView<Page: View>: View {
    @State private var currentPage: Int = 0

    var pages: [Page]

    var body: some View {
        VStack {
            PageViewController(currentPage: $currentPage, pages: pages)
            Text("Current page: \(currentPage)")
        }
        .aspectRatio(1.5, contentMode: .fit)
    }
}

#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
}
