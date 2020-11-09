//
//  SearchCollectionViewCell.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 08/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryNameLabel: UILabel!
    @IBOutlet weak var categoryView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func config(with: Category) {
        self.categoryImageView.loadImage(use: with.image)
        self.categoryNameLabel.text = with.name
        self.categoryView.layer.cornerRadius = 20
        self.categoryView.layer.shadowColor = UIColor(named: "discreteText")?.cgColor
        self.categoryView.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.categoryView.layer.shadowOpacity = 0.5
    }
}
