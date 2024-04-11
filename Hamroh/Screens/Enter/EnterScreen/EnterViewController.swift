//
//  EnterViewController.swift
//  Hamroh
//
//  Created by Евгений Парфененков on 04.12.2023.
//

import Foundation
import UIKit

class EnterViewController: UIViewController {
    
    private let logo = UIImageView()
    private let mainTitle = PrimaryTitleK(numberLines: 1, title: "Создайте аккаунт") ?? UILabel()
    private let basicLabel = UILabel()
    private let enterButton = PrimaryButtonK(type: true, title: "Войти") ?? UIButton()
    private let registerButton = PrimaryButtonK(type: false, title: "Зарегестрироваться") ?? UIButton()
    private let mainImg = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        self.view.backgroundColor = .white
        
        setUpLogo()
        setUpMainTitle()
        setUpBasicLabel()
        setUpEnterButton()
        setUpRegisterButton()
        setUpMainImg()
    }
    
    private func setUpLogo() {
        
        logo.image = UIImage(named: "Logo")
        logo.translatesAutoresizingMaskIntoConstraints = false
        
        let logoConstraints = [
        
            logo.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            logo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            logo.widthAnchor.constraint(equalToConstant: 100),
            logo.heightAnchor.constraint(equalToConstant: 100)
        ]
        
        view.addSubview(logo)
        NSLayoutConstraint.activate(logoConstraints)
    }
    
    private func setUpMainTitle() {

        mainTitle.textAlignment = .center

        let mainTitleConstraints = [
        
            mainTitle.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 240),
            mainTitle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 57),
            mainTitle.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -57)
        ]
        
        view.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    private func setUpBasicLabel() {
        
        basicLabel.text = "И пользуйтесь всеми возможностями поездок"
        basicLabel.textColor = .gray
        basicLabel.textAlignment = .center
        basicLabel.numberOfLines = 2
        basicLabel.font = .systemFont(ofSize: 17)
        basicLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let basicLabelConstraints = [
            
            basicLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            basicLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 285),
            basicLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 94),
            basicLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -94)
        ]
        
        view.addSubview(basicLabel)
        NSLayoutConstraint.activate(basicLabelConstraints)
    }
    
    private func setUpEnterButton() {
        
        let enterButtonConstraints = [
        
            enterButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 370),
            enterButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            enterButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            enterButton.heightAnchor.constraint(equalToConstant: 56)
        ]
        
        view.addSubview(enterButton)
        NSLayoutConstraint.activate(enterButtonConstraints)
    }
    
    private func setUpRegisterButton() {
        
        let registerButtonConstraints = [
        
            registerButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 440),
            registerButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            registerButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            registerButton.heightAnchor.constraint(equalToConstant: 56)
        ]
        
        view.addSubview(registerButton)
        NSLayoutConstraint.activate(registerButtonConstraints)
        
    }
    
    private func setUpMainImg() {
        
        mainImg.image = UIImage(named: "MainImg")
        mainImg.translatesAutoresizingMaskIntoConstraints = false
        
        let mainImgConstraints = [
        
            mainImg.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainImg.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            mainImg.widthAnchor.constraint(equalToConstant: 430),
            mainImg.heightAnchor.constraint(equalToConstant: 331)
        ]
        
        view.addSubview(mainImg)
        NSLayoutConstraint.activate(mainImgConstraints)
    }
}
