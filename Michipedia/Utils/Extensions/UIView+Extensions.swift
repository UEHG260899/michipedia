//
//  UIView+Extensions.swift
//  Michipedia
//
//  Created by Uriel Hernandez Gonzalez on 05/07/22.
//

import Foundation
import UIKit

extension UIView {
    func addShadow() {
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.shadowRadius = 4
        layer.shadowOpacity = 0.1
    }
}
