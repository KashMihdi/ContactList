//
//  TabBarController.swift
//  ContactList
//
//  Created by Kasharin Mikhail on 18.04.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    // MARK: - Private Properties
    private let person = Person.getContact()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
    }
    
    // MARK: - Transfer Data
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

