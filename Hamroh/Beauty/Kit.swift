//
//  Kit.swift
//  Hamroh
//
//  Created by Евгений Парфененков on 04.12.2023.
//

import Foundation
import UIKit

final class PrimaryTitleK: UILabel {
    
    var numberLines: Int
    var title: String
    
    required init?(numberLines: Int, title: String) {
        
        self.numberLines = numberLines
        self.title = title
        
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        setUp()
    }
    
    private func setUp() {
        self.text = title
        self.textColor = UIColor(named: "primaryBlack")
        self.numberOfLines = numberLines
        self.font = UIFont(name: "SFProRounded-Bold", size: 32)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
}


final class PrimaryButtonK: UIButton {
    
    var type: Bool
    var title: String
    var height: Int
    
    required init?(type: Bool, title: String, height: Int) {
        
        self.type = type
        self.title = title
        self.height = height
        
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        setUp()
    }
    
    private func setUp() {
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 12
        self.titleLabel?.font = UIFont(name: "SFProRounded-Semibold", size: 14)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = type ? UIColor(named: "primaryBlack") : UIColor(named: "primaryWhite")
        self.setTitleColor(type ? UIColor(named: "primaryWhite") : UIColor(named: "primaryBlack"), for: .normal)
        
        if !type {
            self.layer.shadowOffset = CGSize(width: 0, height: 0)
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowRadius = 12
            self.layer.shadowOpacity = 0.12
        }
        
        let primaryButtonConstraints = [
            self.heightAnchor.constraint(equalToConstant: CGFloat(height))
        ]
        
        NSLayoutConstraint.activate(primaryButtonConstraints)
    }

    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
}

final class PrimaryTextFieldK: UITextField {
    
    var title: String
    var height: Int
    
    required init?(title: String, height: Int) {
        
        self.title = title
        self.height = height
        
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        setUp()
    }
    
    
    private func setUp() {
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor(named: "primaryGray")!,
            NSAttributedString.Key.font: UIFont(name: "SFProRounded-Regular", size: 14)!
        ]
        
        self.attributedPlaceholder = NSAttributedString(string: title, attributes: attributes)
        self.textColor = UIColor(named: "primaryBlack")
        self.font = UIFont(name: "SFProRounded-Regular", size: 14)
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(named: "Base10")!.cgColor
        self.layer.cornerRadius = 12
        self.leftView = UIView(frame: CGRectMake(0, 0, 16, self.frame.height))
        self.leftViewMode = UITextField.ViewMode.always
        self.translatesAutoresizingMaskIntoConstraints = false
        
        let primaryTextFieldConstraints = [
            self.heightAnchor.constraint(equalToConstant: CGFloat(height))
        ]
        
        NSLayoutConstraint.activate(primaryTextFieldConstraints)
    }

    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
}

final class PrimaryCardFromK: UIView {
    
    var title: String
    var adress: String
//    var mapPoint: UIImageView
//    var close: UIImageView
    
    private let mainTitle = UILabel()
    private let subTitle = UILabel()
    private let mapPoint = UIButton()
    private let close = UIButton()
    
    required init?(title: String, adress: String/*, mapPoint: UIImageView, close: UIImageView*/) {
        
//        self.title = title
        self.adress = adress
        self.title = title
//        self.mapPoint = mapPoint
//        self.close = close
        
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        setUp()
    }
    
    private func setUp() {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        setUpMapPoint()
        setUpTitle()
        setUpSubTitle()
        setUpClose()
    }
    
    private func setUpMapPoint() {
        
        mapPoint.setImage(UIImage(named: "mapPoint"), for: .normal)
        mapPoint.translatesAutoresizingMaskIntoConstraints = false
        
        let mapPointConstraints = [
            
            mapPoint.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            mapPoint.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
            mapPoint.widthAnchor.constraint(equalToConstant: 13),
            mapPoint.heightAnchor.constraint(equalToConstant: 15)
        ]
        
        self.addSubview(mapPoint)
        NSLayoutConstraint.activate(mapPointConstraints)
    }
    
