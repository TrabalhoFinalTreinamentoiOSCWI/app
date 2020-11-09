//
//  SearchPresenter.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 08/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class SearchPresenter: NSObject {
    
    var view: SearchViewType?
    var categories: [Category] = []
    let api = Api()
    
    init(view: SearchViewType) {
        self.view = view
    }
}

extension SearchPresenter: SearchPresenterType {
    
    func loadScreen() {
        self.view?.showLoader()
        self.api.get(endpoint: .categories, success: success, error: fail)
    }
    
    private func success(_ categories: [Category]) {
        DispatchQueue.main.async {
            self.categories = categories
            self.view?.reloadCollection()
            self.view?.dismissLoader()
        }
    }
    
    private func fail(_ error: String) {
        print(error)
        self.view?.dismissLoader()
    }
}

extension SearchPresenter: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: R.reuseIdentifier.searchCell, for: indexPath)!
        let category = categories[indexPath.item]

        cell.config(with: category)
        
        return cell
    }
}
