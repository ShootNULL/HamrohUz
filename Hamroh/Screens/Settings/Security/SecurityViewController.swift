//
//  SecurityViewController.swift
//  Hamroh
//
//  Created by Peter on 19.06.2024.
//

import Foundation
import UIKit

class SecurityViewController: UIViewController {
    
    private let profileCard = PrimaryProfileCardK(photo: "photo", name: "Николай Жидков", shield: "safeShield", sub: "Надежный аккаунт") ?? UIView()
    private let mainView = UIView()
    private let email = PrimaryTitleK(numberLines: 1, title: "E-mail") ?? UILabel()
    private let emailTexField = PrimaryTextFieldK(title: "valentin2202@pochta.com", height: 52) ?? UITextField()
    private let password = PrimaryTitleK(numberLines: 1, title: "Пароль") ?? UILabel()
    private let passwordTexField = PrimaryTextFieldK(title: "*****", height: 52) ?? UITextField()
    private let visibleButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        
        view.backgroundColor = UIColor(named: "Base5")
        
        setUpNavigation()
        setUpProfileCard()
        setUpMainView()
        setUpEmailTitle()
        setUpEmailTextField()
        setUpPasswordTitle()
        setUpPassportTextField()
        setUpVisibleButton()
    }
    
    private func setUpNavigation() {
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: "primaryBlack")!,
                              NSAttributedString.Key.font: UIFont(name: "SFProRounded-Medium", size: 16)!]
        self.navigationItem.title = "Безопасность"
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
            mainView.heightAnchor.constraint(equalToConstant: 202)
        ]
        
        view.addSubview(mainView)
        NSLayoutConstraint.activate(mainViewConstraints)
    }
    
    private func setUpEmailTitle() {
        
        email.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let emailConstraints = [
        
            email.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 16),
            email.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16)
        ]
        
        view.addSubview(email)
        NSLayoutConstraint.activate(emailConstraints)
    }
    
    private func setUpEmailTextField() {
        
        let emailTexFieldConstraints = [
            
            emailTexField.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16),
            emailTexField.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -16),
            emailTexField.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 8)
        ]
        
        view.addSubview(emailTexField)
        NSLayoutConstraint.activate(emailTexFieldConstraints)
    }
    
    private func setUpPasswordTitle() {
        
        password.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let passwordConstraints = [
        
            password.topAnchor.constraint(equalTo: emailTexField.bottomAnchor, constant: 16),
            password.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16)
        ]
        
        view.addSubview(password)
        NSLayoutConstraint.activate(passwordConstraints)
    }
    
    private func setUpPassportTextField() {
        
        passwordTexField.isSecureTextEntry = true
        
        let passwordTexFieldConstraints = [
            
            passwordTexField.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16),
            passwordTexField.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -16),
            passwordTexField.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 8)
        ]
        
        view.addSubview(passwordTexField)
        NSLayoutConstraint.activate(passwordTexFieldConstraints)
    }
    
    private func setUpVisibleButton() {
        
        visibleButton.tintColor = .lightGray
        visibleButton.addTarget(self, action: #selector(hidePass), for: .touchUpInside)
        visibleButton.backgroundColor = .clear
        visibleButton.setTitle("Показать", for: .normal)
        visibleButton.setTitleColor(UIColor(named: "primaryGray"), for: .normal)
        visibleButton.titleLabel?.font = UIFont(name: "SFProRounded-Regular", size: 12)
        visibleButton.translatesAutoresizingMaskIntoConstraints = false
        
        let visibleButtonConstraints = [
        
            visibleButton.centerYAnchor.constraint(equalTo: passwordTexField.centerYAnchor),
            visibleButton.rightAnchor.constraint(equalTo: passwordTexField.rightAnchor, constant: -16)
        ]
        
        view.addSubview(visibleButton)
        NSLayoutConstraint.activate(visibleButtonConstraints)
    }
    
    @objc private func hidePass() {
        
        if (passwordTexField.isSecureTextEntry) && (visibleButton.titleLabel?.text == "Показать") {
            
            passwordTexField.isSecureTextEntry = false
            visibleButton.setTitle("Скрыть", for: .normal)
        } else {
            passwordTexField.isSecureTextEntry = true
            visibleButton.setTitle("Показать", for: .normal)
        }
    }
}
