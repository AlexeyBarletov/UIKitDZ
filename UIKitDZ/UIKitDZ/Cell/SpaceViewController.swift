// SpaceViewController.swift
// Copyright © RoadMap. All rights reserved.

import WebKit

/// Класс для отображения WKWebView
final class SpaceViewController: UIViewController {
    // MARK: Constant

    enum Constant {
        static let linkText = "https://www.spacex.com"
        static let closeButton = "close"
    }

    // MARK: Private Property

    private let webView = WKWebView()
    private let closeButton = UIButton()

    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupWKvebKit()
        addConstrainsWebView()
        tapClose()
    }

    // MARK: Private Methode

    private func tapClose() {
        view.addSubview(closeButton)
        closeButton.setImage(UIImage(named: Constant.closeButton), for: .normal)
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.addTarget(self, action: #selector(tapCloseButton), for: .touchUpInside)

        closeButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        closeButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 28).isActive = true
        closeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 17).isActive = true
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
        guard let url = URL(string: Constant.linkText) else { return }
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }

    @objc private func tapCloseButton() {
        dismiss(animated: true)
    }
}
