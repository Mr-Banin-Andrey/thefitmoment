//
//  Module.swift
//  thefitmoment
//
//  Created by Андрей Банин on 10.4.23..
//

import Foundation
import UIKit

protocol ViewModelProtocol: AnyObject {}

struct Module {
    enum ModuleType {
        case profile
        case timetable
    }
    
    let moduleType: ModuleType
    let viewModel: ViewModelProtocol
    let view: UIViewController
}

extension Module.ModuleType {
    var tabBarItem: UITabBarItem {
        switch self {
        case .profile:
            return UITabBarItem(title: "Профиль", image: UIImage(systemName: "person"), tag: 0) //(title: "Профиль", image: <#T##UIImage?#>, selectedImage: <#T##UIImage?#>)
        case .timetable:
            return UITabBarItem(title: "Расписание", image: UIImage(systemName: "calendar"), tag: 1) //(title: "Расписание", image: <#T##UIImage?#>, selectedImage: <#T##UIImage?#>)
        }
    }
}
