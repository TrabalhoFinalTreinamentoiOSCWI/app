//
//  SearchResultViewTypeMock.swift
//  RangoTests
//
//  Created by Rhian Lopes da Costa on 04/12/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

@testable import Rango

class SearchResultViewTypeMock: SearchResultViewType {
    
    var loaderScreen: LoaderViewController?
    
    var hasError: Bool?
    
    func showCards() {
        
    }
    
    func navigate(to viewController: UIViewController) {
        
    }
    
    func showLoader() {
        
    }
    
    func dismissLoader() {
        hasError = true
    }
}
