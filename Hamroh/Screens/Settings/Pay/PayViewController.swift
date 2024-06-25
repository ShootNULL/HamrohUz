//
//  PayViewController.swift
//  Hamroh
//
//  Created by Peter on 19.06.2024.
//

import Foundation
import UIKit

class PayViewController: UIViewController {
    
    private let profileCard = PrimaryProfileCardK(photo: "photo", name: "Николай Жидков", shield: "safeShield", sub: "Надежный аккаунт") ?? UIView()
    private let payCard = PrimaryPayOrCarCardK(type: true, photo: "MasterCard", nameTitle: "MasterCard", sub: "0594", close: "StarChosen") ?? UIView()
    private let payCard2 = PrimaryPayOrCarCardK(type: true, photo: "Visa", nameTitle: "Visa", sub: "2411", close: "close") ?? UIView()
    private let addCard = PrimaryAddCardK(photo: "Payment", nameTitle: "Добавьте новую карту", nameColor: "primaryBlack", sub: "Чтобы оплачивать поездки и не волноваться о том, что забудете. Мы об этом позаботимся", subColor: "Base30", numberOfLines: 2) ?? UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        view.backgroundColor = UIColor(named: "Base5")
        
        setUpNavigation()
        setUpProfileCard()
        setUpPayCard()
        setUpPayCardTwo()
        setUpAddCard()
    }
    
    private func setUpNavigation() {
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: "primaryBlack")!,
                              NSAttributedString.Key.font: UIFont(name: "SFProRounded-Medium", size: 16)!]
        self.navigationItem.title = "Способы оплаты"
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        let backButtonImage = UIImage(named: "arrow.left")
        let customBackButton = UIBarButtonItem(image: backButtonImage, style: .plain, target: self, action: #selector(goBack))
        navigationItem.leftBarButtonItem = customBackButton
        navigationController?.navigationBar.tintColor = .black
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
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
    
    private func setUpPayCard() {
        
        let payCardConstraints = [
        
            payCard.topAnchor.constraint(equalTo: profileCard.bottomAnchor, constant: 20),
            payCard.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            payCard.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            payCard.heightAnchor.constraint(equalToConstant: 46)
        ]
        
        view.addSubview(payCard)
        NSLayoutConstraint.activate(payCardConstraints)
    }
    
    private func setUpPayCardTwo() {
        
        let payCard2Constraints = [
        
            payCard2.topAnchor.constraint(equalTo: payCard.bottomAnchor, constant: 20),
            payCard2.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            payCard2.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            payCard2.heightAnchor.constraint(equalToConstant: 46)
        ]
        
        view.addSubview(payCard2)
        NSLayoutConstraint.activate(payCard2Constraints)
    }
    
    private func setUpAddCard() {
        
        let addCardConstraints = [
        
            addCard.topAnchor.constraint(equalTo: payCard2.bottomAnchor, constant: 20),
            addCard.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            addCard.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            addCard.heightAnchor.constraint(equalToConstant: 83)
        ]
        
        view.addSubview(addCard)
        NSLayoutConstraint.activate(addCardConstraints)
    }
}
