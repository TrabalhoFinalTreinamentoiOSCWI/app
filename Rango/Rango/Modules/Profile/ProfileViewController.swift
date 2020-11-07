//
//  ProfileViewController.swift
//  Rango
//
//  Created by Rhian Lopes da Costa on 04/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileNameLabel: UILabel!
    @IBOutlet weak var profileEmailLabel: UILabel!
    @IBOutlet weak var profileBioLabel: UILabel!
    @IBOutlet weak var favoriteCountLabel: UILabel!
    
    lazy var presenter: ProfilePresenter = ProfilePresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.profileImageView.layer.cornerRadius = 20
        self.presenter.view = self
        self.presenter.loadScreen()
    }
}

extension ProfileViewController: ProfileViewType {
    
    func showUser(use user: User) {
        DispatchQueue.main.async {
            guard let user = self.presenter.user else { return }
            if let image = user.image {
                self.profileImageView.loadImage(use: image)
            }
            self.profileNameLabel.text = user.name
            self.profileEmailLabel.text = user.email
            self.profileBioLabel.text = user.bio
            self.favoriteCountLabel.text = String(Favorite.instance.favoriteRecipes.count)
        }
    }
}
