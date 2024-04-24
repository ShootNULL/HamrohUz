//
//  ForgotPasswordViewController.swift
//  Hamroh
//
//  Created by Peter on 24.04.2024.
//

import Foundation
import UIKit

class ForgotPasswordViewController: UIViewController {
    
    private let mainTitle = PrimaryTitleK(numberLines: 1, title: "Забыли пароль") ?? UILabel()
    private let mailTextField = PrimaryTextFieldK(title: "example@hamroh.com", height: 52) ?? UITextField()
    private let enterButton = PrimaryButtonK(type: true, title: "Далее", height: 52) ?? UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    func setUp() {
        view.backgroundColor = .white
        
        setUpMainTitle()
        setUpMailTextField()
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
    
    private func setUpMailTextField() {
        
        let mailTextFieldConstraints = [
            
            mailTextField.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 30),
            mailTextField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            mailTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20)
        ]
        
        view.addSubview(mailTextField)
        NSLayoutConstraint.activate(mailTextFieldConstraints)
    }
    
    private func setUpEnterButton() {
        
        let enterButtonConstraints = [
            
            enterButton.topAnchor.constraint(equalTo: mailTextField.bottomAnchor, constant: 20),
            enterButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            enterButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20)
        ]
        
        view.addSubview(enterButton)
        NSLayoutConstraint.activate(enterButtonConstraints)
    }
}
