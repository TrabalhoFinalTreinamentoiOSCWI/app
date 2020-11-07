//
//  LoaderViewType.swift
//  Rango
//
//  Created by Bel Cogo on 07/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

protocol LoaderViewType: AnyObject {
    var loaderScreen: LoaderViewController? { get set }
    
    func showLoader()
    func dismissLoader()
}

extension LoaderViewType where Self: UIViewController {
    func showLoader() {
        loaderScreen = LoaderViewController.doNib()
        present(loaderScreen!, animated: true)
    }
    
    func dismissLoader() {
        loaderScreen?.dismiss(animated: true)
        loaderScreen = nil
    }
}
