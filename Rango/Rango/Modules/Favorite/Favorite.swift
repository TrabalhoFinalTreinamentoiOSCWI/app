//
//  Favorite.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 04/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

class Favorite {
    
    static let instance = Favorite()
    
    let favoriteKey = "rango-favorite"
    
    let userDefaults = UserDefaults.standard
    
    var favoriteRecipes: [Recipe] = []
    
    func alter(_ recipe: Recipe) -> Bool {
        defer {
            updateLocalData()
        }
        
        if let recipeIndex = favoriteRecipes.firstIndex(where: { $0.id == recipe.id }) {
            favoriteRecipes.remove(at: recipeIndex)
            return false
        }
        
        self.favoriteRecipes.append(recipe)
        return true
    }
    
    func remove(recipe: Recipe) {
        if let recipeIndex = favoriteRecipes.firstIndex(where: { $0.id == recipe.id }) {
            favoriteRecipes.remove(at: recipeIndex)
            updateLocalData()
        }
        
    }
    
    func checkFavoriteRecipe(_ recipe: Recipe) -> Bool {
        self.favoriteRecipes.contains(where: { $0.id == recipe.id })
    }
    
    private init() {
        findLocalData()
    }
}

extension Favorite {
    private func updateLocalData() {
        guard let codableData = try? JSONEncoder().encode(favoriteRecipes) else { return }
        
        userDefaults.setValue(codableData, forKey: favoriteKey)
    }
    
    private func findLocalData() {
        guard let dados = userDefaults.data(forKey: favoriteKey),
              let codableRecipe = try? JSONDecoder().decode([Recipe].self, from: dados)
              else { return }
        
        self.favoriteRecipes = codableRecipe
    }
}
