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

        _ = SecondViewController()
        _ = ThirdiewController()
        _ = FourthViewController()
        _ = RecipeViewController()
        _ = FifthViewController()
        _ = SixthViewController()
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = SixthViewController()
        window?.makeKeyAndVisible()
    }
}
