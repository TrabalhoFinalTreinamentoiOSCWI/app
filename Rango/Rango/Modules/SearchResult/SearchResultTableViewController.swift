//
//  SearchResultTableViewController.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 09/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class SearchResultTableViewController: UITableViewController {
    
    typealias Presenter = SearchResultPresenterType & UITableViewDataSource
    
    lazy var presenter: Presenter = SearchResultPresenter(view: self)
    
    var loaderScreen: LoaderViewController?
    
    var path: String = "salads"
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "PESQUISA"
        self.removeBackButtonText
        self.setTitleColor
        presenter.loadScreen(path: self.path)
        
        tableView.register(UINib(resource: R.nib.recipeTableViewCell), forCellReuseIdentifier: "recipe-cell")
        tableView.delegate = self
        tableView.dataSource = self.presenter
    }
    
    func config(path: String) {
        self.path = path
       
    }
}

extension SearchResultTableViewController: SearchResultViewType {
    
    func showCards() {
        tableView.reloadData()
    }
    
    func navigate(to viewController: UIViewController) {
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

extension SearchResultTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.presenter.onSelect(with: indexPath)
    }
}
