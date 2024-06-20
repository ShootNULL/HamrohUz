//
//  TransportViewController.swift
//  Hamroh
//
//  Created by Peter on 09.06.2024.
//

import Foundation
import UIKit

class TransportViewController: UIViewController {
    
    private let mainTitle = PrimaryTitleK(numberLines: 1, title: "Транспорт") ?? UILabel()
    private let autoTitle = PrimaryTitleK(numberLines: 1, title: "Автомобиль") ?? UILabel()
    private let autoTextField = PrimaryTextFieldK(title: "", height: 46) ?? UITextField()
    private let colorTitle = PrimaryTitleK(numberLines: 1, title: "Цвет") ?? UILabel()
    private let colorTextField = PrimaryTextFieldK(title: "", height: 46) ?? UITextField()
    private let signTitle = PrimaryTitleK(numberLines: 1, title: "Гос. знак") ?? UILabel()
    private let signTextField = PrimaryTextFieldK(title: "", height: 46) ?? UITextField()
    private let checkButton = UIButton()
    private let privacyLabel = UILabel()
    private let createDriveButton = PrimaryButtonK(type: true, title: "Создать поезду", height: 52) ?? UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    private func setUp() {
        
        view.backgroundColor = .white
        
        setUpTitle()
        setUpAutoTitle()
        setUpAutoTextField()
        setUpColorTitle()
        setUpColorTextField()
        setUpSignTitle()
        setUpSignTextField()
        setUpCheckButton()
        setUpPrivacyLabel()
        setUpCreateDriveButton()
    }
    
    
    private func setUpTitle() {
        
        let mainTitleConstraints = [
        
            mainTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ]
        
        view.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    private func setUpAutoTitle() {
        
        autoTitle.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let autoTitleConstraints = [
        
            autoTitle.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 20),
            autoTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(autoTitle)
        NSLayoutConstraint.activate(autoTitleConstraints)
    }
    
    private func setUpAutoTextField() {
        
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor(named: "primaryGray")!,
            NSAttributedString.Key.font: UIFont(name: "SFProRounded-Regular", size: 12)!
        ]
        
        autoTextField.attributedPlaceholder = NSAttributedString(string: "Volkswagen Touareg",attributes: attributes)
        autoTextField.layer.borderColor = UIColor(named: "Base10")!.cgColor
        autoTextField.font = UIFont(name: "SFProRounded-Regular", size: 12)
        
        let autoTextFieldConstraints = [
            
            autoTextField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            autoTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            autoTextField.topAnchor.constraint(equalTo: autoTitle.bottomAnchor, constant: 8)
        ]
        
        view.addSubview(autoTextField)
        NSLayoutConstraint.activate(autoTextFieldConstraints)
    }
    
    private func setUpColorTitle() {
        
        colorTitle.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let colorTitleConstraints = [
            
            colorTitle.topAnchor.constraint(equalTo: autoTextField.bottomAnchor, constant: 20),
            colorTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(colorTitle)
        NSLayoutConstraint.activate(colorTitleConstraints)
    }
    
    private func setUpColorTextField() {
        
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor(named: "primaryGray")!,
            NSAttributedString.Key.font: UIFont(name: "SFProRounded-Regular", size: 12)!
        ]
        
        colorTextField.attributedPlaceholder = NSAttributedString(string: "Чёрный",attributes: attributes)
        colorTextField.layer.borderColor = UIColor(named: "Base10")!.cgColor
        colorTextField.font = UIFont(name: "SFProRounded-Regular", size: 12)
        
        let colorTextFieldConstraints = [
            
            colorTextField.topAnchor.constraint(equalTo: colorTitle.bottomAnchor, constant: 8),
            colorTextField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            colorTextField.widthAnchor.constraint(equalToConstant: (view.frame.width - 42) / 2 )
        ]
        
        view.addSubview(colorTextField)
        NSLayoutConstraint.activate(colorTextFieldConstraints)
    }
    
    private func setUpSignTitle() {
        
        signTitle.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let signTitleConstraints = [
            
            signTitle.topAnchor.constraint(equalTo: autoTextField.bottomAnchor, constant: 20),
            signTitle.leftAnchor.constraint(equalTo: colorTextField.rightAnchor, constant: 10)
        ]
        
        view.addSubview(signTitle)
        NSLayoutConstraint.activate(signTitleConstraints)
    }
    
    private func setUpSignTextField() {
        
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor(named: "primaryGray")!,
            NSAttributedString.Key.font: UIFont(name: "SFProRounded-Regular", size: 12)!
        ]
        
        signTextField.attributedPlaceholder = NSAttributedString(string: "7ААА7777",attributes: attributes)
        signTextField.layer.borderColor = UIColor(named: "Base10")!.cgColor
        signTextField.font = UIFont(name: "SFProRounded-Regular", size: 12)
        
        let colorTextFieldConstraints = [
            
            signTextField.topAnchor.constraint(equalTo: signTitle.bottomAnchor, constant: 8),
            signTextField.leftAnchor.constraint(equalTo: colorTextField.rightAnchor, constant: 10),
            signTextField.widthAnchor.constraint(equalToConstant: (view.frame.width - 42) / 2 )
        ]
        
        view.addSubview(signTextField)
        NSLayoutConstraint.activate(colorTextFieldConstraints)
    }
    
    private func setUpCheckButton() {
        
        checkButton.setImage(UIImage(named: "checkEllipse"), for: .normal)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        
        let checkButtonConstraints = [
        
            checkButton.topAnchor.constraint(equalTo: colorTextField.bottomAnchor, constant: 20),
            checkButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            checkButton.heightAnchor.constraint(equalToConstant: 16),
            checkButton.widthAnchor.constraint(equalToConstant: 16)
        ]
        
        view.addSubview(checkButton)
        NSLayoutConstraint.activate(checkButtonConstraints)
    }
    
    private func setUpPrivacyLabel() {
        
        privacyLabel.text = "Сохранить автомобиль в профиль водителя"
        privacyLabel.font = UIFont(name: "SFProRounded-Regular", size: 12)
        privacyLabel.numberOfLines = 2
        privacyLabel.textColor = UIColor(named: "primaryBlack")
        privacyLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let privacyLabelConstraints = [
        
            privacyLabel.topAnchor.constraint(equalTo: colorTextField.bottomAnchor, constant: 20),
            privacyLabel.leftAnchor.constraint(equalTo: checkButton.rightAnchor, constant: 8),
            privacyLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16)
        ]
        
        view.addSubview(privacyLabel)
        NSLayoutConstraint.activate(privacyLabelConstraints)
    }
    
    private func setUpCreateDriveButton() {
        
        let createDriveButtonConstraints = [
        
            createDriveButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            createDriveButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            createDriveButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ]
        
        view.addSubview(createDriveButton)
        NSLayoutConstraint.activate(createDriveButtonConstraints)
    }
    
}