    private func setUpTitle() {
        
        mainTitle.text = title
        mainTitle.textColor = UIColor(named: "primaryBlack")
        mainTitle.numberOfLines = 1
        mainTitle.font = UIFont(name: "SFProRounded-SemiBold", size: 14)
        mainTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let titleConstraints = [
            
            mainTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            mainTitle.leftAnchor.constraint(equalTo: mapPoint.rightAnchor, constant: 8)
        ]
        
        self.addSubview(mainTitle)
        NSLayoutConstraint.activate(titleConstraints)
    }
    
    private func setUpSubTitle() {
        
        subTitle.text = adress
        subTitle.textColor = UIColor(named: "primaryGray")
        subTitle.numberOfLines = 1
        subTitle.font = UIFont(name: "SFProRounded-Regular", size: 14)
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let subTitleConstraints = [
            
            subTitle.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 8),
            subTitle.leftAnchor.constraint(equalTo: mapPoint.rightAnchor, constant: 8)
        ]
        
        self.addSubview(subTitle)
        NSLayoutConstraint.activate(subTitleConstraints)
    }
    
    private func setUpClose() {
    
        close.setImage(UIImage(named: "close"), for: .normal)
        close.translatesAutoresizingMaskIntoConstraints = false
        
        let closeConstraints = [
            
            close.topAnchor.constraint(equalTo: mainTitle.topAnchor, constant: 8),
            close.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0),
            close.widthAnchor.constraint(equalToConstant: 16),
            close.heightAnchor.constraint(equalToConstant: 16)
        ]
        
        self.addSubview(close)
        NSLayoutConstraint.activate(closeConstraints)
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
}

final class PrimaryCardToK: UIView {
    
//    var title: String
    var adress: String
//    var mapPoint: UIImageView
//    var close: UIImageView
    
    private let mainTitle = UILabel()
    private let subTitle = UILabel()
    private let mapPoint = UIButton()
    private let close = UIButton()
    
    required init?(/*title: String, */adress: String/*, mapPoint: UIImageView, close: UIImageView*/) {
        
//        self.title = title
        self.adress = adress
//        self.mapPoint = mapPoint
//        self.close = close
        
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        setUp()
    }
    
    private func setUp() {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        setUpMapPoint()
        setUpSubTitle()
        setUpTitle()
        setUpClose()
    }
    
    private func setUpMapPoint() {
        
        mapPoint.setImage(UIImage(named: "mapPoint"), for: .normal)
        mapPoint.translatesAutoresizingMaskIntoConstraints = false
        
        let mapPointConstraints = [
            
            mapPoint.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            mapPoint.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
            mapPoint.widthAnchor.constraint(equalToConstant: 13),
            mapPoint.heightAnchor.constraint(equalToConstant: 15)
        ]
        
        self.addSubview(mapPoint)
        NSLayoutConstraint.activate(mapPointConstraints)
    }
    
    private func setUpSubTitle() {
        
        subTitle.text = adress
        subTitle.textColor = UIColor(named: "primaryGray")
        subTitle.numberOfLines = 1
        subTitle.font = UIFont(name: "SFProRounded-Regular", size: 14)
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let subTitleConstraints = [
            
            subTitle.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            subTitle.leftAnchor.constraint(equalTo: mapPoint.rightAnchor, constant: 8)
        ]
        
        self.addSubview(subTitle)
        NSLayoutConstraint.activate(subTitleConstraints)
    }
    
    private func setUpTitle() {
        
        mainTitle.text = "Куда"
        mainTitle.textColor = UIColor(named: "primaryBlack")
        mainTitle.numberOfLines = 1
        mainTitle.font = UIFont(name: "SFProRounded-SemiBold", size: 14)
        mainTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let titleConstraints = [
            
            mainTitle.bottomAnchor.constraint(equalTo: subTitle.topAnchor, constant: -8),
            mainTitle.leftAnchor.constraint(equalTo: mapPoint.rightAnchor, constant: 8)
        ]
        
        self.addSubview(mainTitle)
        NSLayoutConstraint.activate(titleConstraints)
    }
    
