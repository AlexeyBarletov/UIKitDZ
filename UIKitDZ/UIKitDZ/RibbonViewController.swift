// RibbonViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Класс для показа ленты
final class RibbonViewController: UIViewController {
    // MARK: - Constants

    private enum Constant {
        static let textLabel = "RMLink"
        static let customFont = "Dancing Script"
        static let image = "sms"
        static let houseblackImageItem = "houseblack"
        static let notificationsBlackImageItem = "notificationsblack"
        static let profileBlackItem = "profileBlack"
        static let imageTurVdagestan = "turVdagestan"
        static let textLabelDagestan = "tur_v_dagestan"
        static let extraButton = "extra"
        static let suatCanyonImage = "suatCanyon"
        static let natureImage = "nature"
        static let myStroryPlus = "mystroryplus"
        static let wumanTwo = "womanTwo"
        static let myStories = "Моя История"
        static let posts = "lavanda123"
    }

    /// Энам для типов ячеек
    private enum CountRows {
        /// кейс сторис
        case stories
        /// кейс постов
        case firstPost
        /// кейс рекомендаций
        case reccomend
        /// финальный пост
        case finalPost
    }

    // MARK: - Private Properties

    private let tableView = UITableView()
    private let customLabel = UILabel()
    private let textLabelNavigationBar = UILabel()
    private let customLeftButtton = UIButton()

    private var images = [
        LinkStorage(stories: Constant.myStroryPlus, posts: Constant.myStories),
        LinkStorage(stories: Constant.wumanTwo, posts: Constant.posts),
        LinkStorage(stories: Constant.wumanTwo, posts: Constant.posts),
        LinkStorage(stories: Constant.wumanTwo, posts: Constant.posts),
        LinkStorage(stories: Constant.wumanTwo, posts: Constant.posts)
    ]

    private var infoTwoScreen = [
        FirstPost(
            avatar: Constant.imageTurVdagestan,
            label: Constant.textLabelDagestan,
            extraButton: Constant.extraButton,
            suatCanyonImage: Constant.suatCanyonImage,
            natureImage: Constant.natureImage
        )
    ]

    private let rows: [CountRows] = [
        .stories,
        .firstPost,
        .reccomend,
        .finalPost
    ]

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tuneCustomElementNavigationBar()
        setupTabBarController()
        setupTableView()
    }

    // MARK: - Private Methods

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

    private func setupTableView() {
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(StoriesViewCell.self, forCellReuseIdentifier: StoriesViewCell.identifierStories)
        tableView.register(FirstPostViewCell.self, forCellReuseIdentifier: FirstPostViewCell.indentifireFirstPost)
        tableView.register(FinalPostViewCell.self, forCellReuseIdentifier: FinalPostViewCell.indentifireFirstPost)
        tableView.register(ReccomendViewCell.self, forCellReuseIdentifier: ReccomendViewCell.indentifireReccomend)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
}

// MARK: - UITableViewDataSource

extension RibbonViewController: UITableViewDataSource {
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

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cells = rows[indexPath.section]
        switch cells {
        case .stories:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: StoriesViewCell.identifierStories,
                for: indexPath
            ) as? StoriesViewCell else { return UITableViewCell() }
            cell.setup(param: images)
            return cell
        case .firstPost:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: FirstPostViewCell.indentifireFirstPost,
                for: indexPath
            ) as? FirstPostViewCell else { return UITableViewCell() }
            cell.setup(param: infoTwoScreen, isPageControllHiden: false)
            return cell
        case .reccomend:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: ReccomendViewCell.indentifireReccomend,
                for: indexPath
            ) as? ReccomendViewCell else { return UITableViewCell() }
            return cell
        case .finalPost:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: FirstPostViewCell.indentifireFirstPost,
                for: indexPath
            ) as? FinalPostViewCell else { return UITableViewCell() }
            cell.setup(param: infoTwoScreen, isPageControllHiden: true)
            return cell
        }
    }
}

// MARK: - UITableViewDelegate

extension RibbonViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cellType = rows[indexPath.section]
        switch cellType {
        case .stories:
            return 80
        case .firstPost:
            return 480
        case .reccomend:
            return 270
        case .finalPost:
            return 480
        }
    }
}
