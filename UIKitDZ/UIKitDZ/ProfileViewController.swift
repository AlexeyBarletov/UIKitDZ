// ProfileViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Класс профиль
final class ProfileViewController: UIViewController {
    // MARK: Constant

    enum Constant {
        static let lockLeftImageButton = "lockImageButtonLeftOne"
        static let plusImageButton = "plusImageButtonRightTwo"
        static let additionallyImageButton = "additionallyImageButtonRightOne"
        static let titleNavigationBar = "mary_rmLink"
        static let font = "Verdana-Bold"
        static var nameUser = "Мария Иванова"
        static var pin = "pin"
        static var link = "www.spacex.com"
        static var avatar = "mystroryplus"
    }

    enum ConfigureCell {
        case infoUser
        case stories
        case complex
    }

    // MARK: - Statice Properties

    var exampleBarButtonItem = UIBarButtonItem()

    var listCell: [ConfigureCell] = [
        .infoUser,
        .stories,
        .complex
    ]

    private var infoUsers = [InfoUser(
        avatar: Constant.avatar,
        nickName: Constant.nameUser,
        pinImage: Constant.pin,
        link: Constant.link
    )]

    // MARK: - Private Properties

    private let titleLabel = UILabel()
    private var titleView = UIView()
    private let rightButtonItemtPlus = UIButton()
    private let rightButtonItemtTwo = UIButton()
    private let viewButtons = UIView()
    private let tableView = UITableView()

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupImscriptionLeft()
        setupButtonLeft()
        addButtonNavigationBar()
        addConstraintsButton()
        setupTableView()
    }

    // MARK: - Private Methods

    private func setupImscriptionLeft() {
        titleView.addSubview(titleLabel)
        titleLabel.text = "mary_rmLink"
        titleLabel.font = UIFont(name: Constant.font, size: 18)
        titleLabel.textColor = UIColor.black
        titleLabel.textAlignment = .left
        titleView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerYAnchor.constraint(equalTo: titleView.centerYAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: titleView.leadingAnchor).isActive = true
        navigationItem.titleView = titleView
    }

    private func setupButtonLeft() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: nil,
            image: UIImage(named: Constant.lockLeftImageButton),
            target: nil,
            action: nil
        )
    }

    private func addConstraintsButton() {
        rightButtonItemtPlus.translatesAutoresizingMaskIntoConstraints = false
        rightButtonItemtTwo.translatesAutoresizingMaskIntoConstraints = false

        rightButtonItemtPlus.widthAnchor.constraint(equalToConstant: 18).isActive = true
        rightButtonItemtPlus.heightAnchor.constraint(equalToConstant: 16).isActive = true
        rightButtonItemtPlus.bottomAnchor.constraint(equalTo: viewButtons.bottomAnchor).isActive = true
        rightButtonItemtPlus.trailingAnchor.constraint(equalTo: viewButtons.trailingAnchor).isActive = true
        rightButtonItemtPlus.topAnchor.constraint(equalTo: viewButtons.topAnchor).isActive = true
        rightButtonItemtPlus.leadingAnchor.constraint(equalTo: rightButtonItemtTwo.trailingAnchor, constant: 11)
            .isActive = true

        rightButtonItemtTwo.widthAnchor.constraint(equalToConstant: 18).isActive = true
        rightButtonItemtTwo.heightAnchor.constraint(equalToConstant: 18).isActive = true
        rightButtonItemtTwo.leadingAnchor.constraint(equalTo: viewButtons.leadingAnchor).isActive = true
        rightButtonItemtTwo.topAnchor.constraint(equalTo: viewButtons.topAnchor).isActive = true
        rightButtonItemtTwo.bottomAnchor.constraint(equalTo: viewButtons.bottomAnchor).isActive = true
    }

    private func addButtonNavigationBar() {
        rightButtonItemtTwo.setImage(UIImage(named: Constant.plusImageButton), for: .normal)
        rightButtonItemtPlus.setImage(UIImage(named: Constant.additionallyImageButton), for: .normal)
        exampleBarButtonItem = UIBarButtonItem(customView: viewButtons)
        navigationItem.rightBarButtonItem = exampleBarButtonItem
        viewButtons.addSubview(rightButtonItemtPlus)
        viewButtons.addSubview(rightButtonItemtTwo)
    }

    func setupTableView() {
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UserInfoCell.self, forCellReuseIdentifier: UserInfoCell.userInfoCell)
        tableView.register(StoriesCell.self, forCellReuseIdentifier: StoriesCell.storiesCell)
        tableView.register(
            СollectionPicturesCell.self,
            forCellReuseIdentifier: СollectionPicturesCell.сollectionPicturesCell
        )
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
}

extension ProfileViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        listCell.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let cellType = listCell[section]
        switch cellType {
        case .infoUser:
            return 1
        case .stories:
            return 1
        case .complex:
            return 1
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cells = listCell[indexPath.section]
        switch cells {
        case .infoUser:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: UserInfoCell.userInfoCell,
                for: indexPath
            ) as? UserInfoCell else { return UITableViewCell() }
            cell.setupInfo(param: infoUsers)
            return cell
        case .stories:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: StoriesCell.storiesCell,
                for: indexPath
            ) as? StoriesCell else { return UITableViewCell() }
            return cell
        case .complex:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: СollectionPicturesCell.сollectionPicturesCell,
                for: indexPath
            ) as? СollectionPicturesCell else { return UITableViewCell() }
            return cell
        }
    }
}

extension ProfileViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cellType = listCell[indexPath.section]
        switch cellType {
        case .infoUser:
            return 230
        case .stories:
            return 80
        case .complex:
            return 500
        }
    }
}
