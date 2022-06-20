//
//  AnimalCell.swift
//  migrate-to-combine
//
//  Created by Yashogna on 20/06/22.
//

import Foundation
import UIKit

protocol AnimalCellDelegate: AnyObject {
    func shouldShowEmoji(for animal: Animal)
}

class AnimalCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    
    weak var delegate: AnimalCellDelegate?
    var shouldMakeNoiseForAnimal: ((Animal) -> Void)?
    
    private var animal: Animal!
    
    @IBAction func didTapShowEmojiButton() {
        delegate?.shouldShowEmoji(for: animal)
    }
    
    @IBAction func didTapMakeNoiseButton() {
        shouldMakeNoiseForAnimal?(animal)
    }
    
    func populate(with animal: Animal) {
        self.animal = animal
        self.nameLabel.text = animal.name
    }
}
