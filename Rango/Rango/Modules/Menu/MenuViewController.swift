//
//  MenuViewController.swift
//  Rango
//
//  Created by Bel Cogo on 06/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet private weak var optionsStackView: UIStackView!
    lazy var presenter: MenuPresenterType = MenuPresenter(view: self)
    
    var loaderScreen: LoaderViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.removeBackButtonText
        presenter.screenDidLoad()
    }
    
    @objc func action(_ sender: UITapGestureRecognizer) {
        guard let category = sender.name else { return }
        
        let viewController = SearchResultTableViewController()
        viewController.config(path: category)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

extension MenuViewController: MenuViewType {
    func setMenuOptions(for options: [Menu]) {
        DispatchQueue.main.async {
            let listSize = options.count
            for option in options {
                let menuOptionView = self.mountOptionView(for: option, listSize)
                self.optionsStackView.addArrangedSubview(menuOptionView)
            }
        }
    }
    
    private func mountOptionView(for currentOption: Menu, _ listSize: Int) -> MenuOptionView {
        let menuOptionView = MenuOptionView.doNib()
        menuOptionView.config(for: currentOption)
        menuOptionView.setSize(
            for: self.optionsStackView,
            numberOfItems: CGFloat(listSize),
            spacing: CGFloat(30))
        menuOptionView.roundCorners(corners: [.allCorners], radius: 10)
        let gestureRecognizer = self.getGestureRecognizer(for: menuOptionView)
        gestureRecognizer.name = currentOption.category
        menuOptionView.addGestureRecognizer(gestureRecognizer)
        
        return menuOptionView
    }
    
    private func getGestureRecognizer(for view: UIView) -> UITapGestureRecognizer {
        return UITapGestureRecognizer(target: self, action: #selector(self.action))
    }
}
