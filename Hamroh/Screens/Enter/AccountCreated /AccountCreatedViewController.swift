//
//  AccountCreatedViewController.swift
//  Hamroh
//
//  Created by Peter on 16.04.2024.
//

import Foundation
import UIKit

class AccountCreatedViewController: UIViewController {
    
    private let presenter = AccountCreatedViewPresenter()
    
    private let image = UIImageView()
    private let mainTitle = PrimaryTitleK(numberLines: 1, title: "Аккаунт создан") ?? UILabel()
    private let basicLabel = UILabel()
    private let enterButton = PrimaryButtonK(type: true, title: "Войти", height: 52) ?? UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        view.backgroundColor = .white
        
        setUpBackArrow()
        setUpBasicLabel()
        setUpTitle()
        setUpImage()
        setUpEnterButton()
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
            mainTitle.bottomAnchor.constraint(equalTo: basicLabel.topAnchor, constant: -16)
        ]
        
        view.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    private func setUpBasicLabel() {
        
        basicLabel.text = "Теперь вы можете пользоваться\nприложением!"
        basicLabel.textColor = UIColor(named: "primaryGray")
        basicLabel.textAlignment = .center
        basicLabel.numberOfLines = 2
        basicLabel.font = UIFont(name: "SFProRounded-Regular", size: 16)
        basicLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let basicLabelConstraints = [
            
            basicLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            basicLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ]
        
        view.addSubview(basicLabel)
        NSLayoutConstraint.activate(basicLabelConstraints)
    }
    
    private func setUpEnterButton() {
        
        enterButton.addTarget(self, action: #selector(goOnMainScreen), for: .touchUpInside)
    
        let enterButtonConstraints = [
            
            enterButton.topAnchor.constraint(equalTo: basicLabel.bottomAnchor, constant: 40),
            enterButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            enterButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16)
        ]
    
        view.addSubview(enterButton)
        NSLayoutConstraint.activate(enterButtonConstraints)
    }
    
    @objc private func goOnMainScreen() {
        presenter.goNext(vc: UINavigationController(rootViewController: TabBarController()))
    }
}
