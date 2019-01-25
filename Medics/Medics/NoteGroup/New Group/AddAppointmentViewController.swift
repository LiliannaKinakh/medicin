//
//  AddAppointmentViewController.swift
//  Medics
//
//  Created by Lilianna Kinakh on 1/25/19.
//  Copyright © 2019 Lilianna Kinakh. All rights reserved.
//

import UIKit

class AddAppointmentViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    var delegate: AppointmentDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "Full Name"
        textLabel.text = "Phone"
        attributeToSaveButton()
        
    }
    
    func attributeToSaveButton() {
        saveButton.layer.cornerRadius = saveButton.bounds.height / 2.5
        
    }
    //MARK: -Save button
    @IBAction func SaveButton(_ sender: Any) {
        let title = titleTextField.text ?? ""
        let text = textTextField.text ?? ""
        
        let appointment = Appointment(title: title, text: text)
        delegate?.saveAppointment(appointment: appointment)
        
        navigationController?.popViewController(animated: true)
        
    }
    
}

