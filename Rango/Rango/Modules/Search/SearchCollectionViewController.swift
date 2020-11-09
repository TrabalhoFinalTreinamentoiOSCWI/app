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
    
    enum ConstantesDeLayout {
        static let alturaDaCelula: CGFloat = 160
        static let espacamentoHorizontal: CGFloat = 5
        static let espacamentoVertical: CGFloat = 5
        
        static func largura(baseadaNa larguraDaCollectionView: CGFloat) -> CGFloat {
            (larguraDaCollectionView - espacamentoHorizontal) / 2 - espacamentoHorizontal
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //TODO go to search result screen
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        .init(width: ConstantesDeLayout.largura(baseadaNa: collectionView.frame.width),
              height: ConstantesDeLayout.alturaDaCelula)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        .init(top:  ConstantesDeLayout.espacamentoVertical,
              left: ConstantesDeLayout.espacamentoHorizontal,
              bottom: ConstantesDeLayout.espacamentoVertical,
              right: ConstantesDeLayout.espacamentoHorizontal)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        ConstantesDeLayout.espacamentoHorizontal
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        ConstantesDeLayout.espacamentoVertical
    }
}
