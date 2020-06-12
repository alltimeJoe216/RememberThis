//
//  LoginViewController.swift
//  RememberThis1
//
//  Created by Marissa Gonzales on 6/11/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK: -IBOutlets
    @IBOutlet weak var pinkViewCard: UIView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var loginButtonOutlet: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        customizeButtonsAndShit()
    }

    //MARK: -IBActions
    @IBAction func loginButtonAction(_ sender: Any) {
    }

    //MARK: - Private Methods
    // View Customization
    private func customizeButtonsAndShit() {
        pinkViewCard.layer.cornerRadius = 10.0
        pinkViewCard.layer.shadowColor = UIColor(named: "MyPurple")?.cgColor
        pinkViewCard.layer.shadowOffset = CGSize(width:0 , height: 1.7)
        pinkViewCard.layer.shadowRadius = 1.7
        pinkViewCard.layer.shadowOpacity = 0.45
        loginButtonOutlet.layer.cornerRadius = 10.0
        loginButtonOutlet.layer.shadowColor = UIColor(named: "MyPurple")?.cgColor
        loginButtonOutlet.layer.shadowOffset = CGSize(width:0 , height: 1.7)
        loginButtonOutlet.layer.shadowRadius = 1.7
        loginButtonOutlet.layer.shadowOpacity = 0.45
        usernameTextField.addBottomBorder()
        passwordTextField.addBottomBorder()
    }
}

extension UITextField {
    func addBottomBorder() {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.size.height - 1, width: self.frame.size.width, height: 1)
        bottomLine.backgroundColor = UIColor(named: "MyPurple")?.cgColor
        borderStyle = .none
        layer.addSublayer(bottomLine)
    }
}
