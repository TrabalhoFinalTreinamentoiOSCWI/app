//
//  CardRecipeTableViewCell.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 02/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class CardRecipeTableViewCell: UITableViewCell {

    @IBOutlet weak var recipeImageView: UIImageView!
    
    @IBOutlet weak var recipeNameLabel: UILabel!
    
    @IBOutlet weak var recipeBioLabel: UILabel!
    
    @IBOutlet weak var dificultyLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    func config(recipe: Recipe) {
        self.recipeImageView.loadImage(use: recipe.image)
        self.recipeNameLabel.text = recipe.name
        self.recipeBioLabel.text = recipe.bio
        self.dificultyLabel.text = recipe.dificulty.rawValue
        self.timeLabel.text = String(recipe.time)
    }
}
