//
//  Coordinatable.swift
//  thefitmoment
//
//  Created by Андрей Банин on 12.4.23..
//

import Foundation
import UIKit

protocol Coordinatable: AnyObject {
    var childCoordinators: [Coordinatable] { get }
    func start() -> UIViewController
    func addChildCoordinators(_ coordinator: Coordinatable)
    func removeChildCoordinators(_ coordinator: Coordinatable)
}

protocol ModuleCoordinatable: Coordinatable {
    var module: Module? { get }
    var moduleType: Module.ModuleType { get }
}

extension Coordinatable {
    func addChildCoordinators(_ coordinator: Coordinatable) {}
    func removeChildCoordinators(_ coordinator: Coordinatable) {}
}