    private func setUpClose() {
    
        close.setImage(UIImage(named: "close"), for: .normal)
        close.translatesAutoresizingMaskIntoConstraints = false
        
        let closeConstraints = [
            
            close.bottomAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: -8),
            close.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0),
            close.widthAnchor.constraint(equalToConstant: 16),
            close.heightAnchor.constraint(equalToConstant: 16)
        ]
        
        self.addSubview(close)
        NSLayoutConstraint.activate(closeConstraints)
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
}

final class PrimaryViewLatestDriveseK: UIView {
    
    var title: String
    var subTitle: String
    
    private let mainTitle = UILabel()
    private let mainSubTitle = UILabel()
    
    required init?(title: String, subTitle: String) {
        
        self.title = title
        self.subTitle = subTitle
        
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        setUp()
    }
    
    private func setUp() {
        
        self.backgroundColor = UIColor(named: "Base5")
        self.layer.cornerRadius = 12
        self.layer.borderWidth = 1
        self.layer.borderColor = (UIColor(named: "Base5"))!.cgColor
        self.layer.masksToBounds = true
        self.translatesAutoresizingMaskIntoConstraints = false
        
        setUpMainTitle()
        setUpMainSubTitle()
    }
    
    private func setUpMainTitle() {
        
        mainTitle.text = title
        mainTitle.textColor = UIColor(named: "primaryBlack")
        mainTitle.numberOfLines = 1
        mainTitle.font = UIFont(name: "SFProRounded-Medium", size: 14)
        mainTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let mainTitleConstraints = [
        
            mainTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            mainTitle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16)
        ]
        
        self.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    private func setUpMainSubTitle() {
        
        mainSubTitle.text = subTitle
        mainSubTitle.textColor = UIColor(named: "primaryBlack")
        mainSubTitle.numberOfLines = 1
        mainSubTitle.font = UIFont(name: "SFProRounded-Regular", size: 12)
        mainSubTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let mainSubTitleConstraints = [
        
            mainSubTitle.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 4),
            mainSubTitle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16)
        ]
        
        self.addSubview(mainSubTitle)
        NSLayoutConstraint.activate(mainSubTitleConstraints)
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
}

final class PrimaryProposedDrivesK: UIView {

    var title: String
    
    private let mainTitle = UILabel()
    private let targetImage = UIImageView()
    
    required init?(title: String) {
        
        self.title = title
        
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        setUp()
    }
    
    private func setUp() {

        self.translatesAutoresizingMaskIntoConstraints = false
        
        setUpTargetImage()
        setUpMainTitle()
    }
    
    private func setUpTargetImage() {
        
        targetImage.image = UIImage(named: "targetImage")
        targetImage.translatesAutoresizingMaskIntoConstraints = false
        
        let targetImageConstraints = [
        
            targetImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 1),
            targetImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
            targetImage.heightAnchor.constraint(equalToConstant: 12),
            targetImage.widthAnchor.constraint(equalToConstant: 12)
        ]
        
        self.addSubview(targetImage)
        NSLayoutConstraint.activate(targetImageConstraints)
    }
    
    private func setUpMainTitle() {
        
        mainTitle.text = title
        mainTitle.textColor = UIColor(named: "primaryBlack")
        mainTitle.numberOfLines = 1
        mainTitle.font = UIFont(name: "SFProRounded-Regular", size: 14)
        mainTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let mainTitleConstraints = [
        
            mainTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            mainTitle.leftAnchor.constraint(equalTo: targetImage.rightAnchor, constant: 8)
        ]
        
        self.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
}

final class PrimaryProfileCardK: UIView {

    var photo: String
    var name: String
    var shield: String
    var sub: String
    
    private let avatar = UIImageView()
    private let mainTitle = UILabel()
    private let ShieldImage = UIImageView()
    private let subTitle = UILabel()
    
