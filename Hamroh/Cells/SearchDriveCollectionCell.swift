//
//  MainCollectionCell.swift
//  Hamroh
//
//  Created by Peter on 09.06.2024.
//

import Foundation
import UIKit

class SearchDriveCollectionCell: UICollectionViewCell {
    
    // MARK: - Identifier
    
    static let identifier = "SearchDriveCollectionCell"

    // MARK: - Subviews
    
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
    
    // MARK: - Init

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Lifecycle

    override func prepareForReuse() {
        super.prepareForReuse()
        self.timeStart.text = nil
        self.time.text = nil
        self.timeFinish.text = nil
        self.mapTwoPoints.image = nil
        self.fromCity.text = nil
        self.fromStreet.text = nil
        self.toCity.text = nil
        self.toStreet.text = nil
        self.people.text = nil
        self.photo.image = nil
        self.name.text = nil
        self.car.text = nil
        self.price.text = nil
    }

    // MARK: - Methods

    func configure(timeStart: String, time: String, timeFinish: String, fromCity: String, fromStreet: String, toCity: String, toStreet: String, people: String, photo: String, name: String, car: String, price: String) {

//            contentView.backgroundColor = UIColor(named: "Base5")
//            contentView.layer.borderWidth = 1
//            contentView.layer.borderColor = UIColor(named: "Base5")?.cgColor

        
        self.timeStart.text = timeStart
        self.time.text = time
        self.timeFinish.text = timeFinish
        self.fromCity.text = fromCity
        self.fromStreet.text = fromStreet
        self.toCity.text = toCity
        self.toStreet.text = toStreet
        self.people.text = people
        self.photo.image = UIImage(named: photo)
        self.name.text = name
        self.car.text = car
        self.price.text = price
    }
    
    // MARK: - SetUp
    
    private func setUp() {
        
        contentView.backgroundColor = UIColor(named: "Base5")
        contentView.layer.cornerRadius = 12
        contentView.layer.cornerCurve = .continuous
        
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
    }
    
    private func setUpTimeStart() {
     
        timeStart.font = UIFont(name: "SFProRounded-Medium", size: 16)
        timeStart.textColor = UIColor(named: "primaryBlack")
        timeStart.translatesAutoresizingMaskIntoConstraints = false
        
        let timeStartConstraints = [
            
            timeStart.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            timeStart.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16)
        ]
        
