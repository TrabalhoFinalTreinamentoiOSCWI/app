//
//  MenuOptionView.swift
//  Rango
//
//  Created by Bel Cogo on 06/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class MenuOptionView: UIView {
    
    class func doNib() -> MenuOptionView {
        R.nib.menuOptionView.firstView(owner: nil)!
    }

    @IBOutlet private weak var photoImageView: UIImageView!
    @IBOutlet private weak var categoryLabel: UILabel!
    @IBOutlet private weak var categoryView: UIView!
    
    
    func config(for option: Menu) {
        
        DispatchQueue.main.async {
            self.photoImageView.loadImage(use: option.image)
            self.categoryLabel.text = option.category.capitalized
            self.categoryView.roundCorners(corners: [.topRight, .bottomRight], radius: 50)
        }
    }
}
