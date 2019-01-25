//
//  AppointmentTableViewCell.swift
//  Medics
//
//  Created by Lilianna Kinakh on 1/25/19.
//  Copyright © 2019 Lilianna Kinakh. All rights reserved.
//

import UIKit

class AppointmentTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        leftImageView.layer.cornerRadius = leftImageView.frame.height / 2
        leftImageView.layer.backgroundColor = UIColor.red.cgColor
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func setupWith(appointment: Appointment) {
        titleLabel.text = appointment.title
        phoneLabel.text = appointment.text
        
    }
    
}
