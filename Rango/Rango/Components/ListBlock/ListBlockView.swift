//
//  ListBlockView.swift
//  Rango
//
//  Created by Bel Cogo on 20/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class ListBlockView: UIView {
    class func doNib() -> ListBlockView {
        R.nib.listBlockView.firstView(owner: nil)!
    }
    
    @IBOutlet private weak var listTitleLabel: UILabel!
    @IBOutlet private weak var listStackView: UIStackView!
    
    func config(for list: [String], named title: String) {
        DispatchQueue.main.async {
            self.listTitleLabel.text = title
            
            for item in list {
                let itemView = ListItemView.doNib()
                itemView.config(for: item)
//                itemView.frame.size.height = 26
                self.listStackView.addArrangedSubview(itemView)
            }
            
            self.listStackView.addArrangedSubview(UIView())
        }
    }
}
