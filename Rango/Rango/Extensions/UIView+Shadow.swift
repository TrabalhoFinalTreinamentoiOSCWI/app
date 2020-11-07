//
//  UIView+Shadow.swift
//  Rango
//
//  Created by Bel Cogo on 06/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

extension UIView {
    func withShadow() {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: -1, height: 1)
        layer.shadowRadius = 5

        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
    }
}
