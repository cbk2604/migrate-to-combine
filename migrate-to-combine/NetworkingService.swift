//
//  NetworkingService.swift
//  migrate-to-combine
//
//  Created by Yashogna on 20/06/22.
//

import Foundation
import Combine

enum NetworkingService {
    static func getAnimals() -> Future<[Animal], Error> {
        Future { promise in
            let animals: [Animal] = [.dog, .cat, .frog, .panda, .lion]
            promise(.success(animals))
        }
    }
}
