//
//  UIStackView+Height.swift
//  Rango
//
//  Created by Bel Cogo on 03/12/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

extension ListBlockView {
    func configureStackListHeight(for numberOfLines: Int) -> CGFloat {
        enum LayoutContants {
            static let lineHeight: CGFloat = 26
        }
        
        return LayoutContants.lineHeight * CGFloat(numberOfLines)
    }
}
