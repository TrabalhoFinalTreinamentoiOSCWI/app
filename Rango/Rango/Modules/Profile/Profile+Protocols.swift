//
//  Profile+Protocols.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 09/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

protocol ProfileViewType: LoaderViewType {
    
    func showUser(use user: User)
    
}

protocol ProfilePresenterType {
    
    var view: ProfileViewType? { get set }
    
    var api: NetworkServiceInterface { get set }
    
    var user: User? { get }
    
    func loadScreen()
    
}
