//
//  LogInPasswordViewController.swift
//  Hamroh
//
//  Created by Peter on 12.04.2024.
//

import Foundation
import UIKit

class LogInPasswordViewController: UIViewController {
    
    private let presenter = LogInPasswordViewPresenter()
    
    private let mainTitle = PrimaryTitleK(numberLines: 1, title: "Войти") ?? UILabel()
    private let passwordTextField = PrimaryTextFieldK(title: "Введите пароль", height: 52) ?? UITextField()
    private let enterButton = PrimaryButtonK(type: true, title: "Войти", height: 52) ?? UIButton()
    private let forgotPasswordButton = UIButton()
    private let anotherEnterLabel = UILabel()
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
        
        setUpBackArrow()
        setUpTitle()
        setUpTextField()
        setUpForgotPasswordButton()
        setUpEnterButton()
        setUpAnotherEnterLabel()
        setUpGoogleButton()
        setUpAppleButton()
        setUpAnotherEnterStack()
        setUpHasAccountLabel()
        setUpRegistrationButton()
        setUpRegistrationStack()
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
            mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0)
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
    
    private func setUpForgotPasswordButton() {
        
        forgotPasswordButton.setTitle("Забыли пароль?", for: .normal)
        forgotPasswordButton.setTitleColor(UIColor(named: "primaryBlack"), for: .normal)
        forgotPasswordButton.backgroundColor = .clear
        forgotPasswordButton.titleLabel?.font = UIFont(name: "SFProRounded-Regular", size: 12)
        forgotPasswordButton.addTarget(self, action: #selector(goOnForgotPasswordScreen), for: .touchUpInside)
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        
        let forgotPasswordButtonConstraints = [
            forgotPasswordButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 8),
            forgotPasswordButton.widthAnchor.constraint(equalToConstant: 86),
            forgotPasswordButton.heightAnchor.constraint(equalToConstant: 14)
        ]
        
        view.addSubview(forgotPasswordButton)
        NSLayoutConstraint.activate(forgotPasswordButtonConstraints)
    }
    
    @objc private func goOnForgotPasswordScreen() {
        presenter.goNextPush(vc: ForgotPasswordViewController())
    }
    
    private func setUpEnterButton() {
        
        enterButton.addTarget(self, action: #selector(goOnMainScreen), for: .touchUpInside)
        
        let createButtonConstraints = [
        
            enterButton.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor, constant: 20),
            enterButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            enterButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16)
        ]
        
        view.addSubview(enterButton)
        NSLayoutConstraint.activate(createButtonConstraints)
    }
    
    @objc private func goOnMainScreen() {
        
        let auth = Auth()
        
        auth.auth(email: auth.getSecret(key: "email") ?? "", password: passwordTextField.text ?? "")
                
        presenter.goNextFullScreen(vc: UINavigationController(rootViewController: TabBarController()))
    }
    
    private func setUpAnotherEnterLabel() {
        
        anotherEnterLabel.text = "Войти с помощью:"
        anotherEnterLabel.font = UIFont(name: "SFProRounded-Regular", size: 14)
        anotherEnterLabel.textColor = UIColor(named: "primaryGray")
        anotherEnterLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let anotherEnterLabelConstrints = [
        
            anotherEnterLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            anotherEnterLabel.topAnchor.constraint(equalTo: enterButton.bottomAnchor, constant: 30)
        ]
        
        view.addSubview(anotherEnterLabel)
        NSLayoutConstraint.activate(anotherEnterLabelConstrints)
    }
    
    private func setUpGoogleButton() {
        
        googleButton.setImage(UIImage(named: "google"), for: .normal)
        googleButton.addTarget(self, action: #selector(enterGoogle), for: .touchUpInside)
        googleButton.translatesAutoresizingMaskIntoConstraints = false
        
        let googleButtonConstraints = [
            
            googleButton.widthAnchor.constraint(equalToConstant: 46),
            googleButton.heightAnchor.constraint(equalToConstant: 46)
        ]
        
        anotherEnterStack.addArrangedSubview(googleButton)
        NSLayoutConstraint.activate(googleButtonConstraints)
    }
    
    @objc private func enterGoogle() {
        alert(message: "Попробуйте позже", title: "Ошибка!")
    }
    
    private func setUpAppleButton() {
        
        appleButton.setImage(UIImage(named: "apple"), for: .normal)
        appleButton.addTarget(self, action: #selector(enterApple), for: .touchUpInside)
        appleButton.translatesAutoresizingMaskIntoConstraints = false
        
        let appleButtonConstraints = [
            
            appleButton.widthAnchor.constraint(equalToConstant: 46),
            appleButton.heightAnchor.constraint(equalToConstant: 46)
        ]
        
        anotherEnterStack.addArrangedSubview(appleButton)
        NSLayoutConstraint.activate(appleButtonConstraints)
    }
    
    @objc private func enterApple() {
        alert(message: "Попробуйте позже", title: "Ошибка!")
    }
    
    private func setUpAnotherEnterStack() {
        
        anotherEnterStack.axis = .horizontal
        anotherEnterStack.alignment = .center
        anotherEnterStack.distribution = .equalSpacing
        anotherEnterStack.translatesAutoresizingMaskIntoConstraints = false
        
        let anotherEnterStackConstraints = [
        
            anotherEnterStack.topAnchor.constraint(equalTo: anotherEnterLabel.bottomAnchor, constant: 20),
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
        registrationButton.addTarget(self, action: #selector(goOnRegisterScreen), for: .touchUpInside)
        registrationButton.translatesAutoresizingMaskIntoConstraints = false
        
        let registrationButtonConstraints = [
        
            registrationButton.widthAnchor.constraint(equalToConstant: 137),
            registrationButton.heightAnchor.constraint(equalToConstant: 17)
        ]
        
        registrationStack.addArrangedSubview(registrationButton)
        NSLayoutConstraint.activate(registrationButtonConstraints)
    }
    
    @objc private func goOnRegisterScreen() {
        presenter.goNextPush(vc: RegisterViewController())
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
