//
//  UIImageView+LoadImage.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 02/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit
import Nuke

extension UIImageView {
    
    func loadImage(use url: String) {
        guard let url = URL(string: url) else { return }
        
        let options = ImageLoadingOptions(placeholder: UIImage(systemName: "photo"))
        
        Nuke.loadImage(with: url, options: options, into: self)
    }
}
