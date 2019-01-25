//
//  AppointmentListViewController.swift
//  Medics
//
//  Created by Lilianna Kinakh on 1/25/19.
//  Copyright © 2019 Lilianna Kinakh. All rights reserved.
//

import UIKit

class AppointmentListViewController: UIViewController, AppointmentDelegate {
   
    var appointments: [Appointment] = []
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            setupTableView()
    
    }
    
    @IBAction func edit(_ sender: Any) {
        tableView.isEditing = !tableView.isEditing
    }
    
    func saveAppointment(appointment: Appointment) {
        appointments.append(appointment)
    }
    
    func editAppointment(appointment:Appointment, indexOfElement:Int) {
        appointments[indexOfElement] = appointment
        
    }
    
    private func setupTableView() {
        tableView.register(UINib(nibName: "NoteTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
    }
    

}

extension AppointmentListViewController: UITableViewDataSource , UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.bounds.size.height / 8
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return appointments.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? AppointmentTableViewCell else {
            return UITableViewCell()
    }
        cell.setupWith(appointment: appointments[indexPath.row])

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "Edit1", sender: self)
    }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    //MARK: - Delete
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            appointments.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .left)
        }
    }

    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let item = appointments[sourceIndexPath.row]
        appointments.remove(at: sourceIndexPath.row)
        appointments.insert(item, at: destinationIndexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Create1" {
            if let dest = segue.destination as? AddAppointmentViewController {
                dest.delegate = self 
            }
        }
        if segue.identifier == "Edit1" {
            if  let dest = segue.destination as? EditAppointmentViewController {

                if let selectedIndex = tableView.indexPathForSelectedRow {
                    dest.thisAppointment = appointments[selectedIndex.row]
                    dest.pathIndex = selectedIndex.row
                    dest.delegate = self
                }
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
        
    }
    
}


