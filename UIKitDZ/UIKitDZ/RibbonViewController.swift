// RibbonViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

class RibbonViewController: UIViewController {
    enum Constant {
        static let textLabel = "RMLink"
        static let customFont = "Dancing Script"
        static let image = "Icon"
        static let houseblackImageItem = "houseblack"
        static let notificationsBlackImageItem = "notificationsblack"
        static let profileBlackItem = "profileBlack"
    }

    enum CountRows {
        case stories
        case firstPost
        case reccomend
        case finalPost
    }

    private let rows: [CountRows] = [
        .stories, .firstPost, .finalPost, .reccomend
    ]

    var tableView = UITableView()
    let customLabel = UILabel()
    var textLabelNavigationBar = UILabel()
    var customLeftButtton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tuneCustomElementNavigationBar()
        setupTabBarController()
        setupTableView()
    }

    private func tuneCustomElementNavigationBar() {
        textLabelNavigationBar.text = Constant.textLabel
        textLabelNavigationBar.font = UIFont(name: Constant.customFont, size: 22)
        textLabelNavigationBar.textColor = UIColor.black
        textLabelNavigationBar.textAlignment = .left
        let customBarButtonItem = UIBarButtonItem(customView: textLabelNavigationBar)
        navigationItem.leftBarButtonItem = customBarButtonItem

        let customButton = UIBarButtonItem(customView: customLeftButtton)
        customLeftButtton.setImage(UIImage(named: Constant.image), for: .normal)
        navigationItem.rightBarButtonItem = customButton
    }

    private func setupTabBarController() {
        if let tabBarItemOne = tabBarController?.tabBar.items?[0] {
            tabBarItemOne.title = "Лента"
            tabBarItemOne.image = UIImage(named: Constant.houseblackImageItem)
        }
        if let tabBarItemTwo = tabBarController?.tabBar.items?[1] {
            tabBarItemTwo.title = "Уведомление"
            tabBarItemTwo.image = UIImage(named: Constant.notificationsBlackImageItem)
        }
        if let tabBarThree = tabBarController?.tabBar.items?[2] {
            tabBarThree.title = "Профиль"
            tabBarThree.image = UIImage(named: Constant.profileBlackItem)
        }
    }

    func setupTableView() {
        view.addSubview(tableView)

        tableView.dataSource = self
        tableView.delegate = self

        tableView.register(StoriesViewCell.self, forCellReuseIdentifier: StoriesViewCell.indentifireStories)
        tableView.register(FirstPostViewCell.self, forCellReuseIdentifier: FirstPostViewCell.indentifireFirstPost)
        tableView.register(FinalPostViewCell.self, forCellReuseIdentifier: FinalPostViewCell.indentifireFinalPost)
        tableView.register(ReccomendViewCell.self, forCellReuseIdentifier: ReccomendViewCell.indentifireReccomend)

        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
}

extension RibbonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cells = rows[indexPath.section]
        switch cells {
        case .stories:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: StoriesViewCell.indentifireStories,
                for: indexPath
            ) as? StoriesViewCell else { return UITableViewCell() }
            cell.setup(param: [param])

            return cell
        case .firstPost:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: FirstPostViewCell.indentifireFirstPost,
                for: indexPath
            ) as? FirstPostViewCell else { return UITableViewCell() }
            return cell
        case .reccomend:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: FinalPostViewCell.indentifireFinalPost,
                for: indexPath
            ) as? FinalPostViewCell else { return UITableViewCell() }
            return cell
        case .finalPost:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: ReccomendViewCell.indentifireReccomend,
                for: indexPath
            ) as? ReccomendViewCell else { return UITableViewCell() }
            return cell
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        rows.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let cellType = rows[section]
        switch cellType {
        case .stories, .firstPost, .reccomend:
            return 1
        case .finalPost:
            return 6
        }
    }
}

extension RibbonViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cellType = rows[indexPath.section]
        switch cellType {
        case .stories:
            return 67
        case .finalPost:
            return 60
        case .firstPost:
            return 60
        case .reccomend:
            return 60
        }
    }
}
