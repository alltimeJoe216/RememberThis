//
//  OnboardViewController.swift
//  RememberThis1
//
//  Created by Marissa Gonzales on 6/11/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

class OnboardViewController: UIViewController {

    //MARK: -IBOutlets
    @IBOutlet weak var pinkViewCard: UIView!
    @IBOutlet weak var loginButtonOutlet: UIButton!
    @IBOutlet weak var createAccountButtonOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        customizeButtonsAndShit()

    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "ToLoginSegue", sender: sender)
    }
    func customizeButtonsAndShit() {
        loginButtonOutlet.layer.cornerRadius = 10.0
        createAccountButtonOutlet.layer.cornerRadius = 10.0
        pinkViewCard.layer.cornerRadius = 10.0
        pinkViewCard.layer.shadowColor = UIColor(named: "MyPurple")?.cgColor
        pinkViewCard.layer.shadowOffset = CGSize(width:0 , height: 1.7)
        pinkViewCard.layer.shadowRadius = 1.7
        pinkViewCard.layer.shadowOpacity = 0.45
        createAccountButtonOutlet.layer.cornerRadius = 10.0
        createAccountButtonOutlet.layer.shadowColor = UIColor(named: "MyPurple")?.cgColor
        createAccountButtonOutlet.layer.shadowOffset = CGSize(width:0 , height: 1.7)
        createAccountButtonOutlet.layer.shadowRadius = 1.7
        createAccountButtonOutlet.layer.shadowOpacity = 0.45
        loginButtonOutlet.layer.cornerRadius = 10.0
        loginButtonOutlet.layer.shadowColor = UIColor(named: "MyPurple")?.cgColor
        loginButtonOutlet.layer.shadowOffset = CGSize(width:0 , height: 1.7)
        loginButtonOutlet.layer.shadowRadius = 1.7
        loginButtonOutlet.layer.shadowOpacity = 0.45
    }

}
class OnboardVC: UIViewController {

    //MARK: -IBOutlets
    @IBOutlet weak var pinkViewCard: UIView!
    @IBOutlet weak var loginButtonOutlet: UIButton!
    @IBOutlet weak var createAccountButtonOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        customizeButtonsAndShit()

    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "ToLoginSegue", sender: sender)
    }
    func customizeButtonsAndShit() {
        loginButtonOutlet.layer.cornerRadius = 10.0
        createAccountButtonOutlet.layer.cornerRadius = 10.0
        pinkViewCard.layer.cornerRadius = 10.0
        pinkViewCard.layer.shadowColor = UIColor(named: "MyPurple")?.cgColor
        pinkViewCard.layer.shadowOffset = CGSize(width:0 , height: 1.7)
        pinkViewCard.layer.shadowRadius = 1.7
        pinkViewCard.layer.shadowOpacity = 0.45
        createAccountButtonOutlet.layer.cornerRadius = 10.0
        createAccountButtonOutlet.layer.shadowColor = UIColor(named: "MyPurple")?.cgColor
        createAccountButtonOutlet.layer.shadowOffset = CGSize(width:0 , height: 1.7)
        createAccountButtonOutlet.layer.shadowRadius = 1.7
        createAccountButtonOutlet.layer.shadowOpacity = 0.45
        loginButtonOutlet.layer.cornerRadius = 10.0
        loginButtonOutlet.layer.shadowColor = UIColor(named: "MyPurple")?.cgColor
        loginButtonOutlet.layer.shadowOffset = CGSize(width:0 , height: 1.7)
        loginButtonOutlet.layer.shadowRadius = 1.7
        loginButtonOutlet.layer.shadowOpacity = 0.45
    }

}

