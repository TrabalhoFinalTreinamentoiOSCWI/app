//
//  RecipeViewController.swift
//  Rango
//
//  Created by Bel Cogo on 08/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {
    
    @IBOutlet private weak var photoImageView: UIImageView!
    @IBOutlet private weak var bioLabel: UILabel!
    @IBOutlet private weak var dificultyView: UIView! 
    @IBOutlet private weak var dificultyLabel: UILabel!
    @IBOutlet private weak var expectedTimeLabel: UILabel!
    @IBOutlet private weak var favoriteButton: UIButton!
    private var recipe: Recipe!

    @IBAction func onClickFavoriteButton(_ sender: UIButton) {
        Favorite.instance.alter(self.recipe)
        self.configureIsFavorite(for: self.recipe)
    }
    
    func config(for recipe: Recipe) {
        self.recipe = recipe
        self.title = recipe.name.uppercased()
        self.removeBackButtonText
        self.setTitleColor
        DispatchQueue.main.async {
            self.photoImageView.loadImage(use: recipe.image)
            self.photoImageView.roundCorners(corners: [.allCorners], radius: 10)
            self.bioLabel.text = recipe.bio
            self.dificultyLabel.text = recipe.dificulty.text
            self.dificultyView.layer.backgroundColor = recipe.dificulty.color!
            self.dificultyView.roundCorners(corners: [.allCorners], radius: 50)
            self.expectedTimeLabel.text = "Tempo de preparo estimado em \(recipe.time)min"
            self.configureIsFavorite(for: recipe)
        }
        
    }
    
    private func configureIsFavorite(for recipe: Recipe) {
        let isFavorite = Favorite.instance.checkFavoriteRecipe(recipe)
        let image = isFavorite ? UIImage(systemName: "heart.fill") : UIImage(systemName: "heart")
        let tintColor = isFavorite ? Colors.favorite() : .white
        self.favoriteButton.tintColor = tintColor
        self.favoriteButton.setBackgroundImage(image, for: .normal)
        self.favoriteButton.withShadow
    }
}
