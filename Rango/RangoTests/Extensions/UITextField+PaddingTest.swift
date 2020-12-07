//
//  UITextField+PaddingTest.swift
//  RangoTests
//
//  Created by Bel Cogo on 05/12/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit
import Quick
import Nimble

@testable import Rango

class UITextFieldPaddingTest: QuickSpec {
    override func spec() {
        var view: UITextField!
        
        beforeEach {
            view = UITextField()
            view.frame.size.width = 50
            view.frame.size.height = 50
        }

        describe("when a text field exists") {
            context("and you need to set a left padding") {
                it("should create a view next to your view on the left side") {
                    assert(view.leftView == nil)
                    view.setLeftPaddingPoints(20)
                    assert(view.leftView != nil)
                    assert(view.rightView == nil)
                    assert(view.leftView?.frame.size.width == 20)
                }
            }
            context("and you need to set a right padding") {
                it("should create a view next to your view on the right side") {
                    assert(view.rightView == nil)
                    view.setRightPaddingPoints(30)
                    assert(view.rightView != nil)
                    assert(view.leftView == nil)
                    assert(view.rightView?.frame.size.width == 30)
                }
            }
        }
    }
}
