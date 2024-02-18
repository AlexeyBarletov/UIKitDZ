// CatalogViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Класс для выбора вещей
final class CatalogViewController: UIViewController {
    // MARK: Constant

    private enum Constant {
        static let imageButtonLeft = "fotos"
        static let imageButtonRight = "barcode"
        static let imageListNorm = "list"
        static let imageListBlack = "blackList"
        static let imageBasketBlack = "basketBlack"
        static let imageBasketNorm = "basketNorm"
        static let imageProfileNorm = "profileNorm"
        static let imageProfileBlack = "profileBlack"
        static let customFont = "Verdana Bold"
        static let textNew = "Новинки"
        static let textSale = "Распродажа"
        static let textBrands = "Бренды"
        static let textShoes = "Обувь"
        static let textBags = "Сумки"
    }

    // MARK: Private Properties

    private var storage: [Int: NameImage] = [:]
    private var leftButtonItemPhoto = UIButton()
    private var rightButtonItemtBarcode = UIButton()
    private let viewButtons = UIView()
    private var exampleBarButtonItem = UIBarButtonItem()
    private let viewBarButtonItem = UIView()
    private var segmentController = UISegmentedControl()
    private var stupImageNew = UIImageView()
    private let stupImageSalce = UIImageView()
    private let stupImageBrands = UIImageView()
    private let stupImageShoes = UIImageView()
    private let stupImageBags = UIImageView()
    private let labelNew = UILabel()
    private let labelSale = UILabel()
    private let labelBrands = UILabel()
    private let labelShoes = UILabel()
    private let labelBags = UILabel()
    private var viewBrands = UIView()
    private let viewBags = UIView()
    private let viewShoes = UIView()
    private let tap = UITapGestureRecognizer()

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Каталог"
        setupReconizer()
        setupSegmentController()
        setupViewЕhings()
        addButtonNavigationBar()
        setupTabBarController()
        addConstraintsButton()
        addConstriantsViewLabel()
        addConstraintsSegmentController()
        addConstrintsImage()
        setupLabelNewSale()
        setupShadowImage()
    }

    // MARK: - Private methods

    private func setupShadowImage() {
        stupImageNew.image = UIImage(named: "new")
        stupImageNew.layer.shadowColor = UIColor.gray.cgColor
        stupImageNew.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        stupImageNew.layer.shadowOpacity = 1
    }

    private func setupSegmentController() {
        let menuSegmentControlers = ["Женщинам", "Мужчинам", "Детям"]
        stupImageSalce.image = UIImage(named: "sales")
        stupImageBags.image = UIImage(named: "bags")
        stupImageShoes.image = UIImage(named: "shoes")
        stupImageBrands.image = UIImage(named: "brends")
        segmentController = UISegmentedControl(items: menuSegmentControlers)
        segmentController.selectedSegmentIndex = 1
        segmentController.addTarget(self, action: #selector(addThings), for: .valueChanged)
        view.addSubview(segmentController)
    }

    private func configurationView(screen: UIView, configuration: ViewConfiguration) {
        screen.backgroundColor = configuration.backgroundColor
        screen.layer.cornerRadius = configuration.cornerRadius
        view.addSubview(screen)
    }

    private func setupViewЕhings() {
        configurationView(
            screen: viewBrands,
            configuration: ViewConfiguration(
                backgroundColor: .init(red: 248 / 255, green: 248 / 255, blue: 248 / 255, alpha: 1),
                cornerRadius: 12
            )
        )
        configurationView(
            screen: viewBags,
            configuration: ViewConfiguration(
                backgroundColor: .init(red: 248 / 255, green: 248 / 255, blue: 248 / 255, alpha: 1),
                cornerRadius: 12
            )
        )
        configurationView(
            screen: viewShoes,
            configuration: ViewConfiguration(
                backgroundColor: .init(red: 248 / 255, green: 248 / 255, blue: 248 / 255, alpha: 1),
                cornerRadius: 12
            )
        )
    }

    private func setupLabelNewSale() {
        view.addSubview(labelBags)
        view.addSubview(labelNew)
        view.addSubview(labelShoes)
        view.addSubview(labelBrands)
        view.addSubview(labelSale)
        labelBags.translatesAutoresizingMaskIntoConstraints = false
        labelBags.widthAnchor.constraint(equalToConstant: 100).isActive = true
        labelBags.heightAnchor.constraint(equalToConstant: 17).isActive = true
        labelBags.topAnchor.constraint(equalTo: view.topAnchor, constant: 557).isActive = true
        labelBags.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        labelBags.text = Constant.textBags
        labelBags.font = UIFont(name: Constant.customFont, size: 14)
        labelBags.textColor = .black
        labelBags.textAlignment = .center
        labelShoes.translatesAutoresizingMaskIntoConstraints = false
        labelShoes.widthAnchor.constraint(equalToConstant: 100).isActive = true
        labelShoes.heightAnchor.constraint(equalToConstant: 17).isActive = true
        labelShoes.topAnchor.constraint(equalTo: view.topAnchor, constant: 457).isActive = true
        labelShoes.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        labelShoes.text = Constant.textShoes
        labelShoes.font = UIFont(name: Constant.customFont, size: 14)
        labelShoes.textColor = .black
        labelShoes.textAlignment = .center
        labelBrands.translatesAutoresizingMaskIntoConstraints = false
        labelBrands.widthAnchor.constraint(equalToConstant: 100).isActive = true
        labelBrands.heightAnchor.constraint(equalToConstant: 17).isActive = true
        labelBrands.topAnchor.constraint(equalTo: view.topAnchor, constant: 357).isActive = true
        labelBrands.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        labelBrands.text = Constant.textBrands
        labelBrands.font = UIFont(name: Constant.customFont, size: 14)
        labelBrands.textColor = .black
        labelBrands.textAlignment = .center
        labelNew.translatesAutoresizingMaskIntoConstraints = false
        labelNew.widthAnchor.constraint(equalToConstant: 162).isActive = true
        labelNew.heightAnchor.constraint(equalToConstant: 17).isActive = true
        labelNew.topAnchor.constraint(equalTo: view.topAnchor, constant: 186).isActive = true
        labelNew.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 22).isActive = true
        labelNew.text = Constant.textNew
        labelNew.font = UIFont(name: Constant.customFont, size: 14)
        labelNew.textColor = .white
        labelNew.textAlignment = .center
        labelSale.translatesAutoresizingMaskIntoConstraints = false
        labelSale.widthAnchor.constraint(equalToConstant: 160).isActive = true
        labelSale.heightAnchor.constraint(equalToConstant: 17).isActive = true
        labelSale.topAnchor.constraint(equalTo: view.topAnchor, constant: 289).isActive = true
        labelSale.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 195).isActive = true
        labelSale.text = Constant.textSale
        labelSale.font = UIFont(name: Constant.customFont, size: 14)
        labelSale.textColor = .white
        labelSale.textAlignment = .center
    }

    private func addConstraintsButton() {
        rightButtonItemtBarcode.translatesAutoresizingMaskIntoConstraints = false
        leftButtonItemPhoto.translatesAutoresizingMaskIntoConstraints = false
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
    }

    private func addButtonNavigationBar() {
        leftButtonItemPhoto.setImage(UIImage(named: Constant.imageButtonLeft), for: .normal)
        rightButtonItemtBarcode.setImage(UIImage(named: Constant.imageButtonRight), for: .normal)
        exampleBarButtonItem = UIBarButtonItem(customView: viewButtons)
        navigationItem.rightBarButtonItem = exampleBarButtonItem
        viewButtons.addSubview(leftButtonItemPhoto)
        viewButtons.addSubview(rightButtonItemtBarcode)
    }

    private func setupTabBarController() {
        if let tabBarItemOne = tabBarController?.tabBar.items?[0] {
            tabBarItemOne.title = "Список"
            tabBarItemOne.image = UIImage(named: Constant.imageListBlack)
            tabBarItemOne.selectedImage = UIImage(named: Constant.imageListNorm)
        }
    }

    private func setupReconizer() {
        stupImageShoes.isUserInteractionEnabled = true
        tap.addTarget(self, action: #selector(translitionNewSreenTrans))
        stupImageShoes.addGestureRecognizer(tap)
    }

    @objc private func translitionNewSreenTrans() {
        navigationController?.pushViewController(ShoesViewController(), animated: true)
    }

    @objc private func addThings(target: UISegmentedControl) {
        storage[0] = NameImage(
            imageNumberNew: "newThree",
            imageNumberBags: "bagsThree",
            imageNumberSales: "salesThree",
            imageNumberFour: "shoesThree",
            imageNumberFive: "brends"
        )
        storage[1] = NameImage(
            imageNumberNew: "new", // новинки
            imageNumberBags: "bags", // сумки
            imageNumberSales: "sales", // распродажа
            imageNumberFour: "shoes", // обувь
            imageNumberFive: "brends" // бренды
        )
        storage[2] = NameImage(
            imageNumberNew: "newTwo",
            imageNumberBags: "bagsTwo",
            imageNumberSales: "salesTwo",
            imageNumberFour: "shoesTwo",
            imageNumberFive: "brends"
        )
        if target == segmentController {
            let segmentIndex = target.selectedSegmentIndex
            stupImageNew.image = UIImage(named: storage[segmentIndex]?.imageNumberNew ?? "")
            stupImageBags.image = UIImage(named: storage[segmentIndex]?.imageNumberBags ?? "")
            stupImageSalce.image = UIImage(named: storage[segmentIndex]?.imageNumberSales ?? "")
            stupImageShoes.image = UIImage(named: storage[segmentIndex]?.imageNumberFour ?? "")
            stupImageBrands.image = UIImage(named: storage[segmentIndex]?.imageNumberFive ?? "")
        }
    }
}

