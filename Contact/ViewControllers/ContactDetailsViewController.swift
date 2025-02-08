//
//  ContactDetailsViewController.swift
//  Contact
//
//  Created by Дима Монид on 8.02.25.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneNumberLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }


}
