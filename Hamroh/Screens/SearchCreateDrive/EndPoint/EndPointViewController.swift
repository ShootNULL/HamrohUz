//
//  EndPointViewController.swift
//  Hamroh
//
//  Created by Peter on 09.06.2024.
//

import Foundation
import UIKit

class EndPointViewController: UIViewController {
    
    private let mainTitle = PrimaryTitleK(numberLines: 1, title: "Конечная точка") ?? UILabel()
    private let toCard = PrimaryCardFromK(title: "Где высадим пассажиров?", adress: "Введите полный адрес") ?? UIView()
    private let map = UIImageView()
    private let nextButton = PrimaryButtonK(type: true, title: "Далее", height: 52) ?? UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    private func setUp() {
        
        view.backgroundColor = .white
        
        setUpTitle()
        setUpToCard()
        setUpMap()
        setUpNextButton()
    }
    
    private func setUpTitle() {
        
        let titleConstraints = [
        
            mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            mainTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(mainTitle)
        NSLayoutConstraint.activate(titleConstraints)
    }
    
    private func setUpToCard() {
        
        let toCardConstraints = [
            
            toCard.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            toCard.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            toCard.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 20),
            toCard.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        view.addSubview(toCard)
        NSLayoutConstraint.activate(toCardConstraints)
    }
    
    private func setUpMap() {
        
        map.image = UIImage(named: "map")
        map.contentMode = .scaleAspectFill
        map.translatesAutoresizingMaskIntoConstraints = false
        
        let mapConstrints = [
        
            map.topAnchor.constraint(equalTo: toCard.bottomAnchor, constant: 20),
            map.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            map.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            map.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ]
        
        view.addSubview(map)
        NSLayoutConstraint.activate(mapConstrints)
    }
    
    private func setUpNextButton() {
        
        let nextButtonConsteraints = [
            
            nextButton.leftAnchor.constraint(equalTo: map.leftAnchor, constant: 16),
            nextButton.rightAnchor.constraint(equalTo: map.rightAnchor, constant: -16),
            nextButton.bottomAnchor.constraint(equalTo: map.bottomAnchor, constant: -20)
        ]
        
        map.addSubview(nextButton)
        NSLayoutConstraint.activate(nextButtonConsteraints)
    }
}
