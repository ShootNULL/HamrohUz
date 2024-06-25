//
//  EndPointViewController.swift
//  Hamroh
//
//  Created by Peter on 09.06.2024.
//

import Foundation
import UIKit

class EndPointViewController: UIViewController {
    
    private let presenter = EndPointViewPresenter()
    
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
        
        setUpBackArrow()
        setUpTitle()
        setUpToCard()
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
    
    private func setUpToCard() {
        
        let toCardConstraints = [
            
            toCard.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            toCard.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            toCard.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 20),
            toCard.heightAnchor.constraint(equalToConstant: 42)
        ]
        
        view.addSubview(toCard)
        NSLayoutConstraint.activate(toCardConstraints)
    }
    
    private func setUpMap() {
        
        map.image = UIImage(named: "map")
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
        
        nextButton.addTarget(self, action: #selector(goOnTripDetailsScreen), for: .touchUpInside)
        
        let nextButtonConsteraints = [
            
            nextButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            nextButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ]
        
        view.addSubview(nextButton)
        NSLayoutConstraint.activate(nextButtonConsteraints)
    }
    
    @objc private func goOnTripDetailsScreen() {
        presenter.goNext(vc: TripDetailsViewController())
    }
}
