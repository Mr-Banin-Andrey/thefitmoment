//
//  TabBarNavigation.swift
//  thefitmoment
//
//  Created by Андрей Банин on 30.3.23..
//
import UIKit
import Foundation

final class TabBarController: UITabBarController {
    
    init(viewControllers: [UIViewController]) {
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = viewControllers
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    private var profileNavigationController: UIViewController!
//    private var timetableNavigationController: UIViewController!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        setupBar()
//    }
//
//    func setupBar() {
//        profileNavigationController = UINavigationController(rootViewController: ProfileViewController())
//        timetableNavigationController = UINavigationController(rootViewController: TimetableViewController())
//
//        self.viewControllers = [profileNavigationController, timetableNavigationController]
//
//        let profile = UITabBarItem(title: "Профиль", image: UIImage(systemName: "newspaper"), tag: 0)
//        let timetable = UITabBarItem(title: "Расписание", image: UIImage(systemName: "person"), tag: 1)
//
//        UITabBar.appearance().tintColor =  #colorLiteral(red: 0.491402626, green: 0.5063844323, blue: 0.9587492347, alpha: 1)
//        UITabBar.appearance().backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
//
//        profileNavigationController.tabBarItem = profile
//        timetableNavigationController.tabBarItem = timetable
//    }
}
