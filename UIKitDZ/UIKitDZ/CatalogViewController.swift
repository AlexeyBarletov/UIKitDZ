// CatalogViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Класс для выбора обуви и одежды
final class CatalogViewController: UIViewController {
    private enum Constant {
        static let imageButtonLeft = "fotos"
        static let imageButtonRight = "barcode"
        static let imageListNorm = "list"
        static let imageListBlack = "blackList"
        static let imageBasketBlack = "basketBlack"
        static let imageBasketNorm = "basketNorm"
        static let imageProfileNorm = "profileNorm"
        static let imageProfileBlack = "profileBlack"
    }

    private enum TextLabel {
        static let customFont = "Verdana"
        static let textNew = "Новинки"
        static let textSale = "Распродажа"
        static let textBrands = "Бренды"
        static let textShoes = "Обувь"
        static let textBags = "Сумки"
    }

    private var leftButtonItemPhoto = UIButton()
    private var rightButtonItemtBarcode = UIButton()
    private let viewButtons = UIView()
    private var exampleBarButtonItem = UIBarButtonItem()
    private let viewBarButtonItem = UIView()
    private var segmentController = UISegmentedControl()

    private let labelNew = UILabel()
    private let labelSale = UILabel()
    private let labelBrands = UILabel()
    private let labelShoes = UILabel()
    private let labelBags = UILabel()

