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
            context("when remove cards") {
                it("should remove some card") {
                    let recipe: Recipe = Recipe(id: 1, userId: 1, name: "", bio: "", dificulty: Dificult.easy, time: 1, rating: 1, image: "", ingredients: [""], steps: [""])
                    
                    favorite.favoriteRecipes = [recipe]
                    
                    favorite.remove(recipe: recipe)
                    expect(favorite.favoriteRecipes).to(beEmpty())
                }
                it("should dont remove any card") {
                    let recipe: Recipe = Recipe(id: 1, userId: 1, name: "", bio: "", dificulty: Dificult.easy, time: 1, rating: 1, image: "", ingredients: [""], steps: [""])
                    
                    favorite.favoriteRecipes = []
                    
                    favorite.remove(recipe: recipe)
                    expect(favorite.favoriteRecipes).to(beEmpty())
                }
            }
            context("when check favorite card") {
                it("should be a favorite card") {
                    let recipe: Recipe = Recipe(id: 1, userId: 1, name: "", bio: "", dificulty: Dificult.easy, time: 1, rating: 1, image: "", ingredients: [""], steps: [""])
                    
                    favorite.favoriteRecipes = [recipe]
                    
                    let result = favorite.checkFavoriteRecipe(recipe)
                    expect(result).to(beTrue())
                }
                it("should dont be a favorite card") {
                    let firstRecipe: Recipe = Recipe(id: 1, userId: 1, name: "", bio: "", dificulty: Dificult.easy, time: 1, rating: 1, image: "", ingredients: [""], steps: [""])
                    let secondRecipe: Recipe = Recipe(id: 2, userId: 1, name: "", bio: "", dificulty: Dificult.easy, time: 1, rating: 1, image: "", ingredients: [""], steps: [""])
                    
                    favorite.favoriteRecipes = [firstRecipe]
                    
                    let result = favorite.checkFavoriteRecipe(secondRecipe)
                    expect(result).to(beFalse())
                }
            }
        }
    }
}
