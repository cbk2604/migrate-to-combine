//
//  ViewController.swift
//  migrate-to-combine
//
//  Created by Yashogna on 20/06/22.
//

import UIKit

class AnimalViewController: UITableViewController {
    
    var animals: [Animal] = []

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getAnimals()
    }

    func getAnimals() {
        
    }
}

