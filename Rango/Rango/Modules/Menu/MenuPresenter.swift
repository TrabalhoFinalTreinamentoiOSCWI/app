//
//  MenuPresenter.swift
//  Rango
//
//  Created by Bel Cogo on 04/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

class MenuPresenter {
    let api = Api()
    var menuOptions: [Menu] = []
    var view: MenuViewType?
    
    init(view: MenuViewType) {
        self.view = view
    }
}

extension MenuPresenter: MenuPresenterType {
    func screenDidLoad() {
        request()
    }
    
    private func request() {
        self.api.get(endpoint: .menu, success: success, error: fail)
    }
    
    private func success(_ response: [Menu]) {
        view?.setMenuOptions(for: response)
    }
    
    private func fail(_ error: String) {
        print(error)
    }
}
