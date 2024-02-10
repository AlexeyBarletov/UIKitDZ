// BirthdayInformation.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// класс
class BirthdayInformation: UIViewController {
    var copyLabel = UILabel()

    var copyImageViewHelena = UIImageView()
    var copyImageViewVerona = UIImageView()
    var copyImageViewAlex = UIImageView()
    var copyImageViewTom = UIImageView()
    var imageViewVeronaHappyB = UIImageView()
    var imageViewHelenaHappyB = UIImageView()
    var imageViewAlexHappyB = UIImageView()
    var imageViewTomHappyB = UIImageView()
    var imageHelenaHappyB = UIImage(named: "helena")
    var imageVeronaHappyB = UIImage(named: "verona")
    var imageAlexHappyB = UIImage(named: "alex")
    var imageTomHappyB = UIImage(named: "tom")
    var imageHelena = UIImage(named: "3")
    var imageVerona = UIImage(named: "4")
    var imageAlex = UIImage(named: "1")
    var imageTom = UIImage(named: "2")

    let fontName = "Verdana"
    var storyBoord = UIStoryboard()

    var nameLabelVerona = UILabel()
    var nameLabelHelena = UILabel()
    var nameLabelAlex = UILabel()
    var nameLabelTom = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setuplLabel()
        setupBarButtonItem()
        setupImageView()
        setupLabelNameLastName()
    }

    func setupBarButtonItem() {
        navigationItem.title = copyLabel.text
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(moveForvard)
        )
    }

    @objc func moveForvard() {
        let modalViewController = InformationScreen()
        modalViewController.modalPresentationStyle = .automatic
        present(modalViewController, animated: true, completion: nil)
    }

    private func setuplLabel() {
        copyLabel.text = "Brithday Reminder"
        view.addSubview(copyLabel)
    }

    func setupImageView() {
        copyImageViewHelena = UIImageView(frame: CGRect(x: 19, y: 105, width: 75, height: 75))
        copyImageViewHelena.image = imageHelena
        view.addSubview(copyImageViewHelena)

        copyImageViewVerona = UIImageView(frame: CGRect(x: 20, y: 200, width: 75, height: 75))
        copyImageViewVerona.image = imageVerona
        view.addSubview(copyImageViewVerona)

        copyImageViewAlex = UIImageView(frame: CGRect(x: 20, y: 296, width: 75, height: 75))
        copyImageViewAlex.image = imageAlex
        view.addSubview(copyImageViewAlex)

        copyImageViewTom = UIImageView(frame: CGRect(x: 22, y: 390, width: 75, height: 75))
        copyImageViewTom.image = imageTom
        view.addSubview(copyImageViewTom)

        imageViewHelenaHappyB = UIImageView(frame: CGRect(x: 314, y: 119, width: 44, height: 44))
        imageViewHelenaHappyB.image = imageHelenaHappyB
        view.addSubview(imageViewHelenaHappyB)

        imageViewVeronaHappyB = UIImageView(frame: CGRect(x: 315, y: 214, width: 42, height: 44))
        imageViewVeronaHappyB.image = imageVeronaHappyB
        view.addSubview(imageViewVeronaHappyB)

        imageViewAlexHappyB = UIImageView(frame: CGRect(x: 315, y: 309, width: 42, height: 44))
        imageViewAlexHappyB.image = imageAlexHappyB
        view.addSubview(imageViewAlexHappyB)

        imageViewTomHappyB = UIImageView(frame: CGRect(x: 317, y: 404, width: 42, height: 44))
        imageViewTomHappyB.image = imageTomHappyB
        view.addSubview(imageViewTomHappyB)
    }

    func setupLabelNameLastName() {
        nameLabelVerona = UILabel(frame: CGRect(x: 102, y: 119, width: 209, height: 20))
        nameLabelVerona.text = "Helena Link"
        nameLabelVerona.shadowColor = .black
        nameLabelVerona.shadowOffset = CGSize(width: 1, height: 1)
        if let customFont = UIFont(name: fontName, size: 16) {
            nameLabelVerona.font = customFont
            view.addSubview(nameLabelVerona)

            nameLabelVerona = UILabel(frame: CGRect(x: 103, y: 214, width: 209, height: 20))
            nameLabelVerona.text = "Verona Tusk"
            nameLabelVerona.shadowColor = .black
            nameLabelVerona.shadowOffset = CGSize(width: 1, height: 1)
            if let customFont = UIFont(name: fontName, size: 16) {
                nameLabelVerona.font = customFont
                view.addSubview(nameLabelVerona)

                nameLabelAlex = UILabel(frame: CGRect(x: 103, y: 309, width: 209, height: 20))
                nameLabelAlex.text = "Alex Smitch"
                nameLabelAlex.shadowColor = .black
                nameLabelAlex.shadowOffset = CGSize(width: 1, height: 1)
                if let customFont = UIFont(name: fontName, size: 16) {
                    nameLabelVerona.font = customFont
                    view.addSubview(nameLabelAlex)

                    nameLabelTom = UILabel(frame: CGRect(x: 105, y: 404, width: 209, height: 20))
                    nameLabelTom.text = "Alex Smitch"
                    nameLabelTom.shadowColor = .black
                    nameLabelTom.shadowOffset = CGSize(width: 1, height: 1)
                    if let customFont = UIFont(name: fontName, size: 16) {
                        nameLabelVerona.font = customFont
                        view.addSubview(nameLabelTom)
                    }
                }
            }
        }
    }
}