    required init?(photo: String, name: String, shield: String, sub: String) {
        
        self.photo = photo
        self.name = name
        self.shield = shield
        self.sub = sub
        
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        setUp()
    }
    
    private func setUp() {

        self.backgroundColor = .white
        self.layer.cornerRadius = 12
        self.layer.cornerCurve = .continuous
        self.translatesAutoresizingMaskIntoConstraints = false
        
        setUpAvatar()
        setUpMainTitle()
        setUpShieldImage()
        setUpSubTitle()
    }
    
    private func setUpAvatar() {
    
        avatar.image = UIImage(named: photo)
        avatar.translatesAutoresizingMaskIntoConstraints = false
        
        let avatarConstraints = [
        
            avatar.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            avatar.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
            avatar.heightAnchor.constraint(equalToConstant: 64),
            avatar.widthAnchor.constraint(equalToConstant: 64)
        ]
        
        self.addSubview(avatar)
        NSLayoutConstraint.activate(avatarConstraints)
    }
    
    private func setUpMainTitle() {
        
        mainTitle.text = name
        mainTitle.textColor = UIColor(named: "primaryBlack")
        mainTitle.numberOfLines = 1
        mainTitle.font = UIFont(name: "SFProRounded-SemiBold", size: 20)
        mainTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let mainTitleConstraints = [
        
            mainTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 20.5),
            mainTitle.leftAnchor.constraint(equalTo: avatar.rightAnchor, constant: 16)
        ]
        
        self.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    private func setUpShieldImage() {
    
        ShieldImage.image = UIImage(named: shield)
        ShieldImage.translatesAutoresizingMaskIntoConstraints = false
        
        let shieldImageConstraints = [
        
            ShieldImage.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 5.5),
            ShieldImage.leftAnchor.constraint(equalTo: avatar.rightAnchor, constant: 16),
            ShieldImage.heightAnchor.constraint(equalToConstant: 16),
            ShieldImage.widthAnchor.constraint(equalToConstant: 16)
        ]
        
        self.addSubview(ShieldImage)
        NSLayoutConstraint.activate(shieldImageConstraints)
    }
    
    private func setUpSubTitle() {
        
        subTitle.text = sub
        subTitle.textColor = UIColor(named: "Base30")
        subTitle.numberOfLines = 1
        subTitle.font = UIFont(name: "SFProRounded-Medium", size: 16)
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let subTitleConstraints = [
        
            subTitle.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 4),
            subTitle.leftAnchor.constraint(equalTo: ShieldImage.rightAnchor, constant: 6)
        ]
        
        self.addSubview(subTitle)
        NSLayoutConstraint.activate(subTitleConstraints)
    }
        
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented")
        
    }
}

final class PrimarySettingsCardK: UIView {

var type: Bool
    var photo: String
    var name: String
    var sub: String
    var vectorImg: String
    
    private let mainImage = UIImageView()
    private let mainTitle = UILabel()
    private let subTitle = UILabel()
    private let vector = UIImageView()
    private let notificationSwitch = UISwitch()
    
    required init?(type: Bool, photo: String, nameTitle: String, sub: String, vectorImg: String) {
        
        self.type = type
        self.photo = photo
        self.name = nameTitle
        self.sub = sub
        self.vectorImg = vectorImg
        
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        setUp()
    }
    
    private func setUp() {

        self.backgroundColor = .white
        self.layer.cornerRadius = 12
        self.layer.cornerCurve = .continuous
        self.translatesAutoresizingMaskIntoConstraints = false
        
        setUpMainImg()
        setUpMainTitle()
        setUpSubTitle()
        if type {
            setUpVector()
        } else {
            setUpSwitch()
        }
    }
    
    private func setUpMainImg() {
    
        mainImage.image = UIImage(named: photo)
        mainImage.translatesAutoresizingMaskIntoConstraints = false
        
        let mainImageConstraints = [
        
            mainImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            mainImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
            mainImage.heightAnchor.constraint(equalToConstant: 24),
            mainImage.widthAnchor.constraint(equalToConstant: 24)
        ]
        
        self.addSubview(mainImage)
        NSLayoutConstraint.activate(mainImageConstraints)
    }
    
