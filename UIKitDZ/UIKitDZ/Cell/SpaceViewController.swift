// SpaceViewController.swift
// Copyright © RoadMap. All rights reserved.

// import UIKit
import WebKit

class SpaceViewController: UIViewController {
    private let webView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupWKvebKit()
        addConstrainsWebView()
    }

    private func addConstrainsWebView() {
        view.addSubview(webView)
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        webView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        webView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        webView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

    private func setupWKvebKit() {
        guard let url = URL(string: "https://www.spacex.com") else { return }
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
}
