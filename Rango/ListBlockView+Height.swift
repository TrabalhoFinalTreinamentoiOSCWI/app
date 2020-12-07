//
//  UIStackView+Height.swift
//  Rango
//
//  Created by Bel Cogo on 03/12/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

extension ListBlockView {
    func configureStackListHeight(for numberOfLines: Int) {
        enum LayoutContants {
            static let lineHeight: CGFloat = 26
        }
        
        self.frame.size.height = LayoutContants.lineHeight * CGFloat(numberOfLines)
        print(LayoutContants.lineHeight * CGFloat(numberOfLines))
    }
}
