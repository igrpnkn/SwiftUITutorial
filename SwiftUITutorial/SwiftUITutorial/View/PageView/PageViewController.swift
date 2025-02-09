//
//  PageViewController.swift
//  SwiftUITutorial
//
//  Created by Igor Penkin on 09.02.2025.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]

    typealias UIViewControllerType = UIPageViewController

    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll, 
            navigationOrientation: .horizontal
        )
        return pageViewController
    }

    func updateUIViewController(_ uiViewController: UIPageViewController, context: Context) {
        uiViewController.setViewControllers(
            [UIHostingController(rootView: pages.first!)],
            direction: .forward,
            animated: true
        )
    }
}
