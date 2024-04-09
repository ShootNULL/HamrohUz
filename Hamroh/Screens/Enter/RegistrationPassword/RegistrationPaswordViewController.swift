//
//  RegistrationPaswordViewController.swift
//  Hamroh
//
//  Created by Peter on 09.04.2024.
//

import Foundation
import UIKit

class RegistrationPaswordViewController: UIViewController {
    
    private let mainTitle = UILabel()
    private let passwordTextField = UITextField()
    private let enterButton = UIButton()
    private let anotherEnterlabel = UILabel()
    private let googleButton = UIButton()
    private let appleButton = UIButton()
    private let anotherEnterStack = UIStackView()
    private let hasAccountLabel = UILabel()
    private let existingEnterButton = UIButton()
    private let enterStack = UIStackView()
    
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
        setUpEnterStack()
    }
    
    private func setUpTitle() {
        
        mainTitle.text = "Создать учетную запись"
        mainTitle.textColor = .black
        mainTitle.font = .boldSystemFont(ofSize: 32)
        mainTitle.numberOfLines = 2
        mainTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let mainTitleConstraints = [
        
            mainTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 75),
            mainTitle.widthAnchor.constraint(equalToConstant: 244)
        ]
        
        view.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    private func setUpTextField() {
        
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor.gray,
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16)
        ]
        
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Введите пароль", attributes: attributes)
        passwordTextField.textColor = .black
        passwordTextField.font = .systemFont(ofSize: 16)
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor(named: "borderColor")!.cgColor
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.leftView = UIView(frame: CGRectMake(0, 0, 16, passwordTextField.frame.height))
        passwordTextField.leftViewMode = UITextField.ViewMode.always
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let textFieldConstraints = [
        
            passwordTextField.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 36),
            passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 56)
        ]
        
        view.addSubview(passwordTextField)
        NSLayoutConstraint.activate(textFieldConstraints)
    }
    
    private func setUpEnterButton() {
        
        enterButton.setTitle("Войти", for: .normal)
        enterButton.setTitleColor(.white, for: .normal)
        enterButton.backgroundColor = .black
        enterButton.titleLabel?.font = .boldSystemFont(ofSize: 16)
        enterButton.layer.cornerRadius = 10
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        
        let createButtonConstraints = [
        
            enterButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            enterButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            enterButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20),
            enterButton.heightAnchor.constraint(equalToConstant: 56)
        ]
        
        view.addSubview(enterButton)
        NSLayoutConstraint.activate(createButtonConstraints)
    }
    
    private func setUpAnotherEnterlabel() {
        
        anotherEnterlabel.text = "Или войти с помощью:"
        anotherEnterlabel.font = .systemFont(ofSize: 14)
        anotherEnterlabel.textColor = .gray
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
        
        anotherEnterStack.addArrangedSubview(googleButton)
    }
    
    private func setUpAppleButton() {
        
        appleButton.setImage(UIImage(named: "apple"), for: .normal)
        appleButton.translatesAutoresizingMaskIntoConstraints = false
        
        anotherEnterStack.addArrangedSubview(appleButton)
    }
    
    private func setUpAnotherEnterStack() {
        
        anotherEnterStack.axis = .horizontal
        anotherEnterStack.alignment = .center
        anotherEnterStack.distribution = .equalSpacing
        anotherEnterStack.translatesAutoresizingMaskIntoConstraints = false
        
        let anotherEnterStackConstraints = [
        
            anotherEnterStack.topAnchor.constraint(equalTo: anotherEnterlabel.bottomAnchor, constant: 20),
            anotherEnterStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            anotherEnterStack.widthAnchor.constraint(equalToConstant: 96)
        ]
        
        view.addSubview(anotherEnterStack)
        NSLayoutConstraint.activate(anotherEnterStackConstraints)
    }
    
    private func setUpHasAccountLabel() {
        
        hasAccountLabel.text = "Уже есть аккаунт?"
        hasAccountLabel.textColor = .gray
        hasAccountLabel.font = .systemFont(ofSize: 14)
        hasAccountLabel.translatesAutoresizingMaskIntoConstraints = false
        
        enterStack.addArrangedSubview(hasAccountLabel)
    }
    
    private func setUpExistingEnterButton() {
        
        let underlineAttribute = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue]
        let underlineAttributeTitle = NSAttributedString(string: "Войти", attributes: underlineAttribute)
        
        existingEnterButton.setAttributedTitle(underlineAttributeTitle, for: .normal)
        existingEnterButton.setTitleColor(.black, for: .normal)
        existingEnterButton.backgroundColor = .none
        existingEnterButton.titleLabel?.font = .boldSystemFont(ofSize: 14)
        existingEnterButton.translatesAutoresizingMaskIntoConstraints = false
        
        let enterButtonConstraints = [
        
            existingEnterButton.widthAnchor.constraint(equalToConstant: 44),
            existingEnterButton.heightAnchor.constraint(equalToConstant: 18)
        ]
        
        enterStack.addArrangedSubview(existingEnterButton)
        NSLayoutConstraint.activate(enterButtonConstraints)
    }
    
    private func setUpEnterStack() {
        
        enterStack.axis = .horizontal
        enterStack.alignment = .center
        enterStack.distribution = .equalSpacing
        enterStack.translatesAutoresizingMaskIntoConstraints = false
        
        let anotherEnterStackConstraints = [
        
            enterStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            enterStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            enterStack.widthAnchor.constraint(equalToConstant: 174)
        ]
        
        view.addSubview(enterStack)
        NSLayoutConstraint.activate(anotherEnterStackConstraints)
    }
}
