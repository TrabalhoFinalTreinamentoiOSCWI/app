//
//  FavoriteTableViewController.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 04/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class FavoriteTableViewController: UITableViewController {
    
    var recipes: [Recipe] {
        Favorite.instance.favoriteRecipes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(resource: R.nib.recipeTableViewCell), forCellReuseIdentifier: "favorite-cell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension FavoriteTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        recipes.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        130
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favorite-cell", for: indexPath) as! RecipeTableViewCell
        
        cell.config(recipes[0])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(style: .destructive, title: "Remover") {acao, view, handler in
            let recipe = self.recipes[indexPath.row]
            Favorite.instance.remove(recipe: recipe)
            tableView.deleteRows(at: [indexPath], with: .left)
            handler(true)
        }
        return .init(actions: [action])
    }
}
