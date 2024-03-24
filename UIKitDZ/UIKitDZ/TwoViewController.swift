// TwoViewController.swift
// Copyright © RoadMap. All rights reserved.

//
//  TwoViewController.swift
//  UIKitDZ
//
//  Created by Алексей Барлетов on 24.03.2024.
//
import UIKit

class TwoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        print(1)
        // @MainActor  гарантирует что задача будет выполнена на основной очереди
        Task { @MainActor in
            print(2)
        }
        print(3)
    }
}
