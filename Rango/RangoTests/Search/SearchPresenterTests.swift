//
//  SearchPresenterTests.swift
//  RangoTests
//
//  Created by Rhian Lopes da Costa on 04/12/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit
import Quick
import Nimble

@testable import Rango

class SearchPresenterTests: QuickSpec {
    
    override func spec() {
        var search: SearchPresenterType!
        var view: SearchViewTypeMock!
        
        beforeEach {
            view = SearchViewTypeMock()
            search = SearchPresenter(view: view)
            search.view = view
        }
        
        describe("when search screen") {
            context("when load screen") {
                it("should get some category") {
                    search.api = SearchSuccessMockApiNetworkService()
                    
                    search.loadScreen()
                    
                    DispatchQueue.main.async {
                        expect(search.categories.first?.id).to(equal(1))
                        expect(search.categories.first?.path).to(equal("pasta"))
                        expect(search.categories.first?.name).to(equal("Massa"))
                        expect(search.categories.first?.image).to(equal("https://pasta.png"))
                    }
                }
                it("should get error from category") {
                    search.api = SearchFailMockApiNetworkService()
                    
                    search.loadScreen()
                    
                    expect(view.hasError).to(beTrue())
                }
            }
        }
    }
}
