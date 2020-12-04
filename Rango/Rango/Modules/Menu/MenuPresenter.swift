//
//  MenuPresenter.swift
//  Rango
//
//  Created by Bel Cogo on 06/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

class MenuPresenter: NSObject {
    var api: NetworkServiceInterface = Api()
    var menuOptions: [Menu] = []
    var view: MenuViewType?
    
    init(view: MenuViewType) {
        self.view = view
    }
}

extension MenuPresenter: MenuPresenterType {
    func screenDidLoad() {
        view?.showLoader()
        self.api.get(endpoint: .menu) { (response: [Menu]) in
            DispatchQueue.main.async {
                self.view?.setMenuOptions(for: response)
                self.view?.dismissLoader()
            }
        } error: { (error) in
            print(error)
            self.view?.dismissLoader()
        }
    }
}
