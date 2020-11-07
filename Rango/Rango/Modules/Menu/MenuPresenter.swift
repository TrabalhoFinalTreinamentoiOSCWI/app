//
//  MenuPresenter.swift
//  Rango
//
//  Created by Bel Cogo on 06/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

class MenuPresenter: NSObject {
    let api = Api()
    var menuOptions: [Menu] = []
    var view: MenuViewType?
    
    init(view: MenuViewType) {
        self.view = view
    }
}

extension MenuPresenter: MenuPresenterType {
    func screenDidLoad() {
        view?.showLoader()
        request()
    }
    
    private func request() {
        self.api.get(endpoint: .menu, success: success, error: fail)
    }
    
    private func success(_ response: [Menu]) {
        DispatchQueue.main.async {
            self.view?.setMenuOptions(for: response)
            self.view?.dismissLoader()
        }
    }
    
    private func fail(_ error: String) {
        print(error)
    }
}
