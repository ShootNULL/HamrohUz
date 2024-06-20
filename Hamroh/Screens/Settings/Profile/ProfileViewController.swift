//
//  ProfileViewController.swift
//  Hamroh
//
//  Created by Peter on 10.06.2024.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    private let profileCard = PrimaryProfileCardK(photo: "photo", name: "Николай Жидков", shield: "safeShield", sub: "Надежный аккаунт") ?? UIView()
    private let mainView = UIView()
    private let mainTitle = UILabel()
    private let infoCard = PrimarySettingsCardK(type: true, photo: "faceId", nameTitle: "Контактная информация", sub: "Изменить данные", vectorImg: "vector") ?? UIView()
    private let securityCard = PrimarySettingsCardK(type: true, photo: "security", nameTitle: "Безопасность", sub: "Пароль, e-mail", vectorImg: "vector") ?? UIView()
    private let payCard = PrimarySettingsCardK(type: true, photo: "pay", nameTitle: "Способы оплаты", sub: "Привязать карту", vectorImg: "vector") ?? UIView()
    private let conditionsCard = PrimarySettingsCardK(type: true, photo: "conditions", nameTitle: "Условия использования", sub: "Terms of Use", vectorImg: "vector") ?? UIView()
    
    private let settingsView = UIView()
    private let settingsTitle = UILabel()
    private let autoCard = PrimarySettingsCardK(type: true, photo: "auto", nameTitle: "Мои авто", sub: "Добавить т/c", vectorImg: "vector") ?? UIView()
    private let docsCard = PrimarySettingsCardK(type: true, photo: "docs", nameTitle: "Мои документы", sub: "Все необходимое для поездок", vectorImg: "vector") ?? UIView()
    private let languageCard = PrimarySettingsCardK(type: true, photo: "language", nameTitle: "Сменить язык", sub: "Выбрать язык интерфейса", vectorImg: "vector") ?? UIView()
    private let couponCard = PrimarySettingsCardK(type: true, photo: "coupon", nameTitle: "Купон", sub: "Скидки на поездки", vectorImg: "vector") ?? UIView()
    
    private let otherView = UIView()
    private let otherTitle = UILabel()
    private let notificationCard = PrimarySettingsCardK(type: false, photo: "notification", nameTitle: "Уведомления", sub: "Чтобы не пропустить самое важное", vectorImg: "vector") ?? UIView()
    private let becomeADriverCard = PrimarySettingsCardK(type: true, photo: "becomeADriver", nameTitle: "Стать водителем", sub: "Заполните документы", vectorImg: "vector") ?? UIView()
    private let exitCard = PrimarySettingsCardK(type: true, photo: "exit", nameTitle: "Выйти", sub: "Безопасный выход из аккаунта", vectorImg: "vector") ?? UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Профиль"
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor(named: "primaryBlack")!]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        setUp()
    }
    
    private func setUp() {
        
        view.backgroundColor = UIColor(named: "Base5")

        setUpProfileCard()
        setUpMainView()
        setUpMainTitle()
        setUpInfoCard()
        setUpSecurityCard()
        setUpPayCard()
        setUpConditionsCard()
        
        setUpSettingsView()
        setUpSettingsTitle()
        setUpAutoCard()
        setUpDocsCard()
        setUpLanguageCard()
        setUpCouponCard()
        
        setUpOtherView()
        setUpOtherTitle()
        setUpNotificationCard()
        setUpBecomeADriverCard()
        setUpExitCard()
    }
    
    private func setUpProfileCard() {
        
        let profileConstraints = [
        
            profileCard.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            profileCard.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            profileCard.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            profileCard.heightAnchor.constraint(equalToConstant: 88)
        ]
        
        view.addSubview(profileCard)
        NSLayoutConstraint.activate(profileConstraints)
    }
    
    private func setUpMainView() {
        
        mainView.backgroundColor = .white
        mainView.layer.cornerRadius = 12
        mainView.layer.cornerCurve = .continuous
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        let mainViewConstraints = [
        
            mainView.topAnchor.constraint(equalTo: profileCard.bottomAnchor, constant: 20),
            mainView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            mainView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            mainView.heightAnchor.constraint(equalToConstant: 240)
        ]
        
        view.addSubview(mainView)
        NSLayoutConstraint.activate(mainViewConstraints)
    }
    
    private func setUpMainTitle() {
        
        mainTitle.text = "Основное"
        mainTitle.textColor = UIColor(named: "primaryBlack")
        mainTitle.numberOfLines = 1
        mainTitle.font = UIFont(name: "SFProRounded-Semibold", size: 20)
        mainTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let mainTitleConstraints = [
        
            mainTitle.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 16),
            mainTitle.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16)
        ]
        
        mainView.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    private func setUpInfoCard() {
        
        let infoCardConstraints = [
        
            infoCard.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 16),
            infoCard.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16),
            infoCard.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -16),
            infoCard.heightAnchor.constraint(equalToConstant: 33)
        ]
        
        mainView.addSubview(infoCard)
        NSLayoutConstraint.activate(infoCardConstraints)
    }
    
    private func setUpSecurityCard() {
        
        let securityCardConstraints = [
        
            securityCard.topAnchor.constraint(equalTo: infoCard.bottomAnchor, constant: 12),
            securityCard.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16),
            securityCard.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -16),
            securityCard.heightAnchor.constraint(equalToConstant: 33)
        ]
        
        mainView.addSubview(securityCard)
        NSLayoutConstraint.activate(securityCardConstraints)
    }
    
    private func setUpPayCard() {
        
        let payCardConstraints = [
        
            payCard.topAnchor.constraint(equalTo: securityCard.bottomAnchor, constant: 12),
            payCard.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16),
            payCard.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -16),
            payCard.heightAnchor.constraint(equalToConstant: 33)
        ]
        
        mainView.addSubview(payCard)
        NSLayoutConstraint.activate(payCardConstraints)
    }
    
    private func setUpConditionsCard() {
        
        let conditionsCardConstraints = [
        
            conditionsCard.topAnchor.constraint(equalTo: payCard.bottomAnchor, constant: 12),
            conditionsCard.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16),
            conditionsCard.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -16),
            conditionsCard.heightAnchor.constraint(equalToConstant: 33)
        ]
        
        mainView.addSubview(conditionsCard)
        NSLayoutConstraint.activate(conditionsCardConstraints)
    }
    
    private func setUpSettingsView() {
        
        settingsView.backgroundColor = .white
        settingsView.layer.cornerRadius = 12
        settingsView.layer.cornerCurve = .continuous
        settingsView.translatesAutoresizingMaskIntoConstraints = false
        
        let settingsViewConstraints = [
        
            settingsView.topAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 20),
            settingsView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            settingsView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            settingsView.heightAnchor.constraint(equalToConstant: 240)
        ]
        
        view.addSubview(settingsView)
        NSLayoutConstraint.activate(settingsViewConstraints)
    }
    
    private func setUpSettingsTitle() {
        
        settingsTitle.text = "Настройки"
        settingsTitle.textColor = UIColor(named: "primaryBlack")
        settingsTitle.numberOfLines = 1
        settingsTitle.font = UIFont(name: "SFProRounded-Semibold", size: 20)
        settingsTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let settingsTitleConstraints = [
        
            settingsTitle.topAnchor.constraint(equalTo: settingsView.topAnchor, constant: 16),
            settingsTitle.leftAnchor.constraint(equalTo: settingsView.leftAnchor, constant: 16)
        ]
        
        settingsView.addSubview(settingsTitle)
        NSLayoutConstraint.activate(settingsTitleConstraints)
    }
    
    private func setUpAutoCard() {
        
        let autoCardConstraints = [
        
            autoCard.topAnchor.constraint(equalTo: settingsTitle.bottomAnchor, constant: 16),
            autoCard.leftAnchor.constraint(equalTo: settingsView.leftAnchor, constant: 16),
            autoCard.rightAnchor.constraint(equalTo: settingsView.rightAnchor, constant: -16),
            autoCard.heightAnchor.constraint(equalToConstant: 33)
        ]
        
        settingsView.addSubview(autoCard)
        NSLayoutConstraint.activate(autoCardConstraints)
    }
    
    private func setUpDocsCard() {
        
        let docsCardConstraints = [
        
            docsCard.topAnchor.constraint(equalTo: autoCard.bottomAnchor, constant: 12),
            docsCard.leftAnchor.constraint(equalTo: settingsView.leftAnchor, constant: 16),
            docsCard.rightAnchor.constraint(equalTo: settingsView.rightAnchor, constant: -16),
            docsCard.heightAnchor.constraint(equalToConstant: 33)
        ]
        
        settingsView.addSubview(docsCard)
        NSLayoutConstraint.activate(docsCardConstraints)
    }
    
    private func setUpLanguageCard() {
        
        let languageCardConstraints = [
        
            languageCard.topAnchor.constraint(equalTo: docsCard.bottomAnchor, constant: 12),
            languageCard.leftAnchor.constraint(equalTo: settingsView.leftAnchor, constant: 16),
            languageCard.rightAnchor.constraint(equalTo: settingsView.rightAnchor, constant: -16),
            languageCard.heightAnchor.constraint(equalToConstant: 33)
        ]
        
        settingsView.addSubview(languageCard)
        NSLayoutConstraint.activate(languageCardConstraints)
    }
    
    private func setUpCouponCard() {
        
        let couponCardConstraints = [
        
            couponCard.topAnchor.constraint(equalTo: languageCard.bottomAnchor, constant: 12),
            couponCard.leftAnchor.constraint(equalTo: settingsView.leftAnchor, constant: 16),
            couponCard.rightAnchor.constraint(equalTo: settingsView.rightAnchor, constant: -16),
            couponCard.heightAnchor.constraint(equalToConstant: 33)
        ]
        
        settingsView.addSubview(couponCard)
        NSLayoutConstraint.activate(couponCardConstraints)
    }
    
    private func setUpOtherView() {
        
        otherView.backgroundColor = .white
        otherView.layer.cornerRadius = 12
        otherView.layer.cornerCurve = .continuous
        otherView.translatesAutoresizingMaskIntoConstraints = false
        
        let otherViewConstraints = [
        
            otherView.topAnchor.constraint(equalTo: settingsView.bottomAnchor, constant: 20),
            otherView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            otherView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            otherView.heightAnchor.constraint(equalToConstant: 195)
        ]
        
        view.addSubview(otherView)
        NSLayoutConstraint.activate(otherViewConstraints)
    }
    
    private func setUpOtherTitle() {
        
        otherTitle.text = "Другое"
        otherTitle.textColor = UIColor(named: "Base30")
        otherTitle.numberOfLines = 1
        otherTitle.font = UIFont(name: "SFProRounded-Semibold", size: 20)
        otherTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let otherTitleConstraints = [
        
            otherTitle.topAnchor.constraint(equalTo: otherView.topAnchor, constant: 16),
            otherTitle.leftAnchor.constraint(equalTo: otherView.leftAnchor, constant: 16)
        ]
        
        otherView.addSubview(otherTitle)
        NSLayoutConstraint.activate(otherTitleConstraints)
    }
    
    private func setUpNotificationCard() {
        
        let notificationCardConstraints = [
        
            notificationCard.topAnchor.constraint(equalTo: otherTitle.bottomAnchor, constant: 12),
            notificationCard.leftAnchor.constraint(equalTo: otherView.leftAnchor, constant: 16),
            notificationCard.rightAnchor.constraint(equalTo: otherView.rightAnchor, constant: -16),
            notificationCard.heightAnchor.constraint(equalToConstant: 33)
        ]
        
        otherView.addSubview(notificationCard)
        NSLayoutConstraint.activate(notificationCardConstraints)
    }
    
    private func setUpBecomeADriverCard() {
        
        let becomeADriverCardConstraints = [
        
            becomeADriverCard.topAnchor.constraint(equalTo: notificationCard.bottomAnchor, constant: 12),
            becomeADriverCard.leftAnchor.constraint(equalTo: otherView.leftAnchor, constant: 16),
            becomeADriverCard.rightAnchor.constraint(equalTo: otherView.rightAnchor, constant: -16),
            becomeADriverCard.heightAnchor.constraint(equalToConstant: 33)
        ]
        
        otherView.addSubview(becomeADriverCard)
        NSLayoutConstraint.activate(becomeADriverCardConstraints)
    }
    
    private func setUpExitCard() {
        
        let exitCardConstraints = [
        
            exitCard.topAnchor.constraint(equalTo: becomeADriverCard.bottomAnchor, constant: 12),
            exitCard.leftAnchor.constraint(equalTo: otherView.leftAnchor, constant: 16),
            exitCard.rightAnchor.constraint(equalTo: otherView.rightAnchor, constant: -16),
            exitCard.heightAnchor.constraint(equalToConstant: 33)
        ]
        
        otherView.addSubview(exitCard)
        NSLayoutConstraint.activate(exitCardConstraints)
    }
}
