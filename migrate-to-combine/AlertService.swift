//
//  AlertService.swift
//  migrate-to-combine
//
//  Created by Yashogna on 20/06/22.
//

import Foundation
import UIKit

enum AlertService {
    static func showAlert(with message: String, in viewController: UIViewController?) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(.init(title: "OK", style: .cancel))
        viewController?.present(alert, animated: true)
    }
}
