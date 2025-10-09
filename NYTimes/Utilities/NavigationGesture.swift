//
//  NavigationGesture.swift
//  NYTimes
//
//  Created by Omer Hassan on 09/10/2025.
//

import SwiftUI

extension UINavigationController: @retroactive UIGestureRecognizerDelegate {
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
