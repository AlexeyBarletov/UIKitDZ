// NotificationsViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Класс для показа уведомлений
final class NotificationsViewController: UIViewController {
    // MARK: - Constants

    private enum Constant {
        static let text = "Уведомления"
        static let verdanaFont = "Verdana"
        static let verdanaBoldFont = "Verdana-Bold"
        static let titleLabel = "Запросы на подписку"
    }

    /// Энам для типов ячеек
    private enum CellType {
        /// кейс для комментариев
        case comment
        /// кейс подписок
        case subscription
    }

    // MARK: - Private Properties

    private let textLeftLabel = UILabel()
    private let tableView = UITableView()
    private let requestLabel = UILabel()

    private let cellTypes: [CellType] = [
        .comment,
        .subscription
    ]

    private var notificationsComment = [
        Comment(
            avatar: "womanTwo",
            comment: "понравился ваш комментарий: Очень красиво! 12ч",
            post: "sea",
            time: "12ч", nickName: "lavanda123"

        ),
        Comment(
            avatar: "womanTwo",
            comment: "упомянул(-а) вас в комментарии: @rm Спасибо! 10ч",
            post: "sea",
            time: "10ч", nickName: "lavanda123"
        )
    ]

    private var notificationsSubscription: [Subscription] = [
        Subscription(
            avatar: "museum",
            comment: "понравился ваш комментарий: Это где? 3д.", commentImage: "womanTwo",
            isHidden: true, nickName: "lavanda123"
        ),
        Subscription(
            avatar: "menOne",
            comment: "появился(-ась) в RMLink. Вы можете быть знакомы 3д", commentImage: "menOne",
            isHidden: false, nickName: "12miho"
        ),
        Subscription(
            avatar: "menOne",
            comment: "подписался(-ась) на ваши новости 5д", commentImage: "womanTwo",
            isHidden: false, nickName: "lavanda123"
        ),
        Subscription(
            avatar: "museum",
            comment: "понравился ваш комментарий: Ты вернулась? 7д.", commentImage: "womanTwo",
            isHidden: true, nickName: "lavanda123 "
        ),
        Subscription(
            avatar: "woman",
            comment: "появился(-ась) в RMLink. Вы можете быть знакомы 8д.", commentImage: "menTwo",
            isHidden: false, nickName: "markS"
        ),
        Subscription(
            avatar: "womanTwo",
            comment: "появился(-ась) в RMLink. Вы можете быть знакомы 8д.", commentImage: "womanThree",
            isHidden: false, nickName: "sv_neit"
        )
    ]

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tableView)

        setupLabel()
        setupTableview()
        setupImscriptionLeft()
        setupTableview()
    }

    // MARK: - Private Methods

    private func setupLabel() {
        view.addSubview(requestLabel)
        requestLabel.text = Constant.titleLabel
        requestLabel.font = UIFont(name: Constant.verdanaFont, size: 14)
        requestLabel.textAlignment = .left
        requestLabel.textColor = .black
        requestLabel.translatesAutoresizingMaskIntoConstraints = false
        requestLabel.heightAnchor.constraint(equalToConstant: 17).isActive = true
        requestLabel.widthAnchor.constraint(equalToConstant: 251).isActive = true
        requestLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
        requestLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 110).isActive = true
    }

    private func setupImscriptionLeft() {
        textLeftLabel.text = Constant.text
        textLeftLabel.font = UIFont(name: Constant.verdanaBoldFont, size: 22)
        textLeftLabel.textColor = UIColor.black
        textLeftLabel.textAlignment = .left
        let customBarButtonItem = UIBarButtonItem(customView: textLeftLabel)
        navigationItem.leftBarButtonItem = customBarButtonItem
    }

    private func setupTableview() {
        tableView.register(
            NotificationsCommentCell.self,
            forCellReuseIdentifier: NotificationsCommentCell.identifierNotificationsDayCell
        )
        tableView.register(
            NotificationsSubscription.self,
            forCellReuseIdentifier: NotificationsSubscription.identifierNotificationsWeekCell
        )
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: requestLabel.bottomAnchor, constant: 5).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
}

// MARK: - UITableViewDataSource

extension NotificationsViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        cellTypes.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let cellType = cellTypes[section]
        switch cellType {
        case .comment:
            return notificationsComment.count
        case .subscription:
            return notificationsSubscription.count
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cells = cellTypes[indexPath.section]
        switch cells {
        case .comment:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: NotificationsCommentCell.identifierNotificationsDayCell,
                for: indexPath
            ) as? NotificationsCommentCell else { return UITableViewCell() }
            cell.setup(param: notificationsComment[indexPath.row])
            return cell
        case .subscription:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: NotificationsSubscription.identifierNotificationsWeekCell,
                for: indexPath
            ) as? NotificationsSubscription else { return UITableViewCell() }
            cell.setupTranslitionInfo(subscription: notificationsSubscription[indexPath.row])
            return cell
        }
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Cегодня"
        case 1: return "На этой неделе"
        default: return nil
        }
    }
}

// MARK: - UITableViewDelegate

extension NotificationsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cellType = cellTypes[indexPath.section]
        switch cellType {
        case .comment:
            return 60
        case .subscription:
            return 70
        }
    }
}
