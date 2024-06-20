//
//  RegistrationPaswordViewController.swift
//  Hamroh
//
//  Created by Peter on 09.04.2024.
//

import Foundation
import UIKit

class RegistrationPasswordViewController: UIViewController {
    
    private let presenter = RegisterPasswordViewPresenter()
    
    private let mainTitle = PrimaryTitleK(numberLines: 2, title: "Создать учетную\nзапись") ?? UILabel()
    private let passwordTextField = PrimaryTextFieldK(title: "Введите пароль", height: 52) ?? UITextField()
    private let enterButton = PrimaryButtonK(type: true, title: "Создать аккаунт", height: 52) ?? UIButton()
    private let anotherEnterlabel = UILabel()
    private let googleButton = UIButton()
    private let appleButton = UIButton()
    private let anotherEnterStack = UIStackView()
    private let hasAccountLabel = UILabel()
    private let existingEnterButton = UIButton()
    private let existingEnterStack = UIStackView()
    
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
        setUpExistingEnterButton()
        setUpExistingEnterStack()
        setUpBackArrow()
    }
    
    private func setUpBackArrow() {
        
        let backButtonImage = UIImage(named: "arrow.left")
        let customBackButton = UIBarButtonItem(image: backButtonImage, style: .plain, target: self, action: #selector(goBack))
        navigationItem.leftBarButtonItem = customBackButton
        navigationController?.navigationBar.tintColor = .black
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    
    private func setUpTitle() {
        
        let mainTitleConstraints = [
        
            mainTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ]
        
        view.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    
    private func setUpTextField() {
        
        let textFieldConstraints = [
        
            passwordTextField.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 30),
            passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16)
        ]
        
        view.addSubview(passwordTextField)
        NSLayoutConstraint.activate(textFieldConstraints)
    }
    
    private func setUpEnterButton() {
        
        let createButtonConstraints = [
        
            enterButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            enterButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            enterButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16)
        ]
        
        enterButton.addTarget(self, action: #selector(goOnAccuntCreatedScreen), for: .touchUpInside)
        
        view.addSubview(enterButton)
        NSLayoutConstraint.activate(createButtonConstraints)
    }
    
    private func setUpAnotherEnterlabel() {
        
        anotherEnterlabel.text = "Или войти с помощью:"
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
        
        hasAccountLabel.text = "Уже есть аккаунт?"
        hasAccountLabel.textColor = UIColor(named: "primaryGray")
        hasAccountLabel.font = UIFont(name: "SFProRounded-Regular", size: 14)
        hasAccountLabel.translatesAutoresizingMaskIntoConstraints = false
        
        existingEnterStack.addArrangedSubview(hasAccountLabel)
    }
    
    private func setUpExistingEnterButton() {
        
        let underlineAttribute = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue]
        
        existingEnterButton.setAttributedTitle(NSAttributedString(string: "Войти", attributes: underlineAttribute), for: .normal)
        existingEnterButton.setTitleColor(UIColor(named: "primaryBlack"), for: .normal)
        existingEnterButton.backgroundColor = .clear
        existingEnterButton.titleLabel?.font = UIFont(name: "SFProRounded-SemiBold", size: 14)
        existingEnterButton.translatesAutoresizingMaskIntoConstraints = false
        
        let enterButtonConstraints = [
        
            existingEnterButton.widthAnchor.constraint(equalToConstant: 40),
            existingEnterButton.heightAnchor.constraint(equalToConstant: 17)
        ]
        
        existingEnterButton.addTarget(self, action: #selector(goOnLogInScreen), for: .touchUpInside)
        
        existingEnterStack.addArrangedSubview(existingEnterButton)
        NSLayoutConstraint.activate(enterButtonConstraints)
    }
    
    private func setUpExistingEnterStack() {
        
        existingEnterStack.axis = .horizontal
        existingEnterStack.alignment = .center
        existingEnterStack.distribution = .equalSpacing
        existingEnterStack.translatesAutoresizingMaskIntoConstraints = false
        
        let anotherEnterStackConstraints = [
        
            existingEnterStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            existingEnterStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            existingEnterStack.widthAnchor.constraint(equalToConstant: 162)
        ]
        
        view.addSubview(existingEnterStack)
        NSLayoutConstraint.activate(anotherEnterStackConstraints)
    }
    
    @objc private func goOnAccuntCreatedScreen() {
        presenter.goNext(vc: AccountCreatedViewController())
    }
    
    @objc private func goOnLogInScreen() {
        presenter.goNext(vc: LogInViewController())
    }
}
