//
//  contactInfoViewController.swift
//  Hamroh
//
//  Created by Peter on 19.06.2024.
//

import Foundation
import UIKit

class ContactInfoViewController: UIViewController {
    
    private var checkActive = false
    private let profileCard = PrimaryProfileCardK(photo: "photo", name: "Николай Жидков", shield: "safeShield", sub: "Надежный аккаунт") ?? UIView()
    private let mainView = UIView()
    private let name = PrimaryTitleK(numberLines: 1, title: "Имя") ?? UILabel()
    private let nameTexField = PrimaryTextFieldK(title: "Ваше имя", height: 52) ?? UITextField()
    private let serName = PrimaryTitleK(numberLines: 1, title: "Фамилия") ?? UILabel()
    private let serNameTexField = PrimaryTextFieldK(title: "Ваша фамилия", height: 52) ?? UITextField()
    private let date = PrimaryTitleK(numberLines: 1, title: "Дата рождения") ?? UILabel()
    private let dateTexField = PrimaryTextFieldK(title: "xx.xx.xxxx", height: 52) ?? UITextField()
    private let number = PrimaryTitleK(numberLines: 1, title: "Номер телефона") ?? UILabel()
    private let numberTexField = PrimaryTextFieldK(title: "+7**********", height: 52) ?? UITextField()
    private let checkButton = UIButton()
    private let privacyLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        
        view.backgroundColor = UIColor(named: "Base5")
        
        setUpNavigation()
        setUpProfileCard()
        setUpMainView()
        setUpNameTitle()
        setUpNameTextField()
        setUpSerNameTitle()
        setUpSerNameTextField()
        setUpDateTitle()
        setUpDateTextField()
        setUpNumberTitle()
        setUpNumberTextField()
        setUpCheckButton()
        setUpPrivacyLabel()
    }
    
    private func setUpNavigation() {
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: "primaryBlack")!,
                              NSAttributedString.Key.font: UIFont(name: "SFProRounded-Medium", size: 16)!]
        self.navigationItem.title = "Контактная информация"
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        let backButtonImage = UIImage(named: "arrow.left")
        let customBackButton = UIBarButtonItem(image: backButtonImage, style: .plain, target: self, action: #selector(goBack))
        navigationItem.leftBarButtonItem = customBackButton
        navigationController?.navigationBar.tintColor = .black
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    
    private func setUpProfileCard() {
        
        let profileConstraints = [
        
            profileCard.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            profileCard.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            profileCard.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            profileCard.heightAnchor.constraint(equalToConstant: 88)
        ]
        
        view.addSubview(profileCard)
        NSLayoutConstraint.activate(profileConstraints)
    }
    
    private func setUpMainView() {
        
        mainView.backgroundColor = .white
        mainView.layer.cornerRadius = 12
        mainView.layer.cornerCurve = .continuous
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        let mainViewConstraints = [
        
            mainView.topAnchor.constraint(equalTo: profileCard.bottomAnchor, constant: 20),
            mainView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            mainView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            mainView.heightAnchor.constraint(equalToConstant: 432)
        ]
        
        view.addSubview(mainView)
        NSLayoutConstraint.activate(mainViewConstraints)
    }
    
    private func setUpNameTitle() {
        
        name.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let nameConstraints = [
        
            name.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 16),
            name.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16)
        ]
        
        view.addSubview(name)
        NSLayoutConstraint.activate(nameConstraints)
    }
    
    private func setUpNameTextField() {
        
        let nameTexFieldConstraints = [
            
            nameTexField.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16),
            nameTexField.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -16),
            nameTexField.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 8)
        ]
        
        view.addSubview(nameTexField)
        NSLayoutConstraint.activate(nameTexFieldConstraints)
    }
    
    private func setUpSerNameTitle() {
        
        serName.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let serNameConstraints = [
        
            serName.topAnchor.constraint(equalTo: nameTexField.bottomAnchor, constant: 16),
            serName.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16)
        ]
        
        view.addSubview(serName)
        NSLayoutConstraint.activate(serNameConstraints)
    }
    
    private func setUpSerNameTextField() {
        
        let serNameTexFieldConstraints = [
            
            serNameTexField.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16),
            serNameTexField.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -16),
            serNameTexField.topAnchor.constraint(equalTo: serName.bottomAnchor, constant: 8)
        ]
        
        view.addSubview(serNameTexField)
        NSLayoutConstraint.activate(serNameTexFieldConstraints)
    }
    
    private func setUpDateTitle() {
        
        date.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let dateConstraints = [
        
            date.topAnchor.constraint(equalTo: serNameTexField.bottomAnchor, constant: 16),
            date.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16)
        ]
        
        view.addSubview(date)
        NSLayoutConstraint.activate(dateConstraints)
    }
    
    private func setUpDateTextField() {
        
        let dateTexFieldConstraints = [
            
            dateTexField.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16),
            dateTexField.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -16),
            dateTexField.topAnchor.constraint(equalTo: date.bottomAnchor, constant: 8)
        ]
        
        view.addSubview(dateTexField)
        NSLayoutConstraint.activate(dateTexFieldConstraints)
    }
    
    private func setUpNumberTitle() {
        
        number.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let numberConstraints = [
        
            number.topAnchor.constraint(equalTo: dateTexField.bottomAnchor, constant: 16),
            number.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16)
        ]
        
        view.addSubview(number)
        NSLayoutConstraint.activate(numberConstraints)
    }
    
    private func setUpNumberTextField() {
        
        let numberTexFieldConstraints = [
            
            numberTexField.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16),
            numberTexField.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -16),
            numberTexField.topAnchor.constraint(equalTo: number.bottomAnchor, constant: 8)
        ]
        
        view.addSubview(numberTexField)
        NSLayoutConstraint.activate(numberTexFieldConstraints)
    }
    
    private func setUpCheckButton() {
        
        checkButton.setImage(UIImage(named: "check2"), for: .normal)
        checkButton.addTarget(self, action: #selector(changeCheck), for: .touchUpInside)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        
        let checkButtonConstraints = [
        
            checkButton.topAnchor.constraint(equalTo: numberTexField.bottomAnchor, constant: 16),
            checkButton.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16),
            checkButton.heightAnchor.constraint(equalToConstant: 16),
            checkButton.widthAnchor.constraint(equalToConstant: 16)
        ]
        
        mainView.addSubview(checkButton)
        NSLayoutConstraint.activate(checkButtonConstraints)
    }
    
    @objc private func changeCheck() {
        
        if checkActive {
            checkButton.setImage(UIImage(named: "check2"), for: .normal)
        } else {
            checkButton.setImage(UIImage(named: "checkOn"), for: .normal)
        }
        checkActive = !checkActive
    }
    
    private func setUpPrivacyLabel() {
        
        privacyLabel.text = "Я - человек с ограниченными возможностями (инвалид\n1, 2, 3 группы)"
        privacyLabel.font = UIFont(name: "SFProRounded-Regular", size: 12)
        privacyLabel.numberOfLines = 2
        privacyLabel.textColor = UIColor(named: "primaryBlack")
        privacyLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let privacyLabelConstraints = [
        
            privacyLabel.topAnchor.constraint(equalTo: numberTexField.bottomAnchor, constant: 16),
            privacyLabel.leftAnchor.constraint(equalTo: checkButton.rightAnchor, constant: 8),
            privacyLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20)
        ]
        
        mainView.addSubview(privacyLabel)
        NSLayoutConstraint.activate(privacyLabelConstraints)
    }
}
