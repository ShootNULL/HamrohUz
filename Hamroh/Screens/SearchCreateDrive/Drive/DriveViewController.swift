//
//  DriveViewController.swift
//  Hamroh
//
//  Created by Peter on 10.06.2024.
//

import Foundation
import UIKit

class DriveViewController: UIViewController {
    
    private let presenter = DriveViewPresenter()
    
    let timeStartArr = ["07:30", "08:00", "09:00"]
    let timeArr = ["4ч 20м","2ч 40м","3ч 00м"]
    let timeFinishArr = ["11:50", "10:40", "12:00"]
    let fromCityArr = ["Ташкент", "Н.Новгород", "Москва"]
    let fromStreetArr = ["ул. Евстигнеева", "ул.Родионова", "ул.Кутузовская"]
    let toCityArr = ["Самарканд", "Москва" , "Санкт-Петербург"]
    let toStreetArr = ["ул. Уренгой", "ул.Советская", "ул.Пушкинская"]
    let peopleArr = ["2 чел.", "3 чел.", "1 чел."]
    let photoArr = ["photo", "photo", "photo"]
    let nameArr = ["Василий", "Оснабек", "Весельчак"]
    let carArr = ["White Skoda Octavia", "Black Toyota RAV-4", "Red Volvo s40"]
    let priceArr = ["800 сум.", "500 руб.", "1350 руб."]
    
    private var checkActive = false
    private let mainView = UIView()
    private let timeStart = UILabel()
    private let time = UILabel()
    private let timeFinish = UILabel()
    private let mapTwoPoints = UIImageView()
    private let fromCity = UILabel()
    private let fromStreet = UILabel()
    private let toCity = UILabel()
    private let toStreet = UILabel()
    private let people = UILabel()
    private let photo = UIImageView()
    private let name = UILabel()
    private let car = UILabel()
    private let price = UILabel()
    private let checkButton = UIButton()
    private let privacyLabel = UILabel()
    private let connectionButton = PrimaryButtonK(type: false, title: "Связаться с водителем", height: 52) ?? UIButton()
    private let reserveButton = PrimaryButtonK(type: true, title: "Забронировать", height: 52) ?? UIButton()
    private let secureAcc = PrimaryAddCardK(photo: "safeShield", nameTitle: "Надежный аккаунт", nameColor: "primaryBlack", sub: "Водитель прошел полную проверку документов и совершил достаточное количество безопасных поездок с хорошими отзывами", subColor: "Base30", numberOfLines: 3) ?? UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        view.backgroundColor = .white
        
