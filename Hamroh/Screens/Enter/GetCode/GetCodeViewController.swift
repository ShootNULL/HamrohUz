//
//  GetCodeViewController.swift
//  Hamroh
//
//  Created by Peter on 13.04.2024.
//

import Foundation
import UIKit

class GetCodeViewController: UIViewController {
    
    private let presenter = GetCodeViewPresenter()
    
    private let mainTitle = PrimaryTitleK(numberLines: 2, title: "Проверьте ваши\nсообщения") ?? UILabel()
    private let basicLabel = UILabel()
    private let exampleMail = UILabel()
    private let mailStack = UIStackView()
    private let nextButton = PrimaryButtonK(type: true, title: "Далее", height: 52) ?? UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        view.backgroundColor = .white
        
        setUpBackArrow()
        setUpTitle()
        setUpBasicLabel()
        setUpMail()
        setUpMailStack()
        setUpNextButton()
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
    
    private func setUpBasicLabel() {
        
        basicLabel.text = "Мы отправили код на"
        basicLabel.textColor = UIColor(named: "primaryGray")
        basicLabel.numberOfLines = 1
        basicLabel.font = UIFont(name: "SFProRounded-Regular", size: 16)
        basicLabel.translatesAutoresizingMaskIntoConstraints = false
        
        mailStack.addArrangedSubview(basicLabel)
    }
    
    private func setUpMail() {
        
        exampleMail.text = "example@mail.ru"
        exampleMail.textColor = UIColor(named: "primaryBlack")
        exampleMail.numberOfLines = 1
        exampleMail.font = UIFont(name: "SFProRounded-Medium", size: 16)
        exampleMail.translatesAutoresizingMaskIntoConstraints = false
            
        mailStack.addArrangedSubview(exampleMail)
    }
    
    private func setUpMailStack() {
        
        mailStack.axis = .horizontal
        mailStack.alignment = .leading
        mailStack.distribution = .equalSpacing
        mailStack.translatesAutoresizingMaskIntoConstraints = false
        
        let mailStackConstraints = [
            
            mailStack.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 16),
            mailStack.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            mailStack.widthAnchor.constraint(equalToConstant: 274)
        ]
        
        view.addSubview(mailStack)
        NSLayoutConstraint.activate(mailStackConstraints)
    }
    
    private func setUpNextButton() {
        
        nextButton.addTarget(self, action: #selector(goOnNextScreen), for: .touchUpInside)
        
        let nextButtonConstraints = [
            
            nextButton.topAnchor.constraint(equalTo: mailStack.bottomAnchor, constant: 120),
            nextButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            nextButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16)
        ]
        
        view.addSubview(nextButton)
        NSLayoutConstraint.activate(nextButtonConstraints)
    }
    
    @objc private func goOnNextScreen() {
        presenter.goNext(vc: RegistrationPasswordViewController())
    }
}
