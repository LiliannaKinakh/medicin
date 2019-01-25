//
//  Appointment.swift
//  Medics
//
//  Created by Lilianna Kinakh on 1/25/19.
//  Copyright © 2019 Lilianna Kinakh. All rights reserved.
//

import UIKit
import Foundation


protocol AppointmentDelegate {
    var appointments: [Appointment ]  { get set }
    
    func saveAppointment(appointment:Appointment)
    func editAppointment(appointment:Appointment, indexOfElement:Int)
    
}

class Appointment {
    
    var title: String?
    var text: String?
    var image: UIImage?
    
    init(title:String, text:String) {
        self.title = title
        self.text = text
        
    }
    
}



