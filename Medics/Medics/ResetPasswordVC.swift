//
//  ResetPasswordVC.swift
//  Medics
//
//  Created by Lilianna Kinakh on 1/23/19.
//  Copyright © 2019 Lilianna Kinakh. All rights reserved.
//

import UIKit

class ResetPasswordVC: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        logoImageView.image = UIImage(named: "medicsLogo")
        resetButton.layer.cornerRadius = resetButton.bounds.height / 2.5
        cancelButton.layer.cornerRadius = cancelButton.bounds.height / 2.5
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
