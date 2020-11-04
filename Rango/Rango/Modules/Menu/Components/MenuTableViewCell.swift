//
//  MenuTableViewCell.swift
//  Rango
//
//  Created by Bel Cogo on 03/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    @IBOutlet private weak var photoImageView: UIImageView!
    @IBOutlet private weak var categoryLabel: UILabel!

    func config(for option: Menu) {
        photoImageView.loadImage(use: option.image)
        categoryLabel.text = option.category
    }
    
}
