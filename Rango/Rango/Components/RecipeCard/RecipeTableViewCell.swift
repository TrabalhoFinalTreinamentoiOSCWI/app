//
//  RecipeTableViewCell.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 04/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class RecipeTableViewCell: UITableViewCell {

    @IBOutlet weak var recipeImageView: UIImageView!
    @IBOutlet weak var recipeNameLabel: UILabel!
    @IBOutlet weak var recipeBioName: UILabel!
    @IBOutlet weak var recipeTimeLabel: UILabel!
    @IBOutlet weak var recipeRatingLabel: UILabel!

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func config(_ recipe: Recipe) {
        self.recipeImageView.roundCorners(corners: [.allCorners], radius: 20)
        self.recipeImageView.loadImage(use: recipe.image)
        self.recipeNameLabel.text = recipe.name
        self.recipeBioName.text = recipe.bio
        self.recipeTimeLabel.text = "\(recipe.time) min"
        self.recipeRatingLabel.text = String(recipe.rating)
    }
    
}
