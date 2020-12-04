//
//  MenuViewTypeMock.swift
//  RangoTests
//
//  Created by Rhian Lopes da Costa on 03/12/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

@testable import Rango

class MenuViewTypeMock: MenuViewType {
    
    var menuOptions: [Menu]? = []
    
    var loaderScreen: LoaderViewController?
    
    func setMenuOptions(for options: [Menu]) {
        self.menuOptions = options
    }
    
    func showLoader() {
        
    }
    
    func dismissLoader() {
        
    }
}
