//
//  ViewController+BackButtonText.swift
//  Rango
//
//  Created by Bel Cogo on 02/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

extension UIViewController {
    func removeBackButtonText() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
}
