//
//  FavoriteTests.swift
//  RangoTests
//
//  Created by Rhian Lopes da Costa on 26/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit
import Quick
import Nimble

@testable import Rango

class FavoriteTests: QuickSpec {
    
    override func spec() {
        var favorite: Favorite!
        
        beforeEach {
            favorite = Favorite.instance
        }
        
        describe("when favorite recipes") {
            context("when alter cards") {
                
            }
            
        }
    }
}
