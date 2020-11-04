//
//  MenuPresenter.swift
//  Rango
//
//  Created by Bel Cogo on 02/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class MenuPresenter: NSObject {
    let api = Api()
    var view: MenuTableViewType?
    var menuOptions: [Menu] = []
    
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
            self.menuOptions = response
            self.view?.updateList()
        }
    }
    
    private func error(_: Any) {
        print("deu ruim")
        // TODO: implementar tratamento
    }
}

extension MenuPresenter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menuOptions.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int { 1 }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: R.nib.menuTableViewCell.name, for: indexPath) as! MenuTableViewCell
        let option = menuOptions[indexPath.item]
        cell.config(for: option)
        
        return cell

    }
}
