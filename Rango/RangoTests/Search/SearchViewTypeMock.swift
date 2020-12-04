//
//  SearchViewTypeMock.swift
//  RangoTests
//
//  Created by Rhian Lopes da Costa on 04/12/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

@testable import Rango

class SearchViewTypeMock: SearchViewType {
    
    var loaderScreen: LoaderViewController?
    
    var hasError: Bool?
    
    func reloadCollection() {
        
    }
    
    func showLoader() {
        
    }
    
    func dismissLoader() {
        hasError = true
    }
}

