//
//  DateViewController.swift
//  MyContactList
//
//  Created by user236797 on 4/4/23.
//

import UIKit

protocol DateControllerDelegate: AnyObject {
    func dateChanged(date: Date)
}

class DateViewController: UIViewController {

    weak var delegate: DateControllerDelegate?
    
    @IBOutlet weak var dtpDate: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let saveButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveDate))
        self.navigationItem.rightBarButtonItem = saveButton
        self.title = "Pick Birthdate"
    }
    
    @objc func saveDate() {
        self.delegate?.dateChanged(date: dtpDate.date)
        self.navigationController?.popViewController(animated: true)
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
