//
//  GetCodeViewController.swift
//  Hamroh
//
//  Created by Peter on 13.04.2024.
//

import Foundation
import UIKit

class GetCodeViewController: UIViewController {
    
    private let mainTitle = PrimaryTitleK(numberLines: 2, title: "Проверьте ваши\nсообщения") ?? UILabel()
    private let basicLabel = UILabel()
    private let exampleMail = UILabel()
    private let mailStack = UIStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        view.backgroundColor = .white
        
        setUpTitle()
        setUpBasicLabel()
        setUpMail()
        setUpMailStack()
    }
    
    private func setUpTitle() {
        
        let mainTitleConstraints = [
        
            mainTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 75),
            mainTitle.widthAnchor.constraint(equalToConstant: 267)
        ]
        
        view.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    private func setUpBasicLabel() {
        
        basicLabel.text = "Мы отправили код на "
        basicLabel.textColor = .gray
        basicLabel.numberOfLines = 1
        basicLabel.font = UIFont(name: "Inter-Regular", size: 16)
        basicLabel.translatesAutoresizingMaskIntoConstraints = false
        
        mailStack.addArrangedSubview(basicLabel)
    }
    
    private func setUpMail() {
        
        exampleMail.text = "example@mail.ru"
        exampleMail.textColor = .black
        exampleMail.numberOfLines = 1
        exampleMail.font = UIFont(name: "Inter-Medium", size: 16)
        exampleMail.translatesAutoresizingMaskIntoConstraints = false
            
        mailStack.addArrangedSubview(exampleMail)
    }
    
    private func setUpMailStack() {
        
        mailStack.axis = .horizontal
        mailStack.alignment = .leading
        mailStack.distribution = .equalSpacing
        mailStack.translatesAutoresizingMaskIntoConstraints = false
        
        let mailStackConstraints = [
            mailStack.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 18),
            mailStack.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            mailStack.widthAnchor.constraint(equalToConstant: 305)
        ]
        
        view.addSubview(mailStack)
        NSLayoutConstraint.activate(mailStackConstraints)
    }
}
