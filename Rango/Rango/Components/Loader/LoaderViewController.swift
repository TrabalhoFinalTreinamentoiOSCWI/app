//
//  LoaderViewController.swift
//  Rango
//
//  Created by Bel Cogo on 07/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class LoaderViewController: UIViewController {
    class func doNib() -> LoaderViewController {
        let viewController = LoaderViewController(nib: R.nib.loaderViewController)
        viewController.modalPresentationStyle = .overFullScreen
        viewController.modalTransitionStyle = .crossDissolve
        
        return viewController
    }
}
