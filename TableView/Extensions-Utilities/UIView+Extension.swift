//
//  UIView+Extension.swift
//  TableView
//
//  Created by Lee Sangoroh on 14/04/2024.
//

import UIKit

extension UIView {
    
    // extension to pin tableView to the UIView (VideoListVC
    func pin(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superView.topAnchor),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor)
        ])
    }
}
