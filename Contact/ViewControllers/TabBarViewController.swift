//
//  TabBarViewController.swift
//  Contact
//
//  Created by Дима Монид on 14.02.25.
//

import UIKit

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }

    private func setupViewControllers(){
        guard let mainVC = viewControllers?.first as? MainViewController else { return }
        guard let selectionVC = viewControllers?.last as? SelectionViewController else { return }
        
        let persons = Person.getContacts()
        mainVC.persons = persons
        selectionVC.persons = persons
    }
}
