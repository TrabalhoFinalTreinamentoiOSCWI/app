//
//  UIButton+Shadow.swift
//  Rango
//
//  Created by Bel Cogo on 15/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//


import UIKit

extension UIView {
    var withShadow: Void {
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3).cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowRadius = 2
        self.layer.shadowOpacity = 0.5
    }
}

