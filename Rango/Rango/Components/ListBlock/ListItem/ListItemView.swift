//
//  ListItemView.swift
//  Rango
//
//  Created by Bel Cogo on 20/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class ListItemView: UIView {
    class func doNib() -> ListItemView {
        R.nib.listItemView.firstView(owner: nil)!
    }
    
    @IBOutlet private weak var dotView: UIView!
    @IBOutlet private weak var itemContentLabel: UILabel!
    
    func config(for item: String) {
        DispatchQueue.main.async {
            self.dotView.roundCorners(corners: [.allCorners], radius: 6)
            self.itemContentLabel.text = item
        }
    }
}
