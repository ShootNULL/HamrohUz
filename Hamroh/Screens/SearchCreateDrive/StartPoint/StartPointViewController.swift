//
//  StartPointViewController.swift
//  Hamroh
//
//  Created by Peter on 09.06.2024.
//

import Foundation
import UIKit

class StartPointViewController: UIViewController {
    
    private let presenter = StarrPointViewPresenter()
    
    private let mainTitle = PrimaryTitleK(numberLines: 1, title: "Начальная точка") ?? UILabel()
    private let fromCard = PrimaryCardFromK(title: "Где заберем пассажиров?", adress: "Введите полный адрес") ?? UIView()
    private let map = UIImageView()
    private let nextButton = PrimaryButtonK(type: true, title: "Далее", height: 52) ?? UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        view.backgroundColor = .white
        
        setUpBackArrow()
        setUpTitle()
        setUpFromCard()
        setUpMap()
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
        
        let titleConstraints = [
        
            mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            mainTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(mainTitle)
        NSLayoutConstraint.activate(titleConstraints)
    }
    
    private func setUpFromCard() {
        
        let fromCardConstraints = [
            
            fromCard.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            fromCard.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            fromCard.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 20),
            fromCard.heightAnchor.constraint(equalToConstant: 42)
        ]
        
        view.addSubview(fromCard)
        NSLayoutConstraint.activate(fromCardConstraints)
    }
    
    private func setUpMap() {
        
        map.image = UIImage(named: "map")
        map.translatesAutoresizingMaskIntoConstraints = false
        
        let mapConstrints = [
        
            map.topAnchor.constraint(equalTo: fromCard.bottomAnchor, constant: 20),
            map.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            map.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            map.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ]
        
        view.addSubview(map)
        NSLayoutConstraint.activate(mapConstrints)
    }
    
    private func setUpNextButton() {
        
        nextButton.addTarget(self, action: #selector(goOnEndPointScreen), for: .touchUpInside)
        
        let nextButtonConsteraints = [
            
            nextButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            nextButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ]
        
        view.addSubview(nextButton)
        NSLayoutConstraint.activate(nextButtonConsteraints)
    }
    
    @objc private func goOnEndPointScreen() {
        presenter.goNext(vc: EndPointViewController())
    }
}
