//
//  SearchResultPresenter.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 09/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class SearchResultPresenter: NSObject {
    
    var view: SearchResultViewType?
    var recipes: [Recipe] = []
    let api = Api()
    
    init(view: SearchResultViewType) {
        self.view = view
    }
}

extension SearchResultPresenter: SearchResultPresenterType {
    func onSelect(with indexPath: IndexPath) {
        let recipe = recipes[indexPath.row]
        let recipeViewController = RecipeViewController()
        
        recipeViewController.config(for: recipe)
        view?.navigate(to: recipeViewController)
    }
    
    
    func loadScreen(path: String) {
        self.view?.showLoader()
        self.api.get(endpoint: path.findEndpointByPath(path: path) ?? .salads, success: success, error: fail)
    }
    
    private func success(_ recipes: [Recipe]) {
        DispatchQueue.main.async {
            self.recipes = recipes
            self.view?.showCards()
            self.view?.dismissLoader()
        }
    }
    
    private func fail(_ error: String) {
        print(error)
        self.view?.dismissLoader()
    }
}

extension SearchResultPresenter: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.recipes.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        130
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipe-cell", for: indexPath) as! RecipeTableViewCell
        
        cell.config(self.recipes[indexPath.row])
        return cell
    }
}
