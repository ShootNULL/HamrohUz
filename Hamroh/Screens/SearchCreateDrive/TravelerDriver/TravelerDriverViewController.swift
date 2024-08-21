//
//  TravelerDriverViewController.swift
//  Hamroh
//
//  Created by Peter on 27.05.2024.
//

import Foundation
import UIKit

class TravelerDriverViewController: UIViewController {

    private let presenter = TravelerDriverViewPresenter()

    let items = ["Я попутчик", "Я водитель"]

    private let searchTitle = PrimaryTitleK(numberLines: 1, title: "Найти поездку") ?? UILabel()
    private let createTitle = PrimaryTitleK(numberLines: 1, title: "Создать поездку") ?? UILabel()
    private var segmentedControl = UISegmentedControl()
    private let fromCard = PrimaryCardFromK(title: "Откуда", adress: "Введите полный адрес") ?? UIView()
    private let toCard = PrimaryCardToK(adress: "Введите полный адрес") ?? UIView()
    private let dottedLine = UIImageView()
    private let lineView = UIView()
    private let switchButton = UIButton()
    private let dateTitle = PrimaryTitleK(numberLines: 1, title: "Дата") ?? UILabel()
    private let dateTextField = PrimaryTextFieldK(title: "", height: 46) ?? UITextField()
    private let peopleTitle = PrimaryTitleK(numberLines: 1, title: "Кол-во человек") ?? UILabel()
    private let peopleTextField = PrimaryTextFieldK(title: "", height: 46) ?? UITextField()
    private let latestDrives = PrimaryTitleK(numberLines: 1, title: "Предыдущие запросы") ?? UILabel()
    private let latestDrive1 = PrimaryViewLatestDriveseK(title: "Краснодар", subTitle: "Москва") ?? UIView()
    private let latestDrive2 = PrimaryViewLatestDriveseK(title: "Н. Новгород", subTitle: "Кстово") ?? UIView()
    private let latestDrive3 = PrimaryViewLatestDriveseK(title: "Тюмень", subTitle: "Патрушев") ?? UIView()
    private let searchButton = PrimaryButtonK(type: true, title: "Поиск предложений", height: 52) ?? UIButton()