    private func setUpMainTitle() {
        
        mainTitle.text = name
        if name == "Выйти" {
            mainTitle.textColor = UIColor(named: "Red40")
        } else {
            mainTitle.textColor = UIColor(named: "primaryBlack")
        }
        mainTitle.numberOfLines = 1
        mainTitle.font = UIFont(name: "SFProRounded-Medium", size: 16)
        mainTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let mainTitleConstraints = [
        
            mainTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            mainTitle.leftAnchor.constraint(equalTo: mainImage.rightAnchor, constant: 12)
        ]
        
        self.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    private func setUpSubTitle() {
        
        subTitle.text = sub
        subTitle.textColor = UIColor(named: "Base40")
        subTitle.numberOfLines = 1
        subTitle.font = UIFont(name: "SFProRounded-Regular", size: 12)
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let subTitleConstraints = [
        
            subTitle.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 0),
            subTitle.leftAnchor.constraint(equalTo: mainImage.rightAnchor, constant: 12)
        ]
        
        self.addSubview(subTitle)
        NSLayoutConstraint.activate(subTitleConstraints)
    }
    
    private func setUpVector() {
        
        vector.image = UIImage(named: vectorImg)
        vector.translatesAutoresizingMaskIntoConstraints = false
        
        let vectorConstraints = [
        
            vector.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            vector.rightAnchor.constraint(equalTo: self.rightAnchor),
            vector.heightAnchor.constraint(equalToConstant: 8),
            vector.widthAnchor.constraint(equalToConstant: 4)
        ]
        
        self.addSubview(vector)
        NSLayoutConstraint.activate(vectorConstraints)
    }
    
    private func setUpSwitch() {
        
        notificationSwitch.transform = CGAffineTransform(scaleX: 0.82, y: 0.82)
        notificationSwitch.translatesAutoresizingMaskIntoConstraints = false
        
        let notificationSwitchConstraints = [
        
            notificationSwitch.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            notificationSwitch.rightAnchor.constraint(equalTo: self.rightAnchor)
        ]
        
        self.addSubview(notificationSwitch)
        NSLayoutConstraint.activate(notificationSwitchConstraints)
    }
        
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented")
        
    }
}

final class PrimaryPayOrCarCardK: UIView {

    var type: Bool
    var photo: String
    var name: String
    var sub: String
    var close: String
    
    private let mainImage = UIImageView()
    private let mainTitle = UILabel()
    private let subTitle = UILabel()
    private let closeImg = UIImageView()
    
    required init?(type: Bool, photo: String, nameTitle: String, sub: String, close: String) {
        
        self.type = type
        self.photo = photo
        self.name = nameTitle
        self.sub = sub
        self.close = close
        
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        setUp()
    }
    
    private func setUp() {

        self.backgroundColor = .white
        self.layer.cornerRadius = 12
        self.layer.cornerCurve = .continuous
        self.translatesAutoresizingMaskIntoConstraints = false
        
        setUpMainImg()
        setUpMainTitle()
        setUpSubTitle()
        setUpCloseImg()
    }
    
    private func setUpMainImg() {
    
        mainImage.image = UIImage(named: photo)
        mainImage.translatesAutoresizingMaskIntoConstraints = false
        

        let mainImageConstraints = [
        
            mainImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            mainImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            mainImage.heightAnchor.constraint(equalToConstant: 12),
            mainImage.widthAnchor.constraint(equalToConstant: 12)
        ]
        
        let mainImageConstraints2 = [
        
            mainImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            mainImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            mainImage.heightAnchor.constraint(equalToConstant: 24),
            mainImage.widthAnchor.constraint(equalToConstant: 24)
        ]
        
        self.addSubview(mainImage)

        if type {
            NSLayoutConstraint.activate(mainImageConstraints)
        } else {
            NSLayoutConstraint.activate(mainImageConstraints2)
        }
    }
    
