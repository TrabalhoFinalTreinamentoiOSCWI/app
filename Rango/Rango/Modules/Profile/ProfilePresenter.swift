//
//  ProfilePresenter.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 04/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

class ProfilePresenter {
    
    var view: ProfileViewType?
    var user: User?
    let api = Api()
    
}

extension ProfilePresenter: ProfilePresenterType {
    
    func loadScreen() {
        self.api.get(endpoint: .users(id: 1)) { (user: User) in
            self.user = user
            self.view?.showUser(use: user)
        } error: { (error) in
            print(error)
        }
    }
    
}
