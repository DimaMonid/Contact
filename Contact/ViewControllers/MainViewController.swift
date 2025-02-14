//
//  MainViewController.swift
//  Contact
//
//  Created by Дима Монид on 8.02.25.
//

import UIKit

final class MainViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactName", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow{
            guard let detailsVC = segue.destination as? ContactDetailsViewController else { return }
            detailsVC.person = persons[indexPath.row]
        }
        
    }


}

