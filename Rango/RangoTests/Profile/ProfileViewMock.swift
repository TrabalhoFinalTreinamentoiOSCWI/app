//
//  ProfileViewMock.swift
//  RangoTests
//
//  Created by Rhian Lopes da Costa on 02/12/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

@testable import Rango

class ProfileViewMock: ProfileViewType {
    
    var loaderScreen: LoaderViewController?
    
    var shownUser: User?
    
    var hasError: Bool?
    
    func showUser(use user: User) {
        self.shownUser = user
    }
    
    func showLoader() {}
    
    func dismissLoader() {
        hasError = true
    }
}
