//
//  ContinueVC.swift
//  Medics
//
//  Created by Lilianna Kinakh on 1/22/19.
//  Copyright © 2019 Lilianna Kinakh. All rights reserved.
//

import UIKit

class ContinueVC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "doneIcon")
        continueButton.layer.cornerRadius = continueButton.bounds.height / 2.5
        
    }
    
    @IBAction func continueButtonTapped(_ sender: Any) {
        
    }
}

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
// Get the new view controller using segue.destination.
// Pass the selected object to the new view controller.
// }
//


