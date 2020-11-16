//
//  UIViewController+BackButtonText.swift
//  Rango
//
//  Created by Bel Cogo on 15/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

extension UIViewController {
    var removeBackButtonText: Void {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    var setTitleColor: Void {
        navigationController?.navigationBar.tintColor = Colors.accent()
    }
    
}
