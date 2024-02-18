// ShoesViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// класс для выбора обуви
final class ShoesViewController: UIViewController {
    // MARK: Constant

    private enum Constant {
        static let image = "basket"
        static let imageButton = "basketGray"
        static let customFont = "Verdana Bold"
        static let listPriceText = ["2250 ₽", "4250 ₽", "5750 ₽", "3500 ₽", "5750 ₽"]
        static let listImage = ["black", "blackTwo", "red", "orange", "white"]
    }

    // MARK: Private Properties

    private var numberViewGrayOne = UIView()
    private var numberViewGrayTwo = UIView()
    private var numberViewGrayThree = UIView()
    private var numberViewGrayFour = UIView()
    private var numberViewGrayFive = UIView()
    private var oneBasketButton = UIButton()
    private var twoBasketButton = UIButton()
    private var threeBasketButton = UIButton()
    private var fourBasketButton = UIButton()
    private var fiveBasketButton = UIButton()
    private var onePriceLabel = UILabel()
    private var twoPriceLabel = UILabel()
    private var threePriceLabel = UILabel()
    private var fourPriceLabel = UILabel()
    private var fivePriceLabel = UILabel()
    private var shoeBlackOneImageView = UIImageView()
    private var shoeBlackTwoImageView = UIImageView()
    private var shoeOrangeThreeImageView = UIImageView()
    private var shoeRedThreeImageView = UIImageView()
    private var shoeWhiteThreeImageView = UIImageView()

