//
//  PageView.swift
//  SwiftUITutorial
//
//  Created by Igor Penkin on 09.02.2025.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]

    var body: some View {
        PageViewController(pages: pages)
            .aspectRatio(1.5, contentMode: .fit)
    }
}

#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
}
