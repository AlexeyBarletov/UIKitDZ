// Storyboard ViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Класс для работы со Storyboard
final class StoryboardViewController: UIViewController {
    // MARK: IBOutlet

    @IBOutlet var greenOutlet: UIView!
    @IBOutlet var yellowOutlet: UIView!
    @IBOutlet var redOutlet: UIView!

    // MARK: Lify Cycle

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupRadiusView()
    }

    // MARK: Private Methode

    private func setupRadiusView() {
        greenOutlet.layer.cornerRadius = greenOutlet.bounds.height / 2
        yellowOutlet.layer.cornerRadius = yellowOutlet.bounds.height / 2
        redOutlet.layer.cornerRadius = redOutlet.bounds.height / 2
    }
}
