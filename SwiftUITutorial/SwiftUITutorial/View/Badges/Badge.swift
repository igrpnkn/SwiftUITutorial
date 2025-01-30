//
//  Badge.swift
//  SwiftUITutorial
//
//  Created by Igor Penkin on 31.01.2025.
//

import SwiftUI

struct Badge: View {
    private let badgeSymbols: some View = {
        ForEach(0..<8) { index in
            RotatedBadgeSymbol(angle: .degrees(Double(index) / Double(8)) * 360.0)
        }
        .opacity(0.5)
    }()

    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1/4, anchor: .top)
                    .position(x: geometry.size.width / 2, y: (3/4) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

#Preview {
    Badge()
}
