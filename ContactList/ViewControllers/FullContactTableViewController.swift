//
//  FullContactTableViewController.swift
//  ContactList
//
//  Created by Kasharin Mikhail on 18.04.2023.
//

import UIKit

final class FullContactTableViewController: UITableViewController {
    
    // MARK: - Public Property
    var person: [Person]!

}
// MARK: - TableViewDataSource
extension FullContactTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        person[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullContact", for: indexPath)
        var content = cell.defaultContentConfiguration()

        switch indexPath.row {
        case 0:
            content.text = person[indexPath.section].phone
            content.image = UIImage(systemName: "phone.fill")
        default:
            content.text = person[indexPath.section].email
            content.image = UIImage(systemName: "envelope.badge.fill")
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
