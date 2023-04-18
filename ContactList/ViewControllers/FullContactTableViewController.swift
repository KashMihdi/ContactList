//
//  FullContactTableViewController.swift
//  ContactList
//
//  Created by Kasharin Mikhail on 18.04.2023.
//

import UIKit

class FullContactTableViewController: UITableViewController {
    
    var person: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return person.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return person[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullContact", for: indexPath)
        let data = person[indexPath.section]
        var content = cell.defaultContentConfiguration()

        switch indexPath.row {
        case 0:
            content.text = data.phone
            content.image = UIImage(systemName: "phone.fill")
        default:
            content.text = data.email
            content.image = UIImage(systemName: "envelope.badge.fill")
        }
        
        cell.contentConfiguration = content
        return cell
        
    }
    
}
