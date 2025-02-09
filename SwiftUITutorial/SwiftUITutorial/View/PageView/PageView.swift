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
        ZStack(alignment: .bottomTrailing) {
            PageViewController(currentPage: $currentPage, pages: pages)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
        .aspectRatio(1.5, contentMode: .fit)
    }
}

#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
}
