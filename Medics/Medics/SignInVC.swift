//
//  SignInVC.swift
//  Medics
//
//  Created by Lilianna Kinakh on 1/22/19.
//  Copyright © 2019 Lilianna Kinakh. All rights reserved.
//

import UIKit

class SignInVC: UIViewController {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoImageView.image = UIImage(named: "medicsLogo")
        loginButton.layer.cornerRadius = loginButton.bounds.height / 2.5
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        
    }

}

