//
//  SearchResultPresenterTests.swift
//  RangoTests
//
//  Created by Rhian Lopes da Costa on 04/12/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit
import Quick
import Nimble

@testable import Rango

class SearchResultPresenterTests: QuickSpec {
    
    override func spec() {
        var searchResult: SearchResultPresenterType!
        var view: SearchResultViewTypeMock!
        
        beforeEach {
            view = SearchResultViewTypeMock()
            searchResult = SearchResultPresenter(view: view)
            searchResult.view = view
        }
        
        describe("when search result") {
            context("when load screen") {
                it("should get some recipes") {
                    searchResult.api = SearchResultSuccessMockApiNetworkService()
                    
                    searchResult.loadScreen(path: "pasta")
                    
                    DispatchQueue.main.async {
                        expect(searchResult.recipes.first?.id).to(equal(1))
                        expect(searchResult.recipes.first?.name).to(equal("Rhian"))
                    }
                }
                it("should get error from some recipes") {
                    searchResult.api = SearchResultFailMockApiNetworkService()
                    
                    searchResult.loadScreen(path: "pasta")
                    
                    expect(view.hasError).to(beTrue())
                }
            }
        }
    }
}
