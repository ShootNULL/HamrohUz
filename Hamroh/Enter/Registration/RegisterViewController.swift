//
//  RegisterViewController.swift
//  Hamroh
//
//  Created by Peter on 06.12.2023.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController {
    
    private let mainTitle = UILabel()
    private let mailTextField = UITextField()
    private let checkButton = UIButton()
    private let privacyLabel = UILabel()
    private let createButton = UIButton()
    private let anotherEnterlabel = UILabel()
    private let googleButton = UIButton()
    private let appleButton = UIButton()
    private let anotherEnterStack = UIStackView()
    private let hasAccountLabel = UILabel()
    private let enterButton = UIButton()
    private let enterStack = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        view.backgroundColor = .white
        
        setUpTitle()
        setUpTextField()
        setUpCheckButton()
        setUpPrivacyLabel()
        setUpCreateButton()
        setUpAnotherEnterlabel()
        setUpGoogleButton()
        setUpAppleButton()
        setUpAnotherEnterStack()
        setUpHasAccountLabel()
        setUpEnterButton()
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
        
        mailTextField.attributedPlaceholder = NSAttributedString(string: "Ваш Email", attributes: attributes)
        mailTextField.textColor = .black
        mailTextField.font = .systemFont(ofSize: 16)
        mailTextField.layer.borderWidth = 1
        mailTextField.layer.borderColor = UIColor(named: "borderColor")!.cgColor
        mailTextField.layer.cornerRadius = 10
        mailTextField.leftView = UIView(frame: CGRectMake(0, 0, 16, mailTextField.frame.height))
        mailTextField.leftViewMode = UITextField.ViewMode.always
        mailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let textFieldConstraints = [
        
            mailTextField.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 36),
            mailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            mailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            mailTextField.heightAnchor.constraint(equalToConstant: 56)
        ]
        
        view.addSubview(mailTextField)
        NSLayoutConstraint.activate(textFieldConstraints)
    }
    
    private func setUpCheckButton() {
        
        checkButton.setImage(UIImage(named: "checkEllipse"), for: .normal)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        
        let checkButtonConstraints = [
        
            checkButton.topAnchor.constraint(equalTo: mailTextField.bottomAnchor, constant: 30),
            checkButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            checkButton.heightAnchor.constraint(equalToConstant: 20),
            checkButton.widthAnchor.constraint(equalToConstant: 20)
        ]
        
        view.addSubview(checkButton)
        NSLayoutConstraint.activate(checkButtonConstraints)
    }
    
    private func setUpPrivacyLabel() {
        
        privacyLabel.text = "Я принимаю пользовательское соглашение"
        privacyLabel.font = .systemFont(ofSize: 14)
        privacyLabel.textColor = .black
        privacyLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let privacyLabelConstraints = [
        
            privacyLabel.topAnchor.constraint(equalTo: mailTextField.bottomAnchor, constant: 32),
            privacyLabel.leftAnchor.constraint(equalTo: checkButton.rightAnchor, constant: 12),
            privacyLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20)
        ]
        
        view.addSubview(privacyLabel)
        NSLayoutConstraint.activate(privacyLabelConstraints)
    }
    
    private func setUpCreateButton() {
        
        createButton.setTitle("Создать аккаунт", for: .normal)
        createButton.setTitleColor(.white, for: .normal)
        createButton.backgroundColor = .black
        createButton.titleLabel?.font = .boldSystemFont(ofSize: 16)
        createButton.layer.cornerRadius = 10
        createButton.translatesAutoresizingMaskIntoConstraints = false
        
        let createButtonConstraints = [
        
            createButton.topAnchor.constraint(equalTo: privacyLabel.bottomAnchor, constant: 30),
            createButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            createButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20),
            createButton.heightAnchor.constraint(equalToConstant: 56)
        ]
        
        view.addSubview(createButton)
        NSLayoutConstraint.activate(createButtonConstraints)
    }
    
    private func setUpAnotherEnterlabel() {
        
        anotherEnterlabel.text = "Или войти с помощью:"
        anotherEnterlabel.font = .systemFont(ofSize: 14)
        anotherEnterlabel.textColor = .gray
        anotherEnterlabel.translatesAutoresizingMaskIntoConstraints = false
        
        let anotherEnterlabelConstrints = [
        
            anotherEnterlabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            anotherEnterlabel.topAnchor.constraint(equalTo: createButton.bottomAnchor, constant: 30)
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
    
    private func setUpEnterButton() {
        
        let underlineAttribute = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue]
        let underlineAttributeTitle = NSAttributedString(string: "Войти", attributes: underlineAttribute)
        
        enterButton.setAttributedTitle(underlineAttributeTitle, for: .normal)
        enterButton.setTitleColor(.black, for: .normal)
        enterButton.backgroundColor = .none
        enterButton.titleLabel?.font = .boldSystemFont(ofSize: 14)
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        
        let enterButtonConstraints = [
        
            enterButton.widthAnchor.constraint(equalToConstant: 44),
            enterButton.heightAnchor.constraint(equalToConstant: 18)
        ]
        
        enterStack.addArrangedSubview(enterButton)
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
