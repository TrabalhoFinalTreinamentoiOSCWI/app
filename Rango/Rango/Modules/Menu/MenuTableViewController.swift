//
//  MenuViewController.swift
//  Rango
//
//  Created by Bel Cogo on 02/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    lazy var presenter: MenuPresenterType = MenuPresenter(view: self)
    var menuOptions: [Menu] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "MENU"
        
        removeBackButtonText()
        presenter.screenDidLoad()
    }

}

extension MenuTableViewController: MenuTableViewType {
    func setMenuOptions(with values: [Menu]) {
        self.menuOptions = values
    }
}

// MARK: UITableViewDelegate
extension MenuTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int { 1 }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { menuOptions.count
    }
                
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        nil
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { 195 }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "menu-cell", for: indexPath) as! MenuTableViewCell
        let option = menuOptions[indexPath.item]
        celula.config(for: option)
        
        return celula
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let cafe = categorias[indexPath.section].cafes[indexPath.row]
//        let detalheCafeViewPresenter = DetalheCafePresenter.criarModulo(passando: cafe)
//        navigationController?.pushViewController(detalheCafeViewPresenter, animated: true)
//    }
}