/// для рсширения для выноса констрейнтов из класса CatalogViewController
extension CatalogViewController {
    // MARK: Private Method

    private func addConstriantsViewLabel() {
        viewBrands.translatesAutoresizingMaskIntoConstraints = false
        viewBrands.widthAnchor.constraint(equalToConstant: 335).isActive = true
        viewBrands.heightAnchor.constraint(equalToConstant: 80).isActive = true
        viewBrands.topAnchor.constraint(equalTo: view.topAnchor, constant: 326).isActive = true
        viewBrands.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        viewShoes.translatesAutoresizingMaskIntoConstraints = false
        viewShoes.widthAnchor.constraint(equalToConstant: 335).isActive = true
        viewShoes.heightAnchor.constraint(equalToConstant: 80).isActive = true
        viewShoes.topAnchor.constraint(equalTo: view.topAnchor, constant: 426).isActive = true
        viewShoes.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        viewBags.translatesAutoresizingMaskIntoConstraints = false
        viewBags.widthAnchor.constraint(equalToConstant: 335).isActive = true
        viewBags.heightAnchor.constraint(equalToConstant: 80).isActive = true
        viewBags.topAnchor.constraint(equalTo: view.topAnchor, constant: 526).isActive = true
        viewBags.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    }

    private func addConstrintsImage() {
        view.addSubview(stupImageNew)
        view.addSubview(stupImageSalce)
        view.addSubview(stupImageBags)
        view.addSubview(stupImageShoes)
        view.addSubview(stupImageBrands)
        stupImageNew.translatesAutoresizingMaskIntoConstraints = false
        stupImageNew.widthAnchor.constraint(equalToConstant: 160).isActive = true
        stupImageNew.heightAnchor.constraint(equalToConstant: 120).isActive = true
        stupImageNew.topAnchor.constraint(equalTo: view.topAnchor, constant: 186).isActive = true
        stupImageNew.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        stupImageSalce.translatesAutoresizingMaskIntoConstraints = false
        stupImageSalce.widthAnchor.constraint(equalToConstant: 160).isActive = true
        stupImageSalce.heightAnchor.constraint(equalToConstant: 120).isActive = true
        stupImageSalce.topAnchor.constraint(equalTo: view.topAnchor, constant: 186).isActive = true
        stupImageSalce.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 195).isActive = true
        stupImageBags.translatesAutoresizingMaskIntoConstraints = false
        stupImageBags.widthAnchor.constraint(equalToConstant: 99).isActive = true
        stupImageBags.heightAnchor.constraint(equalToConstant: 80).isActive = true
        stupImageBags.topAnchor.constraint(equalTo: view.topAnchor, constant: 526).isActive = true
        stupImageBags.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 256).isActive = true
        stupImageShoes.translatesAutoresizingMaskIntoConstraints = false
        stupImageShoes.widthAnchor.constraint(equalToConstant: 99).isActive = true
        stupImageShoes.heightAnchor.constraint(equalToConstant: 80).isActive = true
        stupImageShoes.topAnchor.constraint(equalTo: view.topAnchor, constant: 426).isActive = true
        stupImageShoes.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 257).isActive = true
        stupImageBrands.translatesAutoresizingMaskIntoConstraints = false
        stupImageBrands.widthAnchor.constraint(equalToConstant: 99).isActive = true
        stupImageBrands.heightAnchor.constraint(equalToConstant: 80).isActive = true
        stupImageBrands.topAnchor.constraint(equalTo: view.topAnchor, constant: 326).isActive = true
        stupImageBrands.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 256).isActive = true
    }

    private func addConstraintsSegmentController() {
        segmentController.translatesAutoresizingMaskIntoConstraints = false
        segmentController.widthAnchor.constraint(equalToConstant: 345).isActive = true
        segmentController.heightAnchor.constraint(equalToConstant: 44).isActive = true
        segmentController.topAnchor.constraint(equalTo: view.topAnchor, constant: 122).isActive = true
        segmentController.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
    }
}
