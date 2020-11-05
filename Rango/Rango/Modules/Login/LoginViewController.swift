//
//  LoginViewController.swift
//  Rango
//
//  Created by Ederson Machado on 05/11/20.
//  Copyright © 2020 CWI. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    let LOGIN_VIEW_CONTROLLER = "LoginViewController"
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    @IBAction func onSubmit(_ sender: Any) {
        navigateToMainStack()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        loadNib()
        setUI()
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if (textField == self.emailTextField) {
            self.passwordTextField.becomeFirstResponder()
        }

        return true
    }
    
    func loadNib() {
        Bundle.main.loadNibNamed(LOGIN_VIEW_CONTROLLER, owner: self, options: nil)
    }
    
}

extension LoginViewController {
    
    private func navigateToMainStack() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "MainStack")
        
        navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    private enum LayoutConstants {
        static let cornerRadiusButton: CGFloat = 10
        static let cornerRadiusTextField: CGFloat = 10
        static let paddingTextField: CGFloat = 10
    }
    
    
    private func setUI() {
        emailTextField.setLeftPaddingPoints(LayoutConstants.paddingTextField)
        emailTextField.setRightPaddingPoints(LayoutConstants.paddingTextField)
        passwordTextField.setLeftPaddingPoints(LayoutConstants.paddingTextField)
        passwordTextField.setRightPaddingPoints(LayoutConstants.paddingTextField)
        
        emailTextField.layer.cornerRadius = LayoutConstants.cornerRadiusTextField
        passwordTextField.layer.cornerRadius = LayoutConstants.cornerRadiusTextField
        submitButton.layer.cornerRadius = LayoutConstants.cornerRadiusButton
    }
}

