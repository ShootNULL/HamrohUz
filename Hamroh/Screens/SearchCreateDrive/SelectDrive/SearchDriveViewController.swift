//
//  SelectDriveViewController.swift
//  Hamroh
//
//  Created by Peter on 09.06.2024.
//

import Foundation
import UIKit

class SearchDriveViewController: UIViewController {
    
    private enum Constant {
        enum Collection {
            static let cellHeight = 150.0
            static let cellWidth = 300
            static let sectionInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            static let lineSpacing = 20.0
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
    let photo = ["photo", "photo", "photo"]
    let name = ["Василий", "Оснабек", "Весельчак"]
    let car = ["White Skoda Octavia", "Black Toyota RAV-4", "Red Volvo s40"]
    let price = ["800 сум.", "500 руб.", "1350 руб."]
    
    private let mainTitle = PrimaryTitleK(numberLines: 1, title: "17 Ноября") ?? UILabel()
    private var collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    private func setUp() {
        
        view.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        
        setUpTitle()
        setUpCollection()
    }
    
    private func setUpTitle() {
        
        let mainTitleConstraints = [
        
            mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            mainTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    private func setUpCollection() {
        
        collectionView.showsVerticalScrollIndicator = false
        collectionView.backgroundColor = .clear
        collectionView.register(SearchDriveCollectionCell.self, forCellWithReuseIdentifier: SearchDriveCollectionCell.identifier)
        collectionView.alwaysBounceVertical = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        let collectionConsraints = [
        
            collectionView.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 20),
            collectionView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
        ]
        
        view.addSubview(collectionView)
        NSLayoutConstraint.activate(collectionConsraints)
    }
}

//MARK: - UICollectionViewDataSource

extension SearchDriveViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        time.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: SearchDriveCollectionCell.identifier,
                for: indexPath
            ) as? SearchDriveCollectionCell else { return UICollectionViewCell() }
//
//        if indexPath.item % 4 == 0 || indexPath.item % 4 == 3 {
//            cell.configure(color: colors[0], title: titles[indexPath.item], img: images[indexPath.item], label: subTitles[indexPath.item])
//        } else {
//            cell.configure(color: colors[1], title: titles[indexPath.item], img: images[indexPath.item], label: subTitles[indexPath.item])
//        }
        cell.configure(timeStart: self.timeStart[indexPath.item], time: self.time[indexPath.item], timeFinish: self.timeFinish[indexPath.item], fromCity: self.fromCity[indexPath.item], fromStreet: self.fromStreet[indexPath.item], toCity: self.toCity[indexPath.item], toStreet: self.toStreet[indexPath.item], people: self.people[indexPath.item], photo: self.photo[indexPath.item], name: self.name[indexPath.item], car: self.car[indexPath.item], price: self.price[indexPath.item])
            return cell
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension SearchDriveViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        self.navigationController?.pushViewController(SoonViewController(), animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      
        let widthPeritem = view.frame.width - 32

            return CGSize(width: widthPeritem, height: 190)
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
