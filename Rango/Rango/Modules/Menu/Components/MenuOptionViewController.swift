//
//  MenuOptionViewController.swift
//  Rango
//
//  Created by Bel Cogo on 05/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class MenuOptionView: UIView {

    @IBOutlet private weak var photoImageView: UIImageView!
    @IBOutlet private weak var categoryLabel: UILabel!
    
    func config(for option: Menu) {
        self.photoImageView.loadImage(use: option.image)
        self.categoryLabel.text = option.category
    }
}
