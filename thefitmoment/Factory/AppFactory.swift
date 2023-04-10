//
//  Factory.swift
//  thefitmoment
//
//  Created by Андрей Банин on 10.4.23..
//

import Foundation
import UIKit

class AppFactory {
    
    func makeModule(ofType moduleType: Module.ModuleType) -> Module {
        switch moduleType {
        case .profile:
            let viewModel = ProfileViewModel()
            let view = UINavigationController(rootViewController: ProfileViewController())
            return Module(moduleType: moduleType, viewModel: viewModel, view: view)
        case .timetable:
            let viewModel = TimetableViewModel()
            let view = UINavigationController(rootViewController: TimetableViewController())
            return Module(moduleType: moduleType, viewModel: viewModel, view: view)
        }
    }
    
}
