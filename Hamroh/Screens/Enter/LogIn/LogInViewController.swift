//
//  LogInViewController.swift
//  Hamroh
//
//  Created by Peter on 12.04.2024.
//

import Foundation
import UIKit

class LogInViewController: UIViewController {
    
    private let mainTitle = PrimaryTitleK(numberLines: 1, title: "Войти") ?? UILabel()
    private let mailTextField = PrimaryTextFieldK(title: "Ваш Email", height: 52) ?? UITextField()
    private let enterButton = PrimaryButtonK(type: true, title: "Далее", height: 52) ?? UIButton()
    private let anotherEnterlabel = UILabel()
    private let googleButton = UIButton()
    private let appleButton = UIButton()
    private let anotherEnterStack = UIStackView()
    private let hasAccountLabel = UILabel()
    private let registrationButton = UIButton()
    private let registrationStack = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        view.backgroundColor = .white
        
        setUpTitle()
        setUpTextField()
        setUpEnterButton()
        setUpAnotherEnterlabel()
        setUpGoogleButton()
        setUpAppleButton()
        setUpAnotherEnterStack()
        setUpHasAccountLabel()
        setUpRegistrationButton()
        setUpRegistrationStack()
    }
    
    private func setUpTitle() {
        
        let mainTitleConstraints = [
        
            mainTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 56)
        ]
        
        view.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    
    private func setUpTextField() {
        
        let textFieldConstraints = [
        
            mailTextField.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 30),
            mailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            mailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
        ]
        
        view.addSubview(mailTextField)
        NSLayoutConstraint.activate(textFieldConstraints)
    }
    
    private func setUpEnterButton() {
        
        let createButtonConstraints = [
        
            enterButton.topAnchor.constraint(equalTo: mailTextField.bottomAnchor, constant: 20),
            enterButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            enterButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20)
        ]
        
        view.addSubview(enterButton)
        NSLayoutConstraint.activate(createButtonConstraints)
    }
    
    private func setUpAnotherEnterlabel() {
        
        anotherEnterlabel.text = "Войти с помощью:"
        anotherEnterlabel.font = UIFont(name: "SFProRounded-Regular", size: 14)
        anotherEnterlabel.textColor = UIColor(named: "primaryGray")
        anotherEnterlabel.translatesAutoresizingMaskIntoConstraints = false
        
        let anotherEnterlabelConstrints = [
        
            anotherEnterlabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            anotherEnterlabel.topAnchor.constraint(equalTo: enterButton.bottomAnchor, constant: 30)
        ]
        
        view.addSubview(anotherEnterlabel)
        NSLayoutConstraint.activate(anotherEnterlabelConstrints)
    }
    
    private func setUpGoogleButton() {
        
        googleButton.setImage(UIImage(named: "google"), for: .normal)
        googleButton.translatesAutoresizingMaskIntoConstraints = false
        
        let googleButtonConstraints = [
            googleButton.widthAnchor.constraint(equalToConstant: 46),
            googleButton.heightAnchor.constraint(equalToConstant: 46)
        ]
        
        anotherEnterStack.addArrangedSubview(googleButton)
        NSLayoutConstraint.activate(googleButtonConstraints)
    }
    
    private func setUpAppleButton() {
        
        appleButton.setImage(UIImage(named: "apple"), for: .normal)
        appleButton.translatesAutoresizingMaskIntoConstraints = false
        
        let appleButtonConstraints = [
            appleButton.widthAnchor.constraint(equalToConstant: 46),
            appleButton.heightAnchor.constraint(equalToConstant: 46)
        ]
        
        anotherEnterStack.addArrangedSubview(appleButton)
        NSLayoutConstraint.activate(appleButtonConstraints)
    }
    
    private func setUpAnotherEnterStack() {
        
        anotherEnterStack.axis = .horizontal
        anotherEnterStack.alignment = .center
        anotherEnterStack.distribution = .equalSpacing
        anotherEnterStack.translatesAutoresizingMaskIntoConstraints = false
        
        let anotherEnterStackConstraints = [
        
            anotherEnterStack.topAnchor.constraint(equalTo: anotherEnterlabel.bottomAnchor, constant: 20),
            anotherEnterStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            anotherEnterStack.widthAnchor.constraint(equalToConstant: 112)
        ]
        
        view.addSubview(anotherEnterStack)
        NSLayoutConstraint.activate(anotherEnterStackConstraints)
    }
    
    private func setUpHasAccountLabel() {
        
        hasAccountLabel.text = "Нет аккаунта?"
        hasAccountLabel.textColor = UIColor(named: "primaryGray")
        hasAccountLabel.font = UIFont(name: "SFProRounded-Regular", size: 14)
        hasAccountLabel.translatesAutoresizingMaskIntoConstraints = false
        
        registrationStack.addArrangedSubview(hasAccountLabel)
    }
    
    private func setUpRegistrationButton() {
        
        let underlineAttribute = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue]
        
        registrationButton.setAttributedTitle(NSAttributedString(string: "Зарегистрироваться", attributes: underlineAttribute), for: .normal)
        registrationButton.setTitleColor(UIColor(named: "primaryBlack"), for: .normal)
        registrationButton.backgroundColor = .clear
        registrationButton.titleLabel?.font = UIFont(name: "SFProRounded-SemiBold", size: 14)
        registrationButton.translatesAutoresizingMaskIntoConstraints = false
        
        let registrationButtonConstraints = [
        
            registrationButton.widthAnchor.constraint(equalToConstant: 137),
            registrationButton.heightAnchor.constraint(equalToConstant: 17)
        ]
        
        registrationStack.addArrangedSubview(registrationButton)
        NSLayoutConstraint.activate(registrationButtonConstraints)
    }
    
    private func setUpRegistrationStack() {
        
        registrationStack.axis = .horizontal
        registrationStack.alignment = .center
        registrationStack.distribution = .equalSpacing
        registrationStack.translatesAutoresizingMaskIntoConstraints = false
        
        let registrationStackConstraints = [
        
            registrationStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            registrationStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            registrationStack.widthAnchor.constraint(equalToConstant: 234)
        ]
        
        view.addSubview(registrationStack)
        NSLayoutConstraint.activate(registrationStackConstraints)
    }
}
