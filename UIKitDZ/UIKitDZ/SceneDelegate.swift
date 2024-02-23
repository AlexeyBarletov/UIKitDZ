// SceneDelegate.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        setupMain(windowScene: windowScene)
    }

    func setupMain(windowScene: UIWindowScene) {
        let copyNotifications = NotificationsViewController()
        let copyProfile = ProfileViewController()
        let copyRibbonViewController = RibbonViewController()
        window = UIWindow(windowScene: windowScene)
        window?.makeKeyAndVisible()
        let copyNavigationControllerOne = UINavigationController(rootViewController: copyRibbonViewController)
        let copyNavigationControllerTwo = UINavigationController(rootViewController: copyNotifications)
        let copyNavigationControllerThree = UINavigationController(rootViewController: copyProfile)
        let tabBarController = UITabBarController()
        tabBarController.setViewControllers(
            [copyNavigationControllerOne, copyNavigationControllerTwo, copyNavigationControllerThree],
            animated: true
        )
        window?.rootViewController = tabBarController
    }
}
