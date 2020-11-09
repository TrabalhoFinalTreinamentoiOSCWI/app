//
//  SearchResultTableViewController.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 09/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class SearchResultTableViewController: UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(resource: R.nib.recipeTableViewCell), forCellReuseIdentifier: "recipe-cell")
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}
