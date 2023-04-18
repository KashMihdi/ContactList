//
//  ContactTableViewController.swift
//  ContactList
//
//  Created by Kasharin Mikhail on 18.04.2023.
//

import UIKit

final class ContactTableViewController: UITableViewController {
    
    // MARK: - Private Properties
    var person: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = person[indexPath.row]
        let detailVC = segue.destination as? DetailContactViewController
        detailVC?.person = person
    }
}
// MARK: - TableViewDataSource
extension ContactTableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)

        var content = cell.defaultContentConfiguration()
        content.text = person[indexPath.row].fullName
        cell.contentConfiguration = content

        return cell
    }
}
