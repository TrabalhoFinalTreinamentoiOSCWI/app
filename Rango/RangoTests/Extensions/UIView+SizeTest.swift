//
//  UIView+SizeTest.swift
//  RangoTests
//
//  Created by Bel Cogo on 05/12/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit
import Quick
import Nimble

@testable import Rango

class UIViewSizeTest: QuickSpec {
    override func spec() {
        var view: UIView!
        var stackView: UIStackView!

        beforeEach {
            view = UIView()
            stackView = UIStackView()
            stackView.spacing = 30
            stackView.frame.size.width = 200
            stackView.frame.size.height = 600
        }
        
        describe("when you create a view to add in a stackView programmatically") {
            context("and you need to set a size for it") {
                it("should calculate and set size based on the number of items") {
                    assert(view.frame.size.width == 0)
                    assert(view.frame.size.height == 0)
                    view.setSize(for: stackView, numberOfItems: 3)
                    assert(view.frame.size.width == 200)
                    assert(view.frame.size.height == 180)
                }
            }
        }
    }
}
