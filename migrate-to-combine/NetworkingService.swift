//
//  NetworkingService.swift
//  migrate-to-combine
//
//  Created by Yashogna on 20/06/22.
//

import Foundation

enum NetworkingService {
    static func getAnimals(completion: @escaping (Result<[Animal], Error>) -> Void) {
        let animals: [Animal] = [.dog, .cat, .frog, .panda, .lion]
        completion(.success(animals))
    }
}
