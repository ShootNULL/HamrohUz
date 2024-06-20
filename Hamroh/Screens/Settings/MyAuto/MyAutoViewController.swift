//
//  MyAutoViewController.swift
//  Hamroh
//
//  Created by Peter on 19.06.2024.
//

import Foundation
import UIKit

class MyAutoViewController: UIViewController {
    
    private let profileCard = PrimaryProfileCardK(photo: "photo", name: "Николай Жидков", shield: "safeShield", sub: "Надежный аккаунт") ?? UIView()
    private let carCard = PrimaryPayOrCarCardK(type: false, photo: "WhiteCar", nameTitle: "Skoda Octavia", sub: "A945MO", close: "StarChosen") ?? UIView()
    private let addCard = PrimaryAddCardK(photo: "CarProfile", nameTitle: "Добавьте автомобиль", sub: "Внесите всю необходимую информацию об автомобиле и заполните документы, чтобы быть водителем", numberOfLines: 3) ?? UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        view.backgroundColor = UIColor(named: "Base5")
        
        setUpProfileCard()
        setUpCarCard()
        setUpAddCard()
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
    
    private func setUpCarCard() {
        
        let carCardConstraints = [
        
            carCard.topAnchor.constraint(equalTo: profileCard.bottomAnchor, constant: 20),
            carCard.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            carCard.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            carCard.heightAnchor.constraint(equalToConstant: 46)
        ]
        
        view.addSubview(carCard)
        NSLayoutConstraint.activate(carCardConstraints)
    }
    
    private func setUpAddCard() {
        
        let addCardConstraints = [
        
            addCard.topAnchor.constraint(equalTo: carCard.bottomAnchor, constant: 20),
            addCard.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            addCard.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            addCard.heightAnchor.constraint(equalToConstant: 97)
        ]
        
        view.addSubview(addCard)
        NSLayoutConstraint.activate(addCardConstraints)
    }
    
}
