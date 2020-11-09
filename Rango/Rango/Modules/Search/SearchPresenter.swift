//
//  SearchPresenter.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 08/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import Foundation

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
    
    
}
