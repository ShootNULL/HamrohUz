//
//  RegisterViewController.swift
//  Hamroh
//
//  Created by Peter on 06.12.2023.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController {
    
    private let presenter = RegisterViewPresenter()
    
    private var checkActive = false
    private let mainTitle = PrimaryTitleK(numberLines: 2, title: "Создать учетную\nзапись") ?? UILabel()
    private let mailTextField = PrimaryTextFieldK(title: "Ваш Email", height: 52) ?? UITextField()
    private let checkButton = UIButton()
    private let privacyLabel = UILabel()
    private let createButton = PrimaryButtonK(type: true, title: "Далее", height: 52) ?? UIButton()
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
        setUpCheckButton()
        setUpPrivacyLabel()
        setUpCreateButton()
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
        
            mailTextField.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 30),
            mailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            mailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16)
        ]
        
        view.addSubview(mailTextField)
        NSLayoutConstraint.activate(textFieldConstraints)
    }
    
    private func setUpCheckButton() {
        
        checkButton.setImage(UIImage(named: "check2") ?? UIImage(), for: .normal)
        checkButton.addTarget(self, action: #selector(changeCheck), for: .touchUpInside)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        
        let checkButtonConstraints = [
        
            checkButton.topAnchor.constraint(equalTo: mailTextField.bottomAnchor, constant: 20),
            checkButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            checkButton.heightAnchor.constraint(equalToConstant: 16),
            checkButton.widthAnchor.constraint(equalToConstant: 16)
        ]
        
        view.addSubview(checkButton)
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
        
        privacyLabel.text = "Я согласен на обработку данных и ознакомлен\nс пользовательским соглашением"
        privacyLabel.font = UIFont(name: "SFProRounded-Regular", size: 12)
        privacyLabel.numberOfLines = 2
        privacyLabel.textColor = UIColor(named: "primaryBlack")
        privacyLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let privacyLabelConstraints = [
        
            privacyLabel.topAnchor.constraint(equalTo: mailTextField.bottomAnchor, constant: 20),
            privacyLabel.leftAnchor.constraint(equalTo: checkButton.rightAnchor, constant: 8),
            privacyLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20)
        ]
        
        view.addSubview(privacyLabel)
        NSLayoutConstraint.activate(privacyLabelConstraints)
    }
    
    private func setUpCreateButton() {
        
        let createButtonConstraints = [
        
            createButton.topAnchor.constraint(equalTo: privacyLabel.bottomAnchor, constant: 30),
            createButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            createButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16)
        ]
        
        createButton.addTarget(self, action: #selector(goOnGetCodeScreen), for: .touchUpInside)
        
        view.addSubview(createButton)
        NSLayoutConstraint.activate(createButtonConstraints)
    }
    
    private func setUpAnotherEnterlabel() {
        
        anotherEnterlabel.text = "Или войти с помощью:"
        anotherEnterlabel.font = UIFont(name: "SFProRounded-Regular", size: 14)
        anotherEnterlabel.textColor = UIColor(named: "primaryGray")
        anotherEnterlabel.translatesAutoresizingMaskIntoConstraints = false
        
        let anotherEnterlabelConstrints = [
        
            anotherEnterlabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            anotherEnterlabel.topAnchor.constraint(equalTo: createButton.bottomAnchor, constant: 30)
        ]
        
        view.addSubview(anotherEnterlabel)
        NSLayoutConstraint.activate(anotherEnterlabelConstrints)
    }
    
    private func setUpGoogleButton() {
        
        googleButton.setImage(UIImage(named: "google") ?? UIImage(), for: .normal)
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
        existingEnterButton.titleLabel?.font = UIFont(name: "SFProRounded-Semibold", size: 14)
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
    
    @objc private func goOnLogInScreen() {
        presenter.goNext(vc: LogInViewController())
    }
    
    @objc private func goOnGetCodeScreen() {
        presenter.goNext(vc: GetCodeViewController())
    }
}
