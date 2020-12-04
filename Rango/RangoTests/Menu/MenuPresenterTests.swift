//
//  MenuPresenterTests.swift
//  RangoTests
//
//  Created by Rhian Lopes da Costa on 03/12/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit
import Quick
import Nimble

@testable import Rango

class MenuPresenterTests: QuickSpec {
    
    override func spec() {
        var menu: MenuPresenterType!
        var view: MenuViewTypeMock!
        
        beforeEach {
            view = MenuViewTypeMock()
            menu = MenuPresenter(view: view)
            menu.view = view
        }
        
        describe("when menu screen") {
            context("when screen did load") {
                it("should get some menu") {
                    menu.api = MenuSuccessMockApiNetworkService()
                    
                    menu.screenDidLoad()
                    
                    DispatchQueue.main.async {
                        expect(view.menuOptions?.count).to(equal(1))
                        expect(view.menuOptions?.first?.image).to(equal("https://pasta.png"))
                        expect(view.menuOptions?.first?.category).to(equal("pasta"))
                    }
                }
                it("should get error") {
                    menu.api = MenuFailMockApiNetworkService()
                    
                    menu.screenDidLoad()
                    
                    expect(view.hasError).to(beTrue())
                }
            }
        }
    }
}
