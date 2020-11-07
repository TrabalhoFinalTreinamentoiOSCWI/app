//
//  UIView+Size.swift
//  Rango
//
//  Created by Bel Cogo on 06/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

extension UIView {
    func setSize(for stackView: UIStackView, numberOfItems: CGFloat, spacing: CGFloat) {
        let emptySpace = (numberOfItems - 1) * spacing
        frame.size.width = stackView.frame.size.width
        frame.size.height = (stackView.frame.size.height - emptySpace) / numberOfItems
    }
}
