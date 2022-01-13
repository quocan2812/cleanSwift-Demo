//
//  UiView_Extension.swift
//  CleanSwiftDemo
//
//  Created by VN01-MAC-0005 on 13/01/2022.
//

import Foundation
import UIKit

extension UIView {
    
    func constraintsFollowParentCenterView() {
        guard let parent = superview else { return }
        
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            centerXAnchor.constraint(equalTo: parent.centerXAnchor),
            centerYAnchor.constraint(equalTo: parent.centerYAnchor)
        ])
    }
    
    func contraintFollowParentWidth(marginLeft: CGFloat = 0.0, marginRight: CGFloat = 0.0) {
        guard let parent = superview else { return }
        
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: parent.safeAreaLayoutGuide.leadingAnchor, constant: marginLeft),
            trailingAnchor.constraint(equalTo: parent.safeAreaLayoutGuide.trailingAnchor, constant: marginRight)
        ])
    }
    
    func contraintFollowParentHeight(marginTop: CGFloat = 0.0, marginBottom: CGFloat = 0.0) {
        guard let parent = superview else { return }
        
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: parent.safeAreaLayoutGuide.topAnchor, constant: marginTop),
            bottomAnchor.constraint(equalTo: parent.safeAreaLayoutGuide.bottomAnchor, constant: marginBottom)
        ])
        
    }
    
    func constraintsFollowParentSafeArea (margin : UIEdgeInsets = .zero) {
        contraintFollowParentWidth()
        contraintFollowParentHeight()
    }
}
