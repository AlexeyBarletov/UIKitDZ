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

        window = UIWindow(windowScene: windowScene)

        let catalogVC = CatalogViewController()

        let catalogNC = UINavigationController(rootViewController: catalogVC)

        let tabBarController = UITabBarController()
        tabBarController.setViewControllers(
            [catalogNC],
            animated: true
        )

        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
}
