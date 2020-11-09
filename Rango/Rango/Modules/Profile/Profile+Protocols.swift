//
//  ProfileProtocol.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 04/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

protocol ProfileViewType: LoaderViewType {
    
    func showUser(use user: User)
    
}

protocol ProfilePresenterType {
    
    var user: User? { get }
    
    func loadScreen()
    
}
