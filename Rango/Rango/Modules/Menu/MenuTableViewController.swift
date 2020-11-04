//
//  MenuViewController.swift
//  Rango
//
//  Created by Bel Cogo on 02/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    typealias Presenter = MenuPresenterType & UITableViewDataSource
    @IBOutlet private weak var tableView: UITableView!
    lazy var presenter: Presenter = MenuPresenter(view: self)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "MENU"
        configurateTable()
        removeBackButtonText()
        presenter.screenDidLoad()
    }
    
    private func configurateTable() {
        tableView.dataSource = presenter
        tableView.delegate = self
        tableView.register(R.nib.menuTableViewCell)
    }
}

extension MenuViewController: MenuTableViewType {
    
    func presentTable(_ screen: UIViewController) {
        self.present(screen, animated: true, completion: nil)
    }
    
    func updateList() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }

}

// MARK: UITableViewDelegate
extension MenuViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        195
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        nil
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        presenter.selecionouCelula(com: indexPath)
//    }
}
