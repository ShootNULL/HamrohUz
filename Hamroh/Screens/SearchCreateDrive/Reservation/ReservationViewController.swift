//
//  ReservationViewController.swift
//  Hamroh
//
//  Created by Peter on 10.06.2024.
//

import Foundation
import UIKit

class ReservationViewController: UIViewController {
    
    private let name = PrimaryTitleK(numberLines: 1, title: "Имя") ?? UILabel()
    private let nameTexField = PrimaryTextFieldK(title: "Ваше имя", height: 52) ?? UITextField()
    private let serName = PrimaryTitleK(numberLines: 1, title: "Фамилия") ?? UILabel()
    private let serNameTexField = PrimaryTextFieldK(title: "Ваша фамилия", height: 52) ?? UITextField()
    private let date = PrimaryTitleK(numberLines: 1, title: "Дата рождения") ?? UILabel()
    private let dateTexField = PrimaryTextFieldK(title: "xx.xx.xxxx", height: 52) ?? UITextField()
    private let number = PrimaryTitleK(numberLines: 1, title: "Номер телефона") ?? UILabel()
    private let numberTexField = PrimaryTextFieldK(title: "+7**********", height: 52) ?? UITextField()
    private let passport = PrimaryTitleK(numberLines: 1, title: "Серия и номер паспорта") ?? UILabel()
    private let passportTexField = PrimaryTextFieldK(title: "**** ******", height: 52) ?? UITextField()
    private let visibleButton = UIButton()
    private let addPassengerButton = UIButton()
    private let confirmButton = PrimaryButtonK(type: true, title: "Подтвердить", height: 52) ?? UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        
        view.backgroundColor = .white
        
        setUpNameTitle()
        setUpNameTextField()
        setUpSerNameTitle()
        setUpSerNameTextField()
        setUpDateTitle()
        setUpDateTextField()
        setUpNumberTitle()
        setUpNumberTextField()
        setUpPassportTitle()
        setUpPassportTextField()
        setUpVisibleButton()
        setUpAddPassengersButton()
        setUpConfirmButton()
    }
    
    private func setUpNameTitle() {
        
        name.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let nameConstraints = [
        
            name.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            name.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(name)
        NSLayoutConstraint.activate(nameConstraints)
    }
    
    private func setUpNameTextField() {
        
        let nameTexFieldConstraints = [
            
            nameTexField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            nameTexField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            nameTexField.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 8)
        ]
        
        view.addSubview(nameTexField)
        NSLayoutConstraint.activate(nameTexFieldConstraints)
    }
    
    private func setUpSerNameTitle() {
        
        serName.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let serNameConstraints = [
        
            serName.topAnchor.constraint(equalTo: nameTexField.bottomAnchor, constant: 16),
            serName.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(serName)
        NSLayoutConstraint.activate(serNameConstraints)
    }
    
    private func setUpSerNameTextField() {
        
        let serNameTexFieldConstraints = [
            
            serNameTexField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            serNameTexField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            serNameTexField.topAnchor.constraint(equalTo: serName.bottomAnchor, constant: 8)
        ]
        
        view.addSubview(serNameTexField)
        NSLayoutConstraint.activate(serNameTexFieldConstraints)
    }
    
    private func setUpDateTitle() {
        
        date.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let dateConstraints = [
        
            date.topAnchor.constraint(equalTo: serNameTexField.bottomAnchor, constant: 16),
            date.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(date)
        NSLayoutConstraint.activate(dateConstraints)
    }
    
    private func setUpDateTextField() {
        
        let dateTexFieldConstraints = [
            
            dateTexField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            dateTexField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            dateTexField.topAnchor.constraint(equalTo: date.bottomAnchor, constant: 8)
        ]
        
        view.addSubview(dateTexField)
        NSLayoutConstraint.activate(dateTexFieldConstraints)
    }
    
    private func setUpNumberTitle() {
        
        number.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let numberConstraints = [
        
            number.topAnchor.constraint(equalTo: dateTexField.bottomAnchor, constant: 16),
            number.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(number)
        NSLayoutConstraint.activate(numberConstraints)
    }
    
    private func setUpNumberTextField() {
        
        let numberTexFieldConstraints = [
            
            numberTexField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            numberTexField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            numberTexField.topAnchor.constraint(equalTo: number.bottomAnchor, constant: 8)
        ]
        
        view.addSubview(numberTexField)
        NSLayoutConstraint.activate(numberTexFieldConstraints)
    }
    
    private func setUpPassportTitle() {
        
        passport.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let passportConstraints = [
        
            passport.topAnchor.constraint(equalTo: numberTexField.bottomAnchor, constant: 16),
            passport.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(passport)
        NSLayoutConstraint.activate(passportConstraints)
    }
    
    private func setUpPassportTextField() {
        
        passportTexField.isSecureTextEntry = true
        
        let passportTexFieldConstraints = [
            
            passportTexField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            passportTexField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            passportTexField.topAnchor.constraint(equalTo: passport.bottomAnchor, constant: 8)
        ]
        
        view.addSubview(passportTexField)
        NSLayoutConstraint.activate(passportTexFieldConstraints)
    }
    
    private func setUpVisibleButton() {
        
        visibleButton.tintColor = .lightGray
        visibleButton.addTarget(self, action: #selector(hidePass), for: .touchUpInside)
        visibleButton.backgroundColor = .clear
        visibleButton.setTitle("Показать", for: .normal)
        visibleButton.setTitleColor(UIColor(named: "primaryGray"), for: .normal)
        visibleButton.titleLabel?.font = UIFont(name: "SFProRounded-Regular", size: 12)
        visibleButton.translatesAutoresizingMaskIntoConstraints = false
        
        let visibleButtonConstraints = [
        
            visibleButton.centerYAnchor.constraint(equalTo: passportTexField.centerYAnchor),
            visibleButton.rightAnchor.constraint(equalTo: passportTexField.rightAnchor, constant: -16)
        ]
        
        view.addSubview(visibleButton)
        NSLayoutConstraint.activate(visibleButtonConstraints)
    }
    
    @objc private func hidePass() {
        
        if (passportTexField.isSecureTextEntry) && (visibleButton.titleLabel?.text == "Показать") {
            
            passportTexField.isSecureTextEntry = false
            visibleButton.setTitle("Скрыть", for: .normal)
        } else {
            
            passportTexField.isSecureTextEntry = true
            visibleButton.setTitle("Показать", for: .normal)
        }
    }
    
    private func setUpAddPassengersButton() {
        
        addPassengerButton.tintColor = .lightGray
        addPassengerButton.backgroundColor = .clear
        addPassengerButton.setTitle("Добавить пассажира", for: .normal)
        addPassengerButton.setTitleColor(UIColor(named: "Base30"), for: .normal)
        addPassengerButton.titleLabel?.font = UIFont(name: "SFProRounded-Regular", size: 12)
        addPassengerButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        let addPassengerButtonConstraints = [
            
            addPassengerButton.topAnchor.constraint(equalTo: passportTexField.bottomAnchor, constant: 8),
            addPassengerButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(addPassengerButton)
        NSLayoutConstraint.activate(addPassengerButtonConstraints)
    }
    
    private func setUpConfirmButton() {
        
        let confirmButtonConstraints = [
        
            confirmButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            confirmButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            confirmButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ]
        
        view.addSubview(confirmButton)
        NSLayoutConstraint.activate(confirmButtonConstraints)
    }
}
