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
        let basketVC = BasketViewController()
        let profileVC = ProfileViewController() // без навигатион контроллер
        let navigationControllerCatalog = UINavigationController(rootViewController: catalogVC)
        let navigationControllerBasket = UINavigationController(rootViewController: basketVC)

        let tabBarController = UITabBarController()
        tabBarController.setViewControllers(
            [navigationControllerCatalog, navigationControllerBasket, profileVC],
            animated: true
        )

        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        let catalog = CatalogViewController()
        let basket = BasketViewController()
        let profile = ProfileViewController()
        let tabBarController = UITabBarController()
        tabBarController.setViewControllers([catalog, basket, profile], animated: true)
        window?.rootViewController = tabBarController
    }
}
