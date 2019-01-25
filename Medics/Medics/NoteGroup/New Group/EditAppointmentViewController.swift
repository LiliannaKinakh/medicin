//
//  EditAppointmentViewController.swift
//  Medics
//
//  Created by Lilianna Kinakh on 1/25/19.
//  Copyright © 2019 Lilianna Kinakh. All rights reserved.
//

import UIKit

class EditAppointmentViewController: UIViewController {
    
    var thisAppointment = Appointment(title: "", text: "")
    var pathIndex:Int = 0
    var delegate: AppointmentDelegate?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var textTextField: UITextField!
    
    @IBOutlet weak var updateButton: UIButton!

    override func viewDidLoad() {
        
        titleLabel.text = "Full Name"
        textLabel.text = "Phone"
        titleLabel.textColor = .red
        textLabel.textColor = .red
        attributeToSaveButton()
        
        titleTextField.text = thisAppointment.title
        textTextField.text = thisAppointment.text
        
        super.viewDidLoad()
        
    }
    
    func attributeToSaveButton() {

        updateButton.layer.cornerRadius = updateButton.bounds.height / 2.5
        
    }
    
    @IBAction func editButtonTapped(_ sender: Any) {
       
        let text = textTextField.text ?? ""
        let title = titleTextField.text ?? ""
        
        print("\(text)")
        print("\(title)")
        
        let editAppointment = Appointment(title: title , text: text)
        
        delegate?.editAppointment(appointment: editAppointment, indexOfElement: pathIndex)
        
        navigationController?.popViewController(animated: true)
        
    }
    
}