    private let fromCardForDriver = PrimaryCardFromK(title: "Откуда", adress: "Введите полный адрес") ?? UIView()
    private let lineView1 = UIView()
    private let fromAdress1 = PrimaryProposedDrivesK(title: "Малая Ямская, 17А, г. Самарканд") ?? UIView()
    private let fromAdress2 = PrimaryProposedDrivesK(title: "Максима Горького, 24, г. Ташкент") ?? UIView()
    private let fromAdress3 = PrimaryProposedDrivesK(title: "Областная, 11, Ташкентская область, г. Бухара") ?? UIView()
    private let toCardForDriver = PrimaryCardFromK(title: "Куда", adress: "Введите полный адрес") ?? UIView()
    private let lineView2 = UIView()
    private let toAdress1 = PrimaryProposedDrivesK(title: "Малая Ямская, 17А, г. Самарканд") ?? UIView()
    private let toAdress2 = PrimaryProposedDrivesK(title: "Максима Горького, 24, г. Ташкент") ?? UIView()
    private let toAdress3 = PrimaryProposedDrivesK(title: "Областная, 11, Ташкентская область, г. Бухара") ?? UIView()
    private let nextButton = PrimaryButtonK(type: true, title: "Далее", height: 52) ?? UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
    }

    private func setUp() {
        view.backgroundColor = .white
        self.tabBarController?.hideNavigationBar()

    
        setUpSearchTitle()
        setUpSegmentedControl()
        setUpFromCard()
        setUpToCard()
        setUpDottedLine()
        setUpLineView()
        setUpSwitchButton()
        setUpDateTitle()
        setUpDateTextField()
        setUpPeopleTitle()
        setUpPeopleTextField()
        setUpLatestDrives()
        setUpSearchButton()
        setUpLatestDrive1()
        setUpLatestDrive2()
        setUpLatestDrive3()

        setUpCreateTitle()
        setUpFromCardForDriver()
        setUpLineView1()
        setUpFromAdress1()
        setUpFromAdress2()
        setUpFromAdress3()
        setUpToCardForDriver()
        setUpLineView2()
        setUpToAdress1()
        setUpToAdress2()
        setUpToAdress3()
        setUpNextButton()
    }
    
    private func setUpSearchTitle() {
        
        let searchTitleConstraints = [
            
            searchTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            searchTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(searchTitle)
        NSLayoutConstraint.activate(searchTitleConstraints)
    }
    
    private func setUpCreateTitle() {
        
        createTitle.isHidden = true
        
        let createTitleConstraints = [
            
            createTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            createTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(createTitle)
        NSLayoutConstraint.activate(createTitleConstraints)
    }
    
    private func setUpSegmentedControl() {
        
        let titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor(named: "primaryBlack")!,
            NSAttributedString.Key.font: UIFont(name: "SFProRounded-Medium", size: 12)!
        ]
        
        segmentedControl = UISegmentedControl(items: items)
        segmentedControl.setTitleTextAttributes(titleTextAttributes, for: .normal)
        segmentedControl.setTitleTextAttributes(titleTextAttributes, for: .selected)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.layer.borderColor = UIColor.white.cgColor
        segmentedControl.layer.borderWidth = 0
        segmentedControl.layer.cornerRadius = 20
        segmentedControl.layer.cornerCurve = .continuous
        segmentedControl.layer.masksToBounds = true
        segmentedControl.selectedSegmentTintColor = UIColor(named: "primaryWhite")
        segmentedControl.backgroundColor = UIColor(named: "base5")
        segmentedControl.addTarget(self, action: #selector(changeColor), for: .valueChanged)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        let segmentedControlConstraints = [
            
            segmentedControl.topAnchor.constraint(equalTo: searchTitle.bottomAnchor, constant: 20),
            segmentedControl.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            segmentedControl.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            segmentedControl.heightAnchor.constraint(equalToConstant: 32)
        ]
        
        view.addSubview(segmentedControl)
        NSLayoutConstraint.activate(segmentedControlConstraints)
    }
    
    @objc private func changeColor(sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            searchTitle.isHidden = false
            fromCard.isHidden = false
            toCard.isHidden = false
            dottedLine.isHidden = false
            lineView.isHidden = false
            switchButton.isHidden = false
            dateTitle.isHidden = false
            dateTextField.isHidden = false
            peopleTitle.isHidden = false
            peopleTextField.isHidden = false
            latestDrives.isHidden = false
            searchButton.isHidden = false
            latestDrive1.isHidden = false
            latestDrive2.isHidden = false
            latestDrive3.isHidden = false
            
            createTitle.isHidden = true
            fromCardForDriver.isHidden = true
            lineView1.isHidden = true
            fromAdress1.isHidden = true
            fromAdress2.isHidden = true
            fromAdress3.isHidden = true
            toCardForDriver.isHidden = true
            lineView2.isHidden = true
            toAdress1.isHidden = true
            toAdress2.isHidden = true
            toAdress3.isHidden = true
            nextButton.isHidden = true
            
        case 1:
            searchTitle.isHidden = true
            fromCard.isHidden = true
            toCard.isHidden = true
            dottedLine.isHidden = true
            lineView.isHidden = true
            switchButton.isHidden = true
            dateTitle.isHidden = true
            dateTextField.isHidden = true
            peopleTitle.isHidden = true
            peopleTextField.isHidden = true
            latestDrives.isHidden = true
            searchButton.isHidden = true
            latestDrive1.isHidden = true
            latestDrive2.isHidden = true
            latestDrive3.isHidden = true
            
            createTitle.isHidden = false
            fromCardForDriver.isHidden = false
            lineView1.isHidden = false
            fromAdress1.isHidden = false
            fromAdress2.isHidden = false
            fromAdress3.isHidden = false
            toCardForDriver.isHidden = false
            lineView2.isHidden = false
            toAdress1.isHidden = false
            toAdress2.isHidden = false
            toAdress3.isHidden = false
            nextButton.isHidden = false
            
        default:
            print("warning!")
        }
    }
    
    private func setUpFromCard() {
        
        let fromCardConstraints = [
            
            fromCard.heightAnchor.constraint(equalToConstant: 60),
            fromCard.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            fromCard.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            fromCard.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 30)
        ]
        
        view.addSubview(fromCard)
        NSLayoutConstraint.activate(fromCardConstraints)
    }
    
    private func setUpToCard() {
        
        let toCardConstraints = [
            
            toCard.heightAnchor.constraint(equalToConstant: 60),
            toCard.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            toCard.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            toCard.topAnchor.constraint(equalTo: fromCard.bottomAnchor, constant: 10)
        ]
        
        view.addSubview(toCard)
        NSLayoutConstraint.activate(toCardConstraints)
    }
    
    private func setUpDottedLine() {
        
        dottedLine.image = UIImage(named: "dottedLine")
        dottedLine.translatesAutoresizingMaskIntoConstraints = false
        
        let dottedLineConstraints = [
            
            dottedLine.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 21.4),
            dottedLine.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 60)
        ]
        
        view.addSubview(dottedLine)
        NSLayoutConstraint.activate(dottedLineConstraints)
    }
    
    private func setUpLineView() {
        
        lineView.backgroundColor = UIColor(named: "Base5")
        lineView.translatesAutoresizingMaskIntoConstraints = false
        
        let lineViewConstraints = [
        
            lineView.heightAnchor.constraint(equalToConstant: 0.5),
            lineView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 39),
            lineView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -39),
            lineView.topAnchor.constraint(equalTo: fromCard.bottomAnchor, constant: 5)
        ]
        
        view.addSubview(lineView)
        NSLayoutConstraint.activate(lineViewConstraints)
    }
    
    private func setUpSwitchButton() {
        
        switchButton.setImage(UIImage(named: "switch"), for: .normal)
        switchButton.translatesAutoresizingMaskIntoConstraints = false
        
        let switchConstraints = [
        
            switchButton.heightAnchor.constraint(equalToConstant: 16),
            switchButton.widthAnchor.constraint(equalToConstant: 16),
            switchButton.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 86),
            switchButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16)
        ]
        
        view.addSubview(switchButton)
        NSLayoutConstraint.activate(switchConstraints)
    }
    
    private func setUpDateTitle() {
        
        dateTitle.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let dateTitleConstraints = [
            
            dateTitle.topAnchor.constraint(equalTo: toCard.bottomAnchor, constant: 30),
            dateTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(dateTitle)
        NSLayoutConstraint.activate(dateTitleConstraints)
    }
    
    private func setUpDateTextField() {
        
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor(named: "primaryGray")!,
            NSAttributedString.Key.font: UIFont(name: "SFProRounded-Regular", size: 12)!
        ]
        
        dateTextField.attributedPlaceholder = NSAttributedString(string: "17 Ноября", attributes: attributes)
        dateTextField.layer.borderColor = UIColor(named: "Base10")!.cgColor
        dateTextField.font = UIFont(name: "SFProRounded-Regular", size: 12)
        
        let dateTextFieldConstraints = [
            
            dateTextField.topAnchor.constraint(equalTo: dateTitle.bottomAnchor, constant: 8),
            dateTextField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            dateTextField.widthAnchor.constraint(equalToConstant: (view.frame.width - 42) / 2 )
        ]
        
        view.addSubview(dateTextField)
        NSLayoutConstraint.activate(dateTextFieldConstraints)
    }
    
    private func setUpPeopleTitle() {
        
        peopleTitle.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let peopleTitleConstraints = [
            
            peopleTitle.topAnchor.constraint(equalTo: toCard.bottomAnchor, constant: 30),
            peopleTitle.leftAnchor.constraint(equalTo: dateTextField.rightAnchor, constant: 10)
        ]
        
        view.addSubview(peopleTitle)
        NSLayoutConstraint.activate(peopleTitleConstraints)
    }
    
    private func setUpPeopleTextField() {
        
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor(named: "primaryGray")!,
            NSAttributedString.Key.font: UIFont(name: "SFProRounded-Regular", size: 12)!
        ]
        
        peopleTextField.attributedPlaceholder = NSAttributedString(string: "1 взрослый",attributes: attributes)
        peopleTextField.layer.borderColor = UIColor(named: "Base10")!.cgColor
        peopleTextField.font = UIFont(name: "SFProRounded-Regular", size: 12)
        
        let peopleTextFieldConstraints = [
            
            peopleTextField.topAnchor.constraint(equalTo: dateTitle.bottomAnchor, constant: 8),
            peopleTextField.leftAnchor.constraint(equalTo: dateTextField.rightAnchor, constant: 10),
            peopleTextField.widthAnchor.constraint(equalToConstant: (view.frame.width - 42) / 2 )
        ]
        
        view.addSubview(peopleTextField)
        NSLayoutConstraint.activate(peopleTextFieldConstraints)
    }
    
    private func setUpLatestDrives() {
        
        latestDrives.font = UIFont(name: "SFProRounded-SemiBold", size: 20)
        
        let latestDrivesConstraints = [
            
            latestDrives.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            latestDrives.topAnchor.constraint(equalTo: dateTextField.bottomAnchor, constant: 30)
        ]
        
        view.addSubview(latestDrives)
        NSLayoutConstraint.activate(latestDrivesConstraints)
    }
    
    private func setUpLatestDrive1() {
        
        let latestDrive1Constraints = [
            
            latestDrive1.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            latestDrive1.topAnchor.constraint(equalTo: latestDrives.bottomAnchor, constant: 20),
            latestDrive1.heightAnchor.constraint(equalToConstant: 67),
            latestDrive1.widthAnchor.constraint(equalToConstant: (view.frame.width - 48) / 3)
        ]
        
        view.addSubview(latestDrive1)
        NSLayoutConstraint.activate(latestDrive1Constraints)
    }
    
    private func setUpLatestDrive2() {
        
        let latestDrive2Constraints = [
            
            latestDrive2.leftAnchor.constraint(equalTo: latestDrive1.rightAnchor, constant: 8),
            latestDrive2.topAnchor.constraint(equalTo: latestDrives.bottomAnchor, constant: 20),
            latestDrive2.heightAnchor.constraint(equalToConstant: 67),
            latestDrive2.widthAnchor.constraint(equalToConstant: (view.frame.width - 48) / 3)
        ]
        
        view.addSubview(latestDrive2)
        NSLayoutConstraint.activate(latestDrive2Constraints)
    }
    
    private func setUpLatestDrive3() {
        
        let latestDrive3Constraints = [
            
            latestDrive3.leftAnchor.constraint(equalTo: latestDrive2.rightAnchor, constant: 8),
            latestDrive3.topAnchor.constraint(equalTo: latestDrives.bottomAnchor, constant: 20),
            latestDrive3.heightAnchor.constraint(equalToConstant: 67),
            latestDrive3.widthAnchor.constraint(equalToConstant: (view.frame.width - 48) / 3)
        ]
        
        view.addSubview(latestDrive3)
        NSLayoutConstraint.activate(latestDrive3Constraints)
    }
    
    private func setUpSearchButton() {
        
        searchButton.addTarget(self, action: #selector(goOnSearchDriveScreen), for: .touchUpInside)
        
        let searchButtonConstraints = [
            
            searchButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            searchButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            searchButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ]
        
        view.addSubview(searchButton)
        NSLayoutConstraint.activate(searchButtonConstraints)
    }
    
    @objc private func goOnSearchDriveScreen() {
        presenter.goNext(vc: SearchDriveViewController())
    }
    
    private func setUpFromCardForDriver() {
        
        fromCardForDriver.isHidden = true
        
        let fromCardForDriverConstraints = [
        
            fromCardForDriver.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 30),
            fromCardForDriver.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            fromCardForDriver.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            fromCardForDriver.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        view.addSubview(fromCardForDriver)
        NSLayoutConstraint.activate(fromCardForDriverConstraints)
    }
    
    private func setUpLineView1() {
        
        lineView1.backgroundColor = UIColor(named: "Base5")
        lineView1.isHidden = true
        lineView1.translatesAutoresizingMaskIntoConstraints = false
        
        let lineView1Constraints = [
        
            lineView1.heightAnchor.constraint(equalToConstant: 0.5),
            lineView1.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 41),
            lineView1.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -41),
            lineView1.topAnchor.constraint(equalTo: fromCardForDriver.bottomAnchor, constant: 5)
        ]
        
        view.addSubview(lineView1)
        NSLayoutConstraint.activate(lineView1Constraints)
    }
    
    private func setUpFromAdress1() {
        
        fromAdress1.isHidden = true
        
        let fromAdress1Constraints = [
        
            fromAdress1.topAnchor.constraint(equalTo: lineView1.bottomAnchor, constant: 16),
            fromAdress1.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 41),
            fromAdress1.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -41),
            fromAdress1.heightAnchor.constraint(equalToConstant: 14)
        ]
        
        view.addSubview(fromAdress1)
        NSLayoutConstraint.activate(fromAdress1Constraints)
    }
    
    private func setUpFromAdress2() {
        
        fromAdress2.isHidden = true
        
        let fromAdress2Constraints = [
        
            fromAdress2.topAnchor.constraint(equalTo: fromAdress1.bottomAnchor, constant: 16),
            fromAdress2.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 41),
            fromAdress2.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -41),
            fromAdress2.heightAnchor.constraint(equalToConstant: 14)
        ]
        
        view.addSubview(fromAdress2)
        NSLayoutConstraint.activate(fromAdress2Constraints)
    }
    
    private func setUpFromAdress3() {
        
        fromAdress3.isHidden = true
        
        let fromAdress3Constraints = [
        
            fromAdress3.topAnchor.constraint(equalTo: fromAdress2.bottomAnchor, constant: 16),
            fromAdress3.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 41),
            fromAdress3.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -41),
            fromAdress3.heightAnchor.constraint(equalToConstant: 14)
        ]
        
        view.addSubview(fromAdress3)
        NSLayoutConstraint.activate(fromAdress3Constraints)
    }
    
    private func setUpToCardForDriver() {
        
        toCardForDriver.isHidden = true
        
        let toCardForDriverConstraints = [
        
            toCardForDriver.topAnchor.constraint(equalTo: fromAdress3.bottomAnchor, constant: 30),
            toCardForDriver.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            toCardForDriver.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20),
            toCardForDriver.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        view.addSubview(toCardForDriver)
        NSLayoutConstraint.activate(toCardForDriverConstraints)
    }
    
    private func setUpLineView2() {
        
        lineView2.backgroundColor = UIColor(named: "Base5")
        lineView2.isHidden = true
        lineView2.translatesAutoresizingMaskIntoConstraints = false
        
        let lineView2Constraints = [
        
            lineView2.heightAnchor.constraint(equalToConstant: 0.5),
            lineView2.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 41),
            lineView2.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -41),
            lineView2.topAnchor.constraint(equalTo: toCardForDriver.bottomAnchor, constant: 5)
        ]
        
        view.addSubview(lineView2)
        NSLayoutConstraint.activate(lineView2Constraints)
    }
    
    private func setUpToAdress1() {
        
        toAdress1.isHidden = true
        
        let toAdress1Constraints = [
        
            toAdress1.topAnchor.constraint(equalTo: lineView2.bottomAnchor, constant: 16),
            toAdress1.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 41),
            toAdress1.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -41),
            toAdress1.heightAnchor.constraint(equalToConstant: 14)
        ]
        
        view.addSubview(toAdress1)
        NSLayoutConstraint.activate(toAdress1Constraints)
    }
    
    private func setUpToAdress2() {
        
        toAdress2.isHidden = true
        
        let toAdress2Constraints = [
        
            toAdress2.topAnchor.constraint(equalTo: toAdress1.bottomAnchor, constant: 16),
            toAdress2.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 41),
            toAdress2.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -41),
            toAdress2.heightAnchor.constraint(equalToConstant: 14)
        ]
        
        view.addSubview(toAdress2)
        NSLayoutConstraint.activate(toAdress2Constraints)
    }
    
    private func setUpToAdress3() {
        
        toAdress3.isHidden = true
        
        let toAdress3Constraints = [
        
            toAdress3.topAnchor.constraint(equalTo: toAdress2.bottomAnchor, constant: 16),
            toAdress3.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 41),
            toAdress3.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -41),
            toAdress3.heightAnchor.constraint(equalToConstant: 14)
        ]
        
        view.addSubview(toAdress3)
        NSLayoutConstraint.activate(toAdress3Constraints)
    }
    
    private func setUpNextButton() {
        
        nextButton.isHidden = true
        nextButton.addTarget(self, action: #selector(goOnStartPointScreen), for: .touchUpInside)
        
        let nextButtonConstraints = [
            
            nextButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            nextButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ]
        
        view.addSubview(nextButton)
        NSLayoutConstraint.activate(nextButtonConstraints)
    }
    
    @objc private func goOnStartPointScreen() {
        presenter.goNext(vc: StartPointViewController())
    }
}
