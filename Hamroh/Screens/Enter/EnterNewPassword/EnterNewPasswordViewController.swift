//
//  EnterNewPasswordViewController.swift
//  Hamroh
//
//  Created by Peter on 24.04.2024.
//

import Foundation
import UIKit

class EnterNewPasswordViewController: UIViewController {
    
    private let mainTitle = PrimaryTitleK(numberLines: 2, title: "Введите новый\nпароль") ?? UILabel()
    private let passwordTextField = PrimaryTextFieldK(title: "Новый пароль", height: 52) ?? UITextField()
    private let enterButton = PrimaryButtonK(type: true, title: "Далее", height: 52) ?? UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    func setUp() {
        view.backgroundColor = .white
        
        setUpMainTitle()
        setUpPasswordTextField()
        setUpEnterButton()
    }
    
    private func setUpMainTitle() {
        
        let mainTitleConstraints = [
            
            mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 56),
            mainTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20)
        ]
        
        view.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    private func setUpPasswordTextField() {
        
        let passwordTextFieldConstraints = [
            
            passwordTextField.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 30),
            passwordTextField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            passwordTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20)
        ]
        
        view.addSubview(passwordTextField)
        NSLayoutConstraint.activate(passwordTextFieldConstraints)
    }
    
    private func setUpEnterButton() {
        
        let enterButtonConstraints = [
            
            enterButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            enterButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            enterButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20)
        ]
        
        view.addSubview(enterButton)
        NSLayoutConstraint.activate(enterButtonConstraints)
    }
}
