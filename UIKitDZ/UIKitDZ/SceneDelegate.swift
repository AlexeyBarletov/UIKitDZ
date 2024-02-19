// SceneDelegate.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let copyNotifications = Notifications()
        let copyProfile = Profile()
        let copyRibbonViewController = RibbonViewController()

        let copyNavigationControllerOne = UINavigationController(rootViewController: copyRibbonViewController)
        let copyNavigationControllerTwo = UINavigationController(rootViewController: copyNotifications)
        let copyNavigationControllerThree = UINavigationController(rootViewController: copyProfile)

        let tabBarController = UITabBarController()
        tabBarController.setViewControllers(
            [copyNavigationControllerOne, copyNavigationControllerTwo, copyNavigationControllerThree],
            animated: true
        )

        window = UIWindow(windowScene: windowScene)
        // window?.rootViewController = copyRibbonViewController
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
}
