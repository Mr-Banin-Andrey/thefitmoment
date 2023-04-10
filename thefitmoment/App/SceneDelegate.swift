//
//  SceneDelegate.swift
//  thefitmoment
//
//  Created by Андрей Банин on 29.3.23..
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }

        let factory = AppFactory()
        let appCoordinator = AppCoordinator(factory: factory)
        
        self.window = UIWindow(windowScene: windowScene)
        self.appCoordinator = appCoordinator
        
        window?.rootViewController = appCoordinator.start()
        window?.makeKeyAndVisible()
    }

    
    func sceneDidDisconnect(_ scene: UIScene) { }

    func sceneDidBecomeActive(_ scene: UIScene) { }

    func sceneWillResignActive(_ scene: UIScene) { }

    func sceneWillEnterForeground(_ scene: UIScene) { }

    func sceneDidEnterBackground(_ scene: UIScene) { }


}

