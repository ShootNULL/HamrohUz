//
//  MyDrivesViewController.swift
//  Hamroh
//
//  Created by Peter on 10.06.2024.
//

import Foundation
import UIKit

class MyDrivesViewController: UIViewController {
    
    private enum Constant {
        enum Collection {
            static let sectionInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            static let lineSpacing = 16.0
            static let interitemSpacing = 1.0
        }
    }
    
    let timeStart = ["07:30", "08:00", "09:00"]
    let time = ["4ч 20м","2ч 40м","3ч 00м"]
    let timeFinish = ["11:50", "10:40", "12:00"]
    let fromCity = ["Ташкент", "Н.Новгород", "Москва"]
    let fromStreet = ["ул. Евстигнеева", "ул.Родионова", "ул.Кутузовская"]
    let toCity = ["Самарканд", "Москва" , "Санкт-Петербург"]
    let toStreet = ["ул. Уренгой", "ул.Советская", "ул.Пушкинская"]
    let people = ["2 чел.", "3 чел.", "1 чел."]
    let date = ["11 ноя", "15 окт", "7 окт"]
    
    private let mainTitle = PrimaryTitleK(numberLines: 1, title: "Мои поездки") ?? UILabel()
    private var collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    private let archive = PrimaryAddCardK(photo: "archive", nameTitle: "Архив поездок", nameColor: "orange60", sub: "Посмотреть более ранние поездки. На случай, если забыли вещь или просто интересно.", subColor: "warning", numberOfLines: 2) ?? UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        view.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        
        setUpMainTitle()
        setUpCollection()
        setUpArchive()
    }
    
    private func setUpMainTitle() {
        
        let mainTitleConstraints = [
        
            mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            mainTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    private func setUpCollection() {
        
        collectionView.showsVerticalScrollIndicator = false
        collectionView.backgroundColor = .clear
        collectionView.register(MyDrivesCollectionCell.self, forCellWithReuseIdentifier: MyDrivesCollectionCell.identifier)
        collectionView.alwaysBounceVertical = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        let collectionConsraints = [
        
            collectionView.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 20),
            collectionView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            collectionView.heightAnchor.constraint(equalToConstant: view.frame.height - 115)
        ]
        
        view.addSubview(collectionView)
        NSLayoutConstraint.activate(collectionConsraints)
    }
    
    private func setUpArchive() {
        
        archive.backgroundColor = UIColor(named: "orange5")
        
        let archiveConstrints = [
            
            archive.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            archive.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            archive.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            archive.heightAnchor.constraint(equalToConstant: 83)
        ]
        
        view.addSubview(archive)
        NSLayoutConstraint.activate(archiveConstrints)
    }
}

//MARK: - UICollectionViewDataSource

extension MyDrivesViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        time.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: MyDrivesCollectionCell.identifier,
            for: indexPath
        ) as? MyDrivesCollectionCell else { return UICollectionViewCell() }

        cell.configure(timeStart: self.timeStart[indexPath.item], time: self.time[indexPath.item], timeFinish: self.timeFinish[indexPath.item], fromCity: self.fromCity[indexPath.item], fromStreet: self.fromStreet[indexPath.item], toCity: self.toCity[indexPath.item], toStreet: self.toStreet[indexPath.item], people: self.people[indexPath.item], date: self.date[indexPath.item])
            return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension MyDrivesViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      
        let widthPeritem = view.frame.width - 32

            return CGSize(width: widthPeritem, height: 124)
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        Constant.Collection.sectionInsets
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        Constant.Collection.interitemSpacing
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        Constant.Collection.lineSpacing
    }
}
