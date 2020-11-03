//
//  MenuViewController.swift
//  Rango
//
//  Created by Bel Cogo on 02/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class MenuTableViewController: UIViewController {
    
    var presenter: MenuPresenterType?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "MENU"
        
        removeBackButtonText()
        presenter?.screenDidLoad()
    }

}