        setUpNavigation()
        setUpMainView()
        setUpTimeStart()
        setUpTime()
        setUpTimeFinish()
        setUpMapTwoPoints()
        setUpFromCity()
        setUpFromStreet()
        setUpToCity()
        setUpToStreet()
        setUpPeople()
        setUpPhoto()
        setUpName()
        setUpCar()
        setUpPrice()
        setUpCheckButton()
        setUpPrivacyLabel()
        setUpConnectionButton()
        setUpReserveButton()
        setUpSecureAcc()
    }
    
    private func setUpNavigation() {
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: "primaryBlack")!,
                              NSAttributedString.Key.font: UIFont(name: "SFProRounded-Medium", size: 16)!]
        
        self.navigationItem.title = "Поездка"
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        let backButtonImage = UIImage(named: "arrow.left")
        let customBackButton = UIBarButtonItem(image: backButtonImage, style: .plain, target: self, action: #selector(goBack))
        navigationItem.leftBarButtonItem = customBackButton
        navigationController?.navigationBar.tintColor = .black
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
    
    private func setUpMainView() {
        
        mainView.backgroundColor = UIColor(named: "Base5")
        mainView.layer.cornerRadius = 12
        mainView.layer.cornerCurve = .continuous
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        let mainViewConstraints = [
            
            mainView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            mainView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            mainView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            mainView.heightAnchor.constraint(equalToConstant: 370)
        ]
        
        view.addSubview(mainView)
        NSLayoutConstraint.activate(mainViewConstraints)
    }

    private func setUpTimeStart() {
     
        timeStart.text = timeStartArr[0]
        timeStart.font = UIFont(name: "SFProRounded-Medium", size: 16)
        timeStart.textColor = UIColor(named: "primaryBlack")
        timeStart.translatesAutoresizingMaskIntoConstraints = false
        
        let timeStartConstraints = [
            
            timeStart.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 16),
            timeStart.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16)
        ]
        
        mainView.addSubview(timeStart)
        NSLayoutConstraint.activate(timeStartConstraints)
    }

    private func setUpTime() {
     
        time.text = timeArr[0]
        time.font = UIFont(name: "SFProRounded-Regular", size: 14)
        time.textColor = UIColor(named: "Base30")
        time.translatesAutoresizingMaskIntoConstraints = false
        
        let timeConstraints = [
            
            time.topAnchor.constraint(equalTo: timeStart.bottomAnchor, constant: 2),
            time.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16)
        ]
        
        mainView.addSubview(time)
        NSLayoutConstraint.activate(timeConstraints)
    }

    private func setUpTimeFinish() {
     
        timeFinish.text = timeFinishArr[0]
        timeFinish.font = UIFont(name: "SFProRounded-Medium", size: 16)
        timeFinish.textColor = UIColor(named: "primaryBlack")
        timeFinish.translatesAutoresizingMaskIntoConstraints = false
        
        let timeFinishConstraints = [
            
            timeFinish.topAnchor.constraint(equalTo: time.bottomAnchor, constant: 16),
            timeFinish.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16)
        ]
        
        mainView.addSubview(timeFinish)
        NSLayoutConstraint.activate(timeFinishConstraints)
    }

    private func setUpMapTwoPoints() {
        
        mapTwoPoints.image = UIImage(named: "mapTwoPoints")
        mapTwoPoints.translatesAutoresizingMaskIntoConstraints = false
        
        let mapTwoPointsConstraints = [
            
            mapTwoPoints.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 16),
            mapTwoPoints.leftAnchor.constraint(equalTo: time.rightAnchor, constant: 20),
            mapTwoPoints.heightAnchor.constraint(equalToConstant: 70),
            mapTwoPoints.widthAnchor.constraint(equalToConstant: 15)
        ]
        
        mainView.addSubview(mapTwoPoints)
        NSLayoutConstraint.activate(mapTwoPointsConstraints)
    }

    private func setUpFromCity() {
        
        fromCity.text = fromCityArr[0]
        fromCity.font = UIFont(name: "SFProRounded-Medium", size: 16)
        fromCity.textColor = UIColor(named: "primaryBlack")
        fromCity.translatesAutoresizingMaskIntoConstraints = false
        
        let fromCityConstraints = [
        
            fromCity.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 16),
            fromCity.leftAnchor.constraint(equalTo: mapTwoPoints.rightAnchor, constant: 10)
        ]
        
        mainView.addSubview(fromCity)
        NSLayoutConstraint.activate(fromCityConstraints)
    }

    private func setUpFromStreet() {
        
        fromStreet.text = fromStreetArr[0]
        fromStreet.font = UIFont(name: "SFProRounded-Regular", size: 14)
        fromStreet.textColor = UIColor(named: "Base30")
        fromStreet.translatesAutoresizingMaskIntoConstraints = false
        
        let fromStreetConstraints = [
        
            fromStreet.topAnchor.constraint(equalTo: fromCity.bottomAnchor, constant: 2),
            fromStreet.leftAnchor.constraint(equalTo: mapTwoPoints.rightAnchor, constant: 10)
        ]
        
        mainView.addSubview(fromStreet)
        NSLayoutConstraint.activate(fromStreetConstraints)
    }

    private func setUpToCity() {
        
        toCity.text = toCityArr[0]
        toCity.font = UIFont(name: "SFProRounded-Medium", size: 16)
        toCity.textColor = UIColor(named: "primaryBlack")
        toCity.translatesAutoresizingMaskIntoConstraints = false
        
        let toCityConstraints = [
        
            toCity.topAnchor.constraint(equalTo: fromStreet.bottomAnchor, constant: 15),
            toCity.leftAnchor.constraint(equalTo: mapTwoPoints.rightAnchor, constant: 10)
        ]
        
        mainView.addSubview(toCity)
        NSLayoutConstraint.activate(toCityConstraints)
    }

    private func setUpToStreet() {
        
        toStreet.text = toStreetArr[0]
        toStreet.font = UIFont(name: "SFProRounded-Regular", size: 14)
        toStreet.textColor = UIColor(named: "Base30")
        toStreet.translatesAutoresizingMaskIntoConstraints = false
        
        let toStreetConstraints = [
        
            toStreet.topAnchor.constraint(equalTo: toCity.bottomAnchor, constant: 2),
            toStreet.leftAnchor.constraint(equalTo: mapTwoPoints.rightAnchor, constant: 10)
        ]
        
        mainView.addSubview(toStreet)
        NSLayoutConstraint.activate(toStreetConstraints)
    }

    private func setUpPeople() {
        
        people.text = peopleArr[0]
        people.font = UIFont(name: "SFProRounded-Medium", size: 16)
        people.textColor = UIColor(named: "Base30")
        people.translatesAutoresizingMaskIntoConstraints = false
        
        let peopleConstraints = [
        
            people.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 16),
            people.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -16)
        ]
        
        mainView.addSubview(people)
        NSLayoutConstraint.activate(peopleConstraints)
    }

    private func setUpPhoto() {
        
        photo.image = UIImage(named: photoArr[0])
        photo.translatesAutoresizingMaskIntoConstraints = false
        
        let photoConstraints = [
            
            photo.heightAnchor.constraint(equalToConstant: 42),
            photo.widthAnchor.constraint(equalToConstant: 42),
            photo.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16),
            photo.topAnchor.constraint(equalTo: toStreet.bottomAnchor, constant: 24)
        ]
        
        mainView.addSubview(photo)
        NSLayoutConstraint.activate(photoConstraints)
    }

    private func setUpName() {
        
        name.text = nameArr[0]
        name.font = UIFont(name: "SFProRounded-Medium", size: 16)
        name.textColor = UIColor(named: "primaryBlack")
        name.translatesAutoresizingMaskIntoConstraints = false
        
        let nameConstraints = [
        
            name.topAnchor.constraint(equalTo: toStreet.bottomAnchor, constant: 26),
            name.leftAnchor.constraint(equalTo: photo.rightAnchor, constant: 12)
        ]
        
        mainView.addSubview(name)
        NSLayoutConstraint.activate(nameConstraints)
    }

    private func setUpCar() {
        
        car.text = carArr[0]
        car.font = UIFont(name: "SFProRounded-Regular", size: 12)
        car.textColor = UIColor(named: "Base30")
        car.translatesAutoresizingMaskIntoConstraints = false
        
        let carConstraints = [
        
            car.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 2),
            car.leftAnchor.constraint(equalTo: photo.rightAnchor, constant: 12)
        ]
        
        mainView.addSubview(car)
        NSLayoutConstraint.activate(carConstraints)
    }

    private func setUpPrice() {
        
        price.text = priceArr[0]
        price.font = UIFont(name: "SFProRounded-SemiBold", size: 20)
        price.textColor = UIColor(named: "primaryBlack")
        price.translatesAutoresizingMaskIntoConstraints = false
        
        let priceConstraints = [
            
            price.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -16),
            price.topAnchor.constraint(equalTo: toStreet.bottomAnchor, constant: 30)
        ]
        
        mainView.addSubview(price)
        NSLayoutConstraint.activate(priceConstraints)
    }
    
    private func setUpCheckButton() {
        
        checkButton.setImage(UIImage(named: "check2"), for: .normal)
        checkButton.addTarget(self, action: #selector(changeCheck), for: .touchUpInside)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        
        let checkButtonConstraints = [
        
            checkButton.topAnchor.constraint(equalTo: photo.bottomAnchor, constant: 12),
            checkButton.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16),
            checkButton.heightAnchor.constraint(equalToConstant: 16),
            checkButton.widthAnchor.constraint(equalToConstant: 16)
        ]
        
        mainView.addSubview(checkButton)
        NSLayoutConstraint.activate(checkButtonConstraints)
    }
    
    @objc private func changeCheck() {
        
        if checkActive {
            checkButton.setImage(UIImage(named: "check2"), for: .normal)
        } else {
            checkButton.setImage(UIImage(named: "checkOn"), for: .normal)
        }
        checkActive = !checkActive
    }
    
    private func setUpPrivacyLabel() {
        
        privacyLabel.text = "Я - человек с ограниченными возможностями (инвалид\n1, 2, 3 группы)"
        privacyLabel.font = UIFont(name: "SFProRounded-Regular", size: 12)
        privacyLabel.numberOfLines = 2
        privacyLabel.textColor = UIColor(named: "primaryBlack")
        privacyLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let privacyLabelConstraints = [
        
            privacyLabel.topAnchor.constraint(equalTo: photo.bottomAnchor, constant: 13),
            privacyLabel.leftAnchor.constraint(equalTo: checkButton.rightAnchor, constant: 8),
            privacyLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20)
        ]
        
        mainView.addSubview(privacyLabel)
        NSLayoutConstraint.activate(privacyLabelConstraints)
    }
    
    private func setUpConnectionButton() {
        
        connectionButton.addTarget(self, action: #selector(goOnMyDrivesScreen), for: .touchUpInside)
        
        let connectionButtonConstraints = [
        
            connectionButton.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16),
            connectionButton.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -16),
            connectionButton.topAnchor.constraint(equalTo: privacyLabel.bottomAnchor, constant: 24)
        ]
        
        mainView.addSubview(connectionButton)
        NSLayoutConstraint.activate(connectionButtonConstraints)
    }
    
    @objc private func goOnMyDrivesScreen() {
        self.tabBarController?.selectedIndex = 2
    }
    
    private func setUpReserveButton() {
        
        reserveButton.addTarget(self, action: #selector(goOnReservationScreen), for: .touchUpInside)
        
        let reserveButtonConstraints = [
        
            reserveButton.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 16),
            reserveButton.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: -16),
            reserveButton.topAnchor.constraint(equalTo: connectionButton.bottomAnchor, constant: 12)
        ]
        
        mainView.addSubview(reserveButton)
        NSLayoutConstraint.activate(reserveButtonConstraints)
    }
    
    @objc private func goOnReservationScreen() {
        presenter.goNext(vc: ReservationViewController())
    }
    
    private func setUpSecureAcc() {
        
        secureAcc.backgroundColor = UIColor(named: "Base5")
        
        let secureAccConstraints = [
            
            secureAcc.topAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 20),
            secureAcc.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            secureAcc.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            secureAcc.heightAnchor.constraint(equalToConstant: 97)
        ]
        
        view.addSubview(secureAcc)
        NSLayoutConstraint.activate(secureAccConstraints)
    }
}
