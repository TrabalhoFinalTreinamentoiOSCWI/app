//
//  Menu+Protocols.swift
//  Rango
//
//  Created by Bel Cogo on 06/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

protocol MenuViewType {
    func setMenuOptions(for options: [Menu])
}

protocol MenuPresenterType {
    func screenDidLoad()
}
