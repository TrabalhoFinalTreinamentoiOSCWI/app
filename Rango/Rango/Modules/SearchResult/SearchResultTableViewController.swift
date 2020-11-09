//
//  SearchResultTableViewController.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 09/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class SearchResultTableViewController: UITableViewController {
    
    lazy var presenter: SearchResultPresenterType = SearchResultPresenter(view: self)
    
    var loaderScreen: LoaderViewController?
    
    var path: String = "salads"
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(resource: R.nib.recipeTableViewCell), forCellReuseIdentifier: "recipe-cell")
        tableView.delegate = self
        tableView.dataSource = self
        presenter.loadScreen(path: self.path)
    }
    
    func config(path: String) {
        self.path = path
    }
}

extension SearchResultTableViewController: SearchResultViewType {
    
    func showCards() {
        tableView.reloadData()
    }
}
