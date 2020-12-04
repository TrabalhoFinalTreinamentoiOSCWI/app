//
//  Menu+Protocols.swift
//  Rango
//
//  Created by Bel Cogo on 06/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

protocol MenuViewType: LoaderViewType {

    func setMenuOptions(for options: [Menu])
    
}

protocol MenuPresenterType {
    
    var view: MenuViewType? { get set }
    
    var api: NetworkServiceInterface { get set }
    
    func screenDidLoad()
    
}
