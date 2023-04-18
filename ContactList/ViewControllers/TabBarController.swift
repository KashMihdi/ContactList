//
//  TabBarController.swift
//  ContactList
//
//  Created by Kasharin Mikhail on 18.04.2023.
//

import UIKit

class TabBarController: UITabBarController {
    
    var person = Person.getContact()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        viewControllers.forEach{
            let navigationVC  = $0 as? UINavigationController
            if let contactVC = navigationVC?.topViewController as? ContactTableViewController {
                contactVC.person = person
            } else if let fullContactVC = navigationVC?.topViewController as? FullContactTableViewController {
                fullContactVC.person = person
            }
        }
    }
}