        contentView.addSubview(timeStart)
        NSLayoutConstraint.activate(timeStartConstraints)
    }
    
    private func setUpTime() {
     
        time.font = UIFont(name: "SFProRounded-Regular", size: 14)
        time.textColor = UIColor(named: "Base30")
        time.translatesAutoresizingMaskIntoConstraints = false
        
        let timeConstraints = [
            
            time.topAnchor.constraint(equalTo: timeStart.bottomAnchor, constant: 2),
            time.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16)
        ]
        
        contentView.addSubview(time)
        NSLayoutConstraint.activate(timeConstraints)
    }
    
    private func setUpTimeFinish() {
     
        timeFinish.font = UIFont(name: "SFProRounded-Medium", size: 16)
        timeFinish.textColor = UIColor(named: "primaryBlack")
        timeFinish.translatesAutoresizingMaskIntoConstraints = false
        
        let timeFinishConstraints = [
            
            timeFinish.topAnchor.constraint(equalTo: time.bottomAnchor, constant: 16),
            timeFinish.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16)
        ]
        
        contentView.addSubview(timeFinish)
        NSLayoutConstraint.activate(timeFinishConstraints)
    }

    private func setUpMapTwoPoints() {
        
        mapTwoPoints.image = UIImage(named: "mapTwoPoints")
        mapTwoPoints.translatesAutoresizingMaskIntoConstraints = false
        
        let mapTwoPointsConstraints = [
            
            mapTwoPoints.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            mapTwoPoints.leftAnchor.constraint(equalTo: time.rightAnchor, constant: 20),
            mapTwoPoints.heightAnchor.constraint(equalToConstant: 70),
            mapTwoPoints.widthAnchor.constraint(equalToConstant: 15)
        ]
        
        contentView.addSubview(mapTwoPoints)
        NSLayoutConstraint.activate(mapTwoPointsConstraints)
    }
    
    private func setUpFromCity() {
        
        fromCity.font = UIFont(name: "SFProRounded-Medium", size: 16)
        fromCity.textColor = UIColor(named: "primaryBlack")
        fromCity.translatesAutoresizingMaskIntoConstraints = false
        
        let fromCityConstraints = [
        
            fromCity.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            fromCity.leftAnchor.constraint(equalTo: mapTwoPoints.rightAnchor, constant: 10)
        ]
        
        contentView.addSubview(fromCity)
        NSLayoutConstraint.activate(fromCityConstraints)
    }
    
    private func setUpFromStreet() {
        
        fromStreet.font = UIFont(name: "SFProRounded-Regular", size: 14)
        fromStreet.textColor = UIColor(named: "Base30")
        fromStreet.translatesAutoresizingMaskIntoConstraints = false
        
        let fromStreetConstraints = [
        
            fromStreet.topAnchor.constraint(equalTo: fromCity.bottomAnchor, constant: 2),
            fromStreet.leftAnchor.constraint(equalTo: mapTwoPoints.rightAnchor, constant: 10)
        ]
        
        contentView.addSubview(fromStreet)
        NSLayoutConstraint.activate(fromStreetConstraints)
    }
    
    private func setUpToCity() {
        
        toCity.font = UIFont(name: "SFProRounded-Medium", size: 16)
        toCity.textColor = UIColor(named: "primaryBlack")
        toCity.translatesAutoresizingMaskIntoConstraints = false
        
        let toCityConstraints = [
        
            toCity.topAnchor.constraint(equalTo: fromStreet.bottomAnchor, constant: 15),
            toCity.leftAnchor.constraint(equalTo: mapTwoPoints.rightAnchor, constant: 10)
        ]
        
        contentView.addSubview(toCity)
        NSLayoutConstraint.activate(toCityConstraints)
    }
    
    private func setUpToStreet() {
        
        toStreet.font = UIFont(name: "SFProRounded-Regular", size: 14)
        toStreet.textColor = UIColor(named: "Base30")
        toStreet.translatesAutoresizingMaskIntoConstraints = false
        
        let toStreetConstraints = [
        
            toStreet.topAnchor.constraint(equalTo: toCity.bottomAnchor, constant: 2),
            toStreet.leftAnchor.constraint(equalTo: mapTwoPoints.rightAnchor, constant: 10)
        ]
        
        contentView.addSubview(toStreet)
        NSLayoutConstraint.activate(toStreetConstraints)
    }
    
    private func setUpPeople() {
        
        people.font = UIFont(name: "SFProRounded-Medium", size: 16)
        people.textColor = UIColor(named: "Base30")
        people.translatesAutoresizingMaskIntoConstraints = false
        
        let peopleConstraints = [
        
            people.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            people.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16)
        ]
        
        contentView.addSubview(people)
        NSLayoutConstraint.activate(peopleConstraints)
    }
    
    private func setUpPhoto() {
        
        photo.translatesAutoresizingMaskIntoConstraints = false
        
        let photoConstraints = [
            
            photo.heightAnchor.constraint(equalToConstant: 42),
            photo.widthAnchor.constraint(equalToConstant: 42),
            photo.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            photo.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16)
        ]
        
        contentView.addSubview(photo)
        NSLayoutConstraint.activate(photoConstraints)
    }
    
    private func setUpName() {
        
        name.font = UIFont(name: "SFProRounded-Medium", size: 16)
        name.textColor = UIColor(named: "primaryBlack")
        name.translatesAutoresizingMaskIntoConstraints = false
        
        let nameConstraints = [
        
            name.topAnchor.constraint(equalTo: toStreet.bottomAnchor, constant: 26),
            name.leftAnchor.constraint(equalTo: photo.rightAnchor, constant: 12)
        ]
        
        contentView.addSubview(name)
        NSLayoutConstraint.activate(nameConstraints)
    }
    
    private func setUpCar() {
        
        car.font = UIFont(name: "SFProRounded-Regular", size: 12)
        car.textColor = UIColor(named: "Base30")
        car.translatesAutoresizingMaskIntoConstraints = false
        
        let carConstraints = [
        
            car.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 2),
            car.leftAnchor.constraint(equalTo: photo.rightAnchor, constant: 12)
        ]
        
        contentView.addSubview(car)
        NSLayoutConstraint.activate(carConstraints)
    }
    
    private func setUpPrice() {
        
        price.font = UIFont(name: "SFProRounded-SemiBold", size: 20)
        price.textColor = UIColor(named: "primaryBlack")
        price.translatesAutoresizingMaskIntoConstraints = false
        
        let priceConstraints = [
            
            price.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
            price.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -25)
        ]
        
        contentView.addSubview(price)
        NSLayoutConstraint.activate(priceConstraints)
    }
}

