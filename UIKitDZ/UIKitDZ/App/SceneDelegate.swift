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

        // Catalog
        let catalogViewController = CatalogViewController()
        let catalogNaviagtionController = UINavigationController(rootViewController: catalogViewController)

        // Basket
        let basketViewController = BasketViewController()
        let basketTabBarItem = UITabBarItem(title: "Корзина", image: UIImage(named: "basketBlack"), selectedImage: nil)
        basketTabBarItem.image = UIImage(named: "basketBlack")
        basketTabBarItem.selectedImage = UIImage(named: "basketNorm")
        basketViewController.tabBarItem = basketTabBarItem

        // Profile
        let profileViewController = ProfileViewController()
        let profileTabBarItem = UITabBarItem(
            title: "Профиль",
            image: UIImage(systemName: "person"),
            selectedImage: nil
        )
        profileTabBarItem.image = UIImage(named: "profileBlack")
        profileTabBarItem.selectedImage = UIImage(named: "profileNorm")
        profileViewController.tabBarItem = profileTabBarItem
        let profileNavigationController = UINavigationController(rootViewController: profileViewController)

        // TabBar
        let tabBarController = TabBarController()

        tabBarController.tabBar.tintColor = .systemPink
        tabBarController.setViewControllers(
            [
                catalogNaviagtionController,
                basketViewController,
                profileNavigationController
            ],
            animated: true
        )

        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
}
