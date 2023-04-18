//
//  DetailContactViewController.swift
//  ContactList
//
//  Created by Kasharin Mikhail on 18.04.2023.
//

import UIKit

final class DetailContactViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