    var exampleInfo = [
        Info(nameImage: UIImage(named: "back"), nameShoes: "Туфли Женские", price: "2250 ₽"),
        Info(nameImage: UIImage(named: "backTwo"), nameShoes: "Туфли Мужские", price: "2250 ₽"),
        Info(nameImage: UIImage(named: "red"), nameShoes: "Туфли Мужские", price: "2245 ₽"),
        Info(nameImage: UIImage(named: "orange"), nameShoes: "Туфли Мужские", price: "2270 ₽"),
        Info(nameImage: UIImage(named: "orange"), nameShoes: "Туфли Мужские", price: "2253 ₽")
    ]

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Обувь"
        setupViewЕhings()
        configuratioButton()
        setupImageView()
        setupLabel()
        addConstrainsView()
        addConstrainsButton()
        addConstrainsLabel()
        addConstrainsImageView()
    }

    // MARK: - Private methods

    private func setupImageView() {
        shoeBlackOneImageView.image = UIImage(named: Constant.listImage[0])
        shoeBlackTwoImageView.image = UIImage(named: Constant.listImage[1])
        shoeOrangeThreeImageView.image = UIImage(named: Constant.listImage[3])
        shoeRedThreeImageView.image = UIImage(named: Constant.listImage[2])
        shoeWhiteThreeImageView.image = UIImage(named: Constant.listImage[4])
        view.addSubview(shoeBlackOneImageView)
        view.addSubview(shoeBlackTwoImageView)
        view.addSubview(shoeOrangeThreeImageView)
        view.addSubview(shoeRedThreeImageView)
        view.addSubview(shoeWhiteThreeImageView)
    }

    private func configurationLabel(label: UILabel, configuration: CustomLabel) {
        label.font = UIFont(name: Constant.customFont, size: 10)
        label.textAlignment = .right
        label.backgroundColor = configuration.color
        label.text = configuration.text
        view.addSubview(label)
    }

    private func setupLabel() {
        configurationLabel(
            label: onePriceLabel,
            configuration: CustomLabel(
                text: Constant.listPriceText[0],
                color: UIColor(red: 248 / 255, green: 248 / 255, blue: 248 / 255, alpha: 248 / 255)
            )
        )
        configurationLabel(
            label: twoPriceLabel,
            configuration: CustomLabel(
                text: Constant.listPriceText[1],
                color: UIColor(red: 248 / 255, green: 248 / 255, blue: 248 / 255, alpha: 248 / 255)
            )
        )
        configurationLabel(
            label: threePriceLabel,
            configuration: CustomLabel(
                text: Constant.listPriceText[2],
                color: UIColor(red: 248 / 255, green: 248 / 255, blue: 248 / 255, alpha: 248 / 255)
            )
        )
        configurationLabel(
            label: fourPriceLabel,
            configuration: CustomLabel(
                text: Constant.listPriceText[3],
                color: UIColor(red: 248 / 255, green: 248 / 255, blue: 248 / 255, alpha: 248 / 255)
            )
        )
        configurationLabel(
            label: fivePriceLabel,
            configuration: CustomLabel(
                text: Constant.listPriceText[2],
                color: UIColor(red: 248 / 255, green: 248 / 255, blue: 248 / 255, alpha: 248 / 255)
            )
        )
    }

    private func configuratioButton() {
        oneBasketButton.setImage(UIImage(named: Constant.imageButton), for: .normal)
        oneBasketButton.addTarget(self, action: #selector(putBasket), for: .touchUpInside)
        view.addSubview(oneBasketButton)

        twoBasketButton.setImage(UIImage(named: Constant.imageButton), for: .normal)
        twoBasketButton.addTarget(self, action: #selector(putBasket), for: .touchUpInside)
        view.addSubview(twoBasketButton)

        threeBasketButton.setImage(UIImage(named: Constant.imageButton), for: .normal)
        threeBasketButton.addTarget(self, action: #selector(putBasket), for: .touchUpInside)
        view.addSubview(threeBasketButton)

        fourBasketButton.setImage(UIImage(named: Constant.imageButton), for: .normal)
        fourBasketButton.addTarget(self, action: #selector(putBasket), for: .touchUpInside)
        view.addSubview(fourBasketButton)

        fiveBasketButton.setImage(UIImage(named: Constant.imageButton), for: .normal)
        fiveBasketButton.addTarget(self, action: #selector(putBasket), for: .touchUpInside)
        view.addSubview(fiveBasketButton)
    }

    private func configurationView(screen: UIView, configuration: ViewConfiguration) {
        screen.backgroundColor = configuration.backgroundColor
        screen.layer.cornerRadius = configuration.cornerRadius
        view.addSubview(screen)
    }

    /// функция для инициализации View
    private func setupViewЕhings() {
        configurationView(
            screen: numberViewGrayOne,
            configuration: ViewConfiguration(
                backgroundColor: UIColor(red: 248 / 255, green: 248 / 255, blue: 248 / 255, alpha: 248 / 255),
                cornerRadius: 20
            )
        )
        configurationView(
            screen: numberViewGrayTwo,
            configuration: ViewConfiguration(
                backgroundColor: UIColor(red: 248 / 255, green: 248 / 255, blue: 248 / 255, alpha: 248 / 255),
                cornerRadius: 20
            )
        )
        configurationView(
            screen: numberViewGrayThree,
            configuration: ViewConfiguration(
                backgroundColor: UIColor(red: 248 / 255, green: 248 / 255, blue: 248 / 255, alpha: 248 / 255),
                cornerRadius: 20
            )
        )
        configurationView(
            screen: numberViewGrayFour,
            configuration: ViewConfiguration(
                backgroundColor: UIColor(red: 248 / 255, green: 248 / 255, blue: 248 / 255, alpha: 248 / 255),
                cornerRadius: 20
            )
        )
        configurationView(
            screen: numberViewGrayFive,
            configuration: ViewConfiguration(
                backgroundColor: UIColor(red: 248 / 255, green: 248 / 255, blue: 248 / 255, alpha: 248 / 255),
                cornerRadius: 20
            )
        )
    }

    @objc private func putBasket(_ sender: UIButton) {
        sender.setImage(UIImage(named: Constant.image), for: .normal)
        let shoeSizeViewController = ShoeSizeViewController()
        shoeSizeViewController.copyDelegate = self
        present(shoeSizeViewController, animated: true)
    }
}

/// для расширения класса выноса констрейнтов из класса ShoesViewController
extension ShoesViewController {
    // MARK: Private Method

    private func addConstrainsView() {
        numberViewGrayOne.translatesAutoresizingMaskIntoConstraints = false
        numberViewGrayOne.widthAnchor.constraint(equalToConstant: 157).isActive = true
        numberViewGrayOne.heightAnchor.constraint(equalToConstant: 157).isActive = true
        numberViewGrayOne.topAnchor.constraint(equalTo: view.topAnchor, constant: 130).isActive = true
        numberViewGrayOne.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true

        numberViewGrayTwo.translatesAutoresizingMaskIntoConstraints = false
        numberViewGrayTwo.widthAnchor.constraint(equalToConstant: 157).isActive = true
        numberViewGrayTwo.heightAnchor.constraint(equalToConstant: 157).isActive = true
        numberViewGrayTwo.topAnchor.constraint(equalTo: view.topAnchor, constant: 130).isActive = true
        numberViewGrayTwo.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 198).isActive = true

        numberViewGrayThree.translatesAutoresizingMaskIntoConstraints = false
        numberViewGrayThree.widthAnchor.constraint(equalToConstant: 157).isActive = true
        numberViewGrayThree.heightAnchor.constraint(equalToConstant: 157).isActive = true
        numberViewGrayThree.topAnchor.constraint(equalTo: view.topAnchor, constant: 303).isActive = true
        numberViewGrayThree.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true

        numberViewGrayFour.translatesAutoresizingMaskIntoConstraints = false
        numberViewGrayFour.widthAnchor.constraint(equalToConstant: 157).isActive = true
        numberViewGrayFour.heightAnchor.constraint(equalToConstant: 157).isActive = true
        numberViewGrayFour.topAnchor.constraint(equalTo: view.topAnchor, constant: 303).isActive = true
        numberViewGrayFour.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 198).isActive = true

        numberViewGrayFive.translatesAutoresizingMaskIntoConstraints = false
        numberViewGrayFive.widthAnchor.constraint(equalToConstant: 157).isActive = true
        numberViewGrayFive.heightAnchor.constraint(equalToConstant: 157).isActive = true
        numberViewGrayFive.topAnchor.constraint(equalTo: view.topAnchor, constant: 476).isActive = true
        numberViewGrayFive.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    }

    private func addConstrainsImageView() {
        shoeBlackOneImageView.translatesAutoresizingMaskIntoConstraints = false
        shoeBlackOneImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        shoeBlackOneImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        shoeBlackOneImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 157).isActive = true
        shoeBlackOneImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 49).isActive = true

        shoeBlackTwoImageView.translatesAutoresizingMaskIntoConstraints = false
        shoeBlackTwoImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        shoeBlackTwoImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        shoeBlackTwoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 159).isActive = true
        shoeBlackTwoImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 226).isActive = true

        shoeRedThreeImageView.translatesAutoresizingMaskIntoConstraints = false
        shoeRedThreeImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        shoeRedThreeImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        shoeRedThreeImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 334).isActive = true
        shoeRedThreeImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 49).isActive = true

        shoeOrangeThreeImageView.translatesAutoresizingMaskIntoConstraints = false
        shoeOrangeThreeImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        shoeOrangeThreeImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        shoeOrangeThreeImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 334).isActive = true
        shoeOrangeThreeImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 226).isActive = true

        shoeWhiteThreeImageView.translatesAutoresizingMaskIntoConstraints = false
        shoeWhiteThreeImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        shoeWhiteThreeImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        shoeWhiteThreeImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 504).isActive = true
        shoeWhiteThreeImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 49).isActive = true
    }

    private func addConstrainsButton() {
        oneBasketButton.translatesAutoresizingMaskIntoConstraints = false
        oneBasketButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        oneBasketButton.heightAnchor.constraint(equalToConstant: 19).isActive = true
        oneBasketButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 141).isActive = true
        oneBasketButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 146).isActive = true

        twoBasketButton.translatesAutoresizingMaskIntoConstraints = false
        twoBasketButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        twoBasketButton.heightAnchor.constraint(equalToConstant: 19).isActive = true
        twoBasketButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 141).isActive = true
        twoBasketButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 327).isActive = true

        threeBasketButton.translatesAutoresizingMaskIntoConstraints = false
        threeBasketButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        threeBasketButton.heightAnchor.constraint(equalToConstant: 19).isActive = true
        threeBasketButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 314).isActive = true
        threeBasketButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 146).isActive = true

        fourBasketButton.translatesAutoresizingMaskIntoConstraints = false
        fourBasketButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        fourBasketButton.heightAnchor.constraint(equalToConstant: 19).isActive = true
        fourBasketButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 314).isActive = true
        fourBasketButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 327).isActive = true

        fiveBasketButton.translatesAutoresizingMaskIntoConstraints = false
        fiveBasketButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        fiveBasketButton.heightAnchor.constraint(equalToConstant: 19).isActive = true
        fiveBasketButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 488).isActive = true
        fiveBasketButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 146).isActive = true
    }

    private func addConstrainsLabel() {
        onePriceLabel.translatesAutoresizingMaskIntoConstraints = false
        onePriceLabel.widthAnchor.constraint(equalToConstant: 63).isActive = true
        onePriceLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        onePriceLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 263).isActive = true
        onePriceLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 105).isActive = true

        twoPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        twoPriceLabel.widthAnchor.constraint(equalToConstant: 63).isActive = true
        twoPriceLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        twoPriceLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 263).isActive = true
        twoPriceLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 276).isActive = true

        threePriceLabel.translatesAutoresizingMaskIntoConstraints = false
        threePriceLabel.widthAnchor.constraint(equalToConstant: 63).isActive = true
        threePriceLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        threePriceLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 436).isActive = true
        threePriceLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 105).isActive = true

        fourPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        fourPriceLabel.widthAnchor.constraint(equalToConstant: 63).isActive = true
        fourPriceLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        fourPriceLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 436).isActive = true
        fourPriceLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 283).isActive = true

        fivePriceLabel.translatesAutoresizingMaskIntoConstraints = false
        fivePriceLabel.widthAnchor.constraint(equalToConstant: 63).isActive = true
        fivePriceLabel.heightAnchor.constraint(equalToConstant: 12).isActive = true
        fivePriceLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 609).isActive = true
        fivePriceLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 105).isActive = true
    }
}

extension ShoesViewController: DataDelegate {
    func translitionInfo(shoeSize: String) {
        let view = tabBarController?.viewControllers?[1] as? BasketViewController
        view?.basketArray.append(BasketModel(
            image: Constant.listImage[1],
            title: "Женские",
            legSize: shoeSize,
            price: "2250 руб"
        ))
//        view?.configure(model: BasketModel(
//            image: Constant.listImage[1],
//            title: "Женские",
//            legSize: shoeSize,
//            price: "2250 руб"
//        ))
    }
}
