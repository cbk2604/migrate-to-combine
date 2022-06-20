//
//  Animal.swift
//  migrate-to-combine
//
//  Created by Yashogna on 20/06/22.
//

import Foundation

struct Animal {
    var name: String
    var emoji: String
    var noise: String
}

extension Animal {
    static let dog = Animal(name: "Dog", emoji: "🐶", noise: "ruff")
    static let cat = Animal(name: "Cat", emoji: "😸", noise: "meow")
    static let frog = Animal(name: "Frog", emoji: "🐸", noise: "ribbit")
    static let panda = Animal(name: "Panda", emoji: "🐼", noise: "puh-panda")
    static let lion = Animal(name: "Lion", emoji: "🦁", noise: "rawr")
}
