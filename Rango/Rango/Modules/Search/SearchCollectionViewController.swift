//
//  SearchViewController.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 08/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class SearchCollectionViewController: UICollectionViewController {
    
    typealias Presenter = SearchPresenterType & UICollectionViewDataSource
    
    lazy var presenter: Presenter = SearchPresenter(view: self)
    
    var loaderScreen: LoaderViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self.presenter
        collectionView.register(R.nib.searchCollectionViewCell)
        presenter.loadScreen()
    }
}

extension SearchCollectionViewController: SearchViewType {
    
    func reloadCollection() {
        collectionView.reloadData()
    }
}

extension SearchCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    enum LayoutContants {
        static let cellHeight: CGFloat = 160
        static let horizontalSpacing: CGFloat = 10
        static let verticalSpacing: CGFloat = 10
        
        static func width(base collectionViewWidth: CGFloat) -> CGFloat {
            (collectionViewWidth - horizontalSpacing) / 2.1 - horizontalSpacing
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        .init(width: LayoutContants.width(base: collectionView.frame.width),
              height: LayoutContants.cellHeight)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        .init(top:  LayoutContants.verticalSpacing,
              left: LayoutContants.horizontalSpacing,
              bottom: LayoutContants.verticalSpacing,
              right: LayoutContants.horizontalSpacing)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        LayoutContants.horizontalSpacing
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        LayoutContants.verticalSpacing
    }
}
