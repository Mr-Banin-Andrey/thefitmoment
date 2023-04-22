//
//  AppCoordinator.swift
//  thefitmoment
//
//  Created by Андрей Банин on 10.4.23..
//

import Foundation
import UIKit

class AppCoordinator: Coordinatable {
    
    private (set) var childCoordinators: [Coordinatable] = []
    
    private let factory: AppFactory
    
    init(factory: AppFactory) {
        self.factory = factory
    }
    
    func start() -> UIViewController {
        let profileCoordinator = ProfileCoordinator(moduleType: .profile, factory: factory)
        let timetableCoordinator = TimetableCoordinator(moduleType: .timetable, factory: factory)
        
        let tabBarController = TabBarController(viewControllers: [
            profileCoordinator.start(),
            timetableCoordinator.start()
        ])
        
        addChildCoordinators(profileCoordinator)
        addChildCoordinators(timetableCoordinator)
        
        return tabBarController
    }
    
    func addChildCoordinators(_ coordinator: Coordinatable) {
        guard !childCoordinators.contains(where: { $0 === coordinator }) else {
            return
        }
        childCoordinators.append(coordinator)
    }
    
    func removeChildCoordinators(_ coordinator: Coordinatable) {
        childCoordinators = childCoordinators.filter { $0 === coordinator }
    }
    
}
