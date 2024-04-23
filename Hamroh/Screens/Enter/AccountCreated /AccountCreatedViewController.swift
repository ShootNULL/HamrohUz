//
//  AccountCreatedViewController.swift
//  Hamroh
//
//  Created by Peter on 16.04.2024.
//

import Foundation
import UIKit

class AccountCreatedViewController: UIViewController {
    
    private let image = UIImageView()
    private let mainTitle = PrimaryTitleK(numberLines: 1, title: "Аккаунт создан") ?? UILabel()
    private let basicLabel = UILabel()
    private let enterButton = PrimaryButtonK(type: true, title: "Войти", height: 56) ?? UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        view.backgroundColor = .white
        
        setUpBasicLabel()
        setUpTitle()
        setUpImage()
        setUpEnterButton()
    }
    
    private func setUpImage() {
        
        image.image = UIImage(named: "accountCreated")
        image.translatesAutoresizingMaskIntoConstraints = false
        
        let imageConstraints = [
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.bottomAnchor.constraint(equalTo: mainTitle.topAnchor, constant: -40),
            image.widthAnchor.constraint(equalToConstant: 90),
            image.heightAnchor.constraint(equalToConstant: 84)
        ]
        
        view.addSubview(image)
        NSLayoutConstraint.activate(imageConstraints)
    }
    
    private func setUpTitle() {
        
        mainTitle.textAlignment = .center
        
        let mainTitleConstraints = [
            mainTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            mainTitle.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            mainTitle.bottomAnchor.constraint(equalTo: basicLabel.topAnchor, constant: -17)
        ]
        
        view.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    private func setUpBasicLabel() {
        
        basicLabel.text = "Теперь вы можете пользоваться\nнашим приложением! :)"
        basicLabel.textColor = .gray
        basicLabel.textAlignment = .center
        basicLabel.numberOfLines = 2
        basicLabel.font = UIFont(name: "Inter-Regular", size: 16)
        basicLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let basicLabelConstraints = [
//            basicLabel.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 17),
            basicLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            basicLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ]
        
        view.addSubview(basicLabel)
        NSLayoutConstraint.activate(basicLabelConstraints)
    }
    
    private func setUpEnterButton() {
    
        let enterButtonConstraints = [
            enterButton.topAnchor.constraint(equalTo: basicLabel.bottomAnchor, constant: 30),
            enterButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            enterButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20)
        ]
    
        view.addSubview(enterButton)
        NSLayoutConstraint.activate(enterButtonConstraints)
    }
}