    private func setUpMainTitle() {
        
        mainTitle.text = name
        mainTitle.textColor = UIColor(named: "primaryBlack")
        mainTitle.numberOfLines = 1
        mainTitle.font = UIFont(name: "SFProRounded-Medium", size: 12)
        mainTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let mainTitleConstraints = [
        
            mainTitle.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            mainTitle.leftAnchor.constraint(equalTo: mainImage.rightAnchor, constant: 6)
        ]
        
        self.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    private func setUpSubTitle() {
        
        subTitle.text = sub
        subTitle.textColor = UIColor(named: "primaryGray")
        subTitle.numberOfLines = 1
        subTitle.font = UIFont(name: "SFProRounded-Medium", size: 12)
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let subTitleConstraints = [
        
            subTitle.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            subTitle.leftAnchor.constraint(equalTo: mainTitle.rightAnchor, constant: 3)
        ]
        
        self.addSubview(subTitle)
        NSLayoutConstraint.activate(subTitleConstraints)
    }
    
    private func setUpCloseImg() {
        
        closeImg.image = UIImage(named: close)
        closeImg.translatesAutoresizingMaskIntoConstraints = false
        
        let closeImgConstraints = [
        
            closeImg.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            closeImg.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            closeImg.heightAnchor.constraint(equalToConstant: 12),
            closeImg.widthAnchor.constraint(equalToConstant: 12)
        ]
        
        self.addSubview(closeImg)
        NSLayoutConstraint.activate(closeImgConstraints)
    }
        
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented")
        
    }
}

final class PrimaryAddCardK: UIView {
    
    var photo: String
    var name: String
    var nameColor: String
    var sub: String
    var subColor: String
    var numberOfLines: Int

    
    private let mainImage = UIImageView()
    private let mainTitle = UILabel()
    private let subTitle = UILabel()

    required init?(photo: String, nameTitle: String, nameColor: String, sub: String, subColor: String, numberOfLines: Int) {
        
        self.photo = photo
        self.name = nameTitle
        self.nameColor = nameColor
        self.sub = sub
        self.subColor = subColor
        self.numberOfLines = numberOfLines
        
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        setUp()
    }
    
    private func setUp() {

        self.backgroundColor = .white
        self.layer.cornerRadius = 12
        self.layer.cornerCurve = .continuous
        self.translatesAutoresizingMaskIntoConstraints = false
        
        setUpMainImg()
        setUpMainTitle()
        setUpSubTitle()
    }
    
    private func setUpMainImg() {
    
        mainImage.image = UIImage(named: photo)
        mainImage.translatesAutoresizingMaskIntoConstraints = false
        
        let mainImageConstraints = [
        
            mainImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            mainImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            mainImage.heightAnchor.constraint(equalToConstant: 32),
            mainImage.widthAnchor.constraint(equalToConstant: 32)
        ]
        
        self.addSubview(mainImage)
        NSLayoutConstraint.activate(mainImageConstraints)
    }
    
    private func setUpMainTitle() {
        
        mainTitle.text = name
        mainTitle.textColor = UIColor(named: nameColor)
        mainTitle.numberOfLines = 1
        mainTitle.font = UIFont(name: "SFProRounded-Medium", size: 16)
        mainTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let mainTitleConstraints = [
        
            mainTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            mainTitle.leftAnchor.constraint(equalTo: mainImage.rightAnchor, constant: 16)
        ]
        
        self.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    private func setUpSubTitle() {
        
        subTitle.text = sub
        subTitle.textColor = UIColor(named: subColor)
        subTitle.numberOfLines = numberOfLines
        subTitle.font = UIFont(name: "SFProRounded-Regular", size: 12)
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let subTitleConstraints = [
        
            subTitle.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 4),
            subTitle.leftAnchor.constraint(equalTo: mainImage.rightAnchor, constant: 16),
            subTitle.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16)
        ]
        
        self.addSubview(subTitle)
        NSLayoutConstraint.activate(subTitleConstraints)
    }
        
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented")
        
    }
}
