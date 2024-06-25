//
//  ForgotPasswordViewController.swift
//  Hamroh
//
//  Created by Peter on 24.04.2024.
//

import Foundation
import UIKit

class ForgotPasswordViewController: UIViewController {
    
    private let presenter = ForgotPasswordViewPresenter()
    
    private let mainTitle = PrimaryTitleK(numberLines: 1, title: "Забыли пароль") ?? UILabel()
    private let mailTextField = PrimaryTextFieldK(title: "example@hamroh.com", height: 52) ?? UITextField()
    private let enterButton = PrimaryButtonK(type: true, title: "Далее", height: 52) ?? UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    func setUp() {
        view.backgroundColor = .white
        
        setUpBackArrow()
        setUpMainTitle()
        setUpMailTextField()
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
    
    private func setUpMainTitle() {
        
        let mainTitleConstraints = [
            
            mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            mainTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    private func setUpMailTextField() {
        
        let mailTextFieldConstraints = [
            
            mailTextField.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 30),
            mailTextField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            mailTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16)
        ]
        
        view.addSubview(mailTextField)
        NSLayoutConstraint.activate(mailTextFieldConstraints)
    }
    
    private func setUpEnterButton() {
        
        enterButton.addTarget(self, action: #selector(goOnEnterNewPasswordScreen), for: .touchUpInside)
        
        let enterButtonConstraints = [
            
            enterButton.topAnchor.constraint(equalTo: mailTextField.bottomAnchor, constant: 20),
            enterButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            enterButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16)
        ]
        
        view.addSubview(enterButton)
        NSLayoutConstraint.activate(enterButtonConstraints)
    }
    
    @objc private func goOnEnterNewPasswordScreen() {
        presenter.goNext(vc: EnterNewPasswordViewController())
    }
}