    private var viewBrands = UIView()
    private let viewBags = UIView()
    private let viewShoes = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Каталог"
        setupViewЕhings()
        setupLabel()
        setupSegmentController()
        addButtonNavigationBar()
        setupTabBarController()
        addConstraints()
    }

    // rgb(248, 248, 248)
    private func setupViewЕhings() {
        viewBrands.backgroundColor = UIColor(red: 248 / 255, green: 248 / 255, blue: 248 / 255, alpha: 1)
        viewBrands.layer.cornerRadius = 12
        view.addSubview(viewBrands)

        viewShoes.backgroundColor = UIColor(red: 248 / 255, green: 248 / 255, blue: 248 / 255, alpha: 1)
        viewShoes.layer.cornerRadius = 12
        view.addSubview(viewShoes)

        viewBags.backgroundColor = UIColor(red: 248 / 255, green: 248 / 255, blue: 248 / 255, alpha: 1)
        viewBags.layer.cornerRadius = 12
        view.addSubview(viewBags)
    }

    private func setupLabel() {
        labelNew.text = TextLabel.textNew
        labelNew.textColor = .red
        labelNew.font = UIFont(name: TextLabel.customFont, size: 14)
        labelNew.shadowColor = .white
        labelNew.shadowOffset = CGSize(width: 0.5, height: 0.5)
        labelNew.textAlignment = .center
        view.addSubview(labelNew)

        labelSale.text = TextLabel.textSale
        labelSale.textColor = .red
        labelSale.font = UIFont(name: TextLabel.customFont, size: 14)
        labelSale.shadowColor = .white
        labelSale.shadowOffset = CGSize(width: 0.5, height: 0.5)
        labelSale.textAlignment = .center
        view.addSubview(labelSale)

        labelBrands.text = TextLabel.textBrands
        labelBrands.textColor = .black
        labelBrands.font = UIFont(name: TextLabel.customFont, size: 14)
        labelBrands.shadowColor = .black
        labelBrands.shadowOffset = CGSize(width: 0.5, height: 0.5)
        labelBrands.textAlignment = .left
        view.addSubview(labelBrands)

        labelShoes.text = TextLabel.textShoes
        labelShoes.textColor = .black
        labelShoes.font = UIFont(name: TextLabel.customFont, size: 14)
        labelShoes.shadowColor = .black
        labelShoes.shadowOffset = CGSize(width: 0.5, height: 0.5)
        labelShoes.textAlignment = .left
        view.addSubview(labelShoes)

        labelBags.text = TextLabel.textBags
        labelBags.textColor = .black
        labelBags.font = UIFont(name: TextLabel.customFont, size: 14)
        labelBags.shadowColor = .black
        labelBags.shadowOffset = CGSize(width: 0.5, height: 0.5)
        labelBags.textAlignment = .left
        view.addSubview(labelBags)
    }

    /// настройка сегмент контроллера
    private func setupSegmentController() {
        let menuSegmentControlers = ["Женщинам", "Мужчинам", "Детям"]
        segmentController = UISegmentedControl(items: menuSegmentControlers)
        segmentController.selectedSegmentIndex = 1
        view.addSubview(segmentController)
    }

    /// настройка констрейнтов
    private func addConstraints() {
        rightButtonItemtBarcode.translatesAutoresizingMaskIntoConstraints = false
        segmentController.translatesAutoresizingMaskIntoConstraints = false
        labelBrands.translatesAutoresizingMaskIntoConstraints = false
        labelShoes.translatesAutoresizingMaskIntoConstraints = false
        labelBags.translatesAutoresizingMaskIntoConstraints = false
        viewBrands.translatesAutoresizingMaskIntoConstraints = false
        viewShoes.translatesAutoresizingMaskIntoConstraints = false
        labelNew.translatesAutoresizingMaskIntoConstraints = false
        labelSale.translatesAutoresizingMaskIntoConstraints = false
        leftButtonItemPhoto.translatesAutoresizingMaskIntoConstraints = false
        viewBags.translatesAutoresizingMaskIntoConstraints = false

        rightButtonItemtBarcode.widthAnchor.constraint(equalToConstant: 20.32).isActive = true
        rightButtonItemtBarcode.heightAnchor.constraint(equalToConstant: 20.31).isActive = true
        rightButtonItemtBarcode.bottomAnchor.constraint(equalTo: viewButtons.bottomAnchor).isActive = true
        rightButtonItemtBarcode.trailingAnchor.constraint(equalTo: viewButtons.trailingAnchor).isActive = true
        rightButtonItemtBarcode.topAnchor.constraint(equalTo: viewButtons.topAnchor).isActive = true
        rightButtonItemtBarcode.leadingAnchor.constraint(equalTo: leftButtonItemPhoto.trailingAnchor, constant: 18.2)
            .isActive = true

        leftButtonItemPhoto.widthAnchor.constraint(equalToConstant: 26.01).isActive = true
        leftButtonItemPhoto.heightAnchor.constraint(equalToConstant: 21.11).isActive = true
        leftButtonItemPhoto.leadingAnchor.constraint(equalTo: viewButtons.leadingAnchor).isActive = true
        leftButtonItemPhoto.topAnchor.constraint(equalTo: viewButtons.topAnchor).isActive = true
        leftButtonItemPhoto.bottomAnchor.constraint(equalTo: viewButtons.bottomAnchor).isActive = true

        segmentController.widthAnchor.constraint(equalToConstant: 345).isActive = true
        segmentController.heightAnchor.constraint(equalToConstant: 44).isActive = true
        segmentController.topAnchor.constraint(equalTo: view.topAnchor, constant: 122).isActive = true
        segmentController.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true

        labelSale.widthAnchor.constraint(equalToConstant: 160).isActive = true
        labelSale.heightAnchor.constraint(equalToConstant: 17).isActive = true
        labelSale.topAnchor.constraint(equalTo: view.topAnchor, constant: 289).isActive = true
        labelSale.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 195).isActive = true

        labelNew.widthAnchor.constraint(equalToConstant: 89).isActive = true
        labelNew.heightAnchor.constraint(equalToConstant: 17).isActive = true
        labelNew.topAnchor.constraint(equalTo: view.topAnchor, constant: 186).isActive = true
        labelNew.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 22).isActive = true

        labelBrands.widthAnchor.constraint(equalToConstant: 100).isActive = true
        labelBrands.heightAnchor.constraint(equalToConstant: 17).isActive = true
        labelBrands.topAnchor.constraint(equalTo: view.topAnchor, constant: 357).isActive = true
        labelBrands.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true

        labelShoes.widthAnchor.constraint(equalToConstant: 100).isActive = true
        labelShoes.heightAnchor.constraint(equalToConstant: 17).isActive = true
        labelShoes.topAnchor.constraint(equalTo: view.topAnchor, constant: 457).isActive = true
        labelShoes.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true

        labelBags.widthAnchor.constraint(equalToConstant: 100).isActive = true
        labelBags.heightAnchor.constraint(equalToConstant: 17).isActive = true
        labelBags.topAnchor.constraint(equalTo: view.topAnchor, constant: 557).isActive = true
        labelBags.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true

        viewBrands.widthAnchor.constraint(equalToConstant: 335).isActive = true
        viewBrands.heightAnchor.constraint(equalToConstant: 80).isActive = true
        viewBrands.topAnchor.constraint(equalTo: view.topAnchor, constant: 326).isActive = true
        viewBrands.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true

        viewShoes.widthAnchor.constraint(equalToConstant: 335).isActive = true
        viewShoes.heightAnchor.constraint(equalToConstant: 80).isActive = true
        viewShoes.topAnchor.constraint(equalTo: view.topAnchor, constant: 426).isActive = true
        viewShoes.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true

        viewBags.widthAnchor.constraint(equalToConstant: 335).isActive = true
        viewBags.heightAnchor.constraint(equalToConstant: 80).isActive = true
        viewBags.topAnchor.constraint(equalTo: view.topAnchor, constant: 526).isActive = true
        viewBags.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    }

    // настрйока кнопок в навигайшенБаре
    func addButtonNavigationBar() {
        leftButtonItemPhoto.setImage(UIImage(named: Constant.imageButtonLeft), for: .normal)
        rightButtonItemtBarcode.setImage(UIImage(named: Constant.imageButtonRight), for: .normal)
        exampleBarButtonItem = UIBarButtonItem(customView: viewButtons)
        navigationItem.rightBarButtonItem = exampleBarButtonItem
        viewButtons.addSubview(leftButtonItemPhoto)
        viewButtons.addSubview(rightButtonItemtBarcode)
    }

    /// функция которая настраивает картинки у айтемов
    func setupTabBarController() {
        if let tabBarItemOne = tabBarController?.tabBar.items?[0] {
            tabBarItemOne.title = "Список"
            tabBarItemOne.image = UIImage(named: Constant.imageListBlack)
            tabBarItemOne.selectedImage = UIImage(named: Constant.imageListNorm)
        }
        if let tabBarItemTwo = tabBarController?.tabBar.items?[1] {
            tabBarItemTwo.title = "Корзина"
            tabBarItemTwo.image = UIImage(named: Constant.imageBasketBlack)
            tabBarItemTwo.selectedImage = UIImage(named: Constant.imageBasketNorm)
        }
        if let tabBarThree = tabBarController?.tabBar.items?[2] {
            tabBarThree.title = "Профиль"
            tabBarThree.image = UIImage(named: Constant.imageProfileNorm)
            tabBarThree.image = UIImage(named: Constant.imageProfileBlack)
        }
    }
}
