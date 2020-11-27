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
                it("should can add some recipe") {
                    favorite.favoriteRecipes = []
                    
                    let recipe: Recipe = Recipe(id: 1, userId: 1, name: "", bio: "", dificulty: Dificult.easy, time: 1, rating: 1, image: "", ingredients: [""], steps: [""])
                    
                    let result = favorite.alter(recipe)
                    expect(result).to(beTrue())
                }
                it("should can alter some recipe") {
                    let recipe: Recipe = Recipe(id: 1, userId: 1, name: "", bio: "", dificulty: Dificult.easy, time: 1, rating: 1, image: "", ingredients: [""], steps: [""])
                    
                    favorite.favoriteRecipes = [recipe]
                    
                    let result = favorite.alter(recipe)
                    expect(result).to(beFalse())
                }
            }
            
        }
    }
}
