//
//  MenuPresenter.swift
//  Rango
//
//  Created by Bel Cogo on 02/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

class MenuPresenter: NSObject {
    let api = Api()
    var view: MenuTableViewType
    
    init(view: MenuTableViewType) {
        self.view = view
    }
}

extension MenuPresenter: MenuPresenterType {
    func screenDidLoad() {
        api.get(endpoint: .menu, success: success, error: error)
    }
    
    private func success(_ response: [Menu]) -> Void {
        DispatchQueue.main.async {
            self.view.setMenuOptions(with: response)
        }
    }
    
    private func error(_: Any) {
        print("deu ruim")
        // TODO: implementar tratamento
    }
}
