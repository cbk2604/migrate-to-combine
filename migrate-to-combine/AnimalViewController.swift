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
        NetworkingService.getAnimals { [unowned self] result in
            switch result {
            case .success(let animals):
                self.animals = animals
                self.tableView.reloadData()
            case .failure(let error):
                print(error)
            }
        }
    }
}

