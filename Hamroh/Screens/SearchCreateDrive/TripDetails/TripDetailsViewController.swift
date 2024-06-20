//
//  TripDetailsViewController.swift
//  Hamroh
//
//  Created by Peter on 09.06.2024.
//

import Foundation
import UIKit

class TripDetailsViewController: UIViewController {
    
    private let mainTitle = PrimaryTitleK(numberLines: 1, title: "Детали поездки") ?? UILabel()
    private let dateTitle = PrimaryTitleK(numberLines: 1, title: "Дата") ?? UILabel()
    private let dateTextField = PrimaryTextFieldK(title: "", height: 46) ?? UITextField()
    private let timeTitle = PrimaryTitleK(numberLines: 1, title: "Время") ?? UILabel()
    private let timeTextField = PrimaryTextFieldK(title: "", height: 46) ?? UITextField()
    private let priceTitle = PrimaryTitleK(numberLines: 1, title: "Цена за поездку") ?? UILabel()
    private let priceTextField = PrimaryTextFieldK(title: "", height: 46) ?? UITextField()
    private let peopleTitle = PrimaryTitleK(numberLines: 1, title: "Кол-во человек") ?? UILabel()
    private let peopleTextField = PrimaryTextFieldK(title: "", height: 46) ?? UITextField()
    private let gradePrice = UIImageView()
    private let commentTitle = PrimaryTitleK(numberLines: 1, title: "Комментарий к объявлению") ?? UILabel()
    private let commentTextField = UITextView() /*PrimaryTextFieldK(title: "", height: 80) ?? UITextField()*/
    private let nextButton = PrimaryButtonK(type: true, title: "Далее", height: 52) ?? UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    private func setUp() {
        
        view.backgroundColor = .white
        
        setUpTitle()
        setUpDateTitle()
        setUpDateTextField()
        setUpTimeTitle()
        setUpTimeTextField()
        setUpPriceTitle()
        setUpPriceTextField()
        setUpPeopleTitle()
        setUpPeopleTextField()
        setUpGradePrice()
        setUpNextButton()
        setUpCommentTitle()
        setUpCommentTextField()
    }
    
    private func setUpTitle() {
        
        let mainTitleConstraints = [
        
            mainTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            mainTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ]
        
        view.addSubview(mainTitle)
        NSLayoutConstraint.activate(mainTitleConstraints)
    }
    
    private func setUpDateTitle() {
        
        dateTitle.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let dateTitleConstraints = [
            
            dateTitle.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 20),
            dateTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(dateTitle)
        NSLayoutConstraint.activate(dateTitleConstraints)
    }
    
    private func setUpDateTextField() {
        
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor(named: "primaryGray")!,
            NSAttributedString.Key.font: UIFont(name: "SFProRounded-Regular", size: 12)!
        ]
        
        dateTextField.attributedPlaceholder = NSAttributedString(string: "17 Ноября",attributes: attributes)
        dateTextField.layer.borderColor = UIColor(named: "Base10")!.cgColor
        dateTextField.font = UIFont(name: "SFProRounded-Regular", size: 12)
        
        let dateTextFieldConstraints = [
            
            dateTextField.topAnchor.constraint(equalTo: dateTitle.bottomAnchor, constant: 8),
            dateTextField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            dateTextField.widthAnchor.constraint(equalToConstant: (view.frame.width - 42) / 2 )
        ]
        
        view.addSubview(dateTextField)
        NSLayoutConstraint.activate(dateTextFieldConstraints)
    }
    
    private func setUpTimeTitle() {
        
        timeTitle.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let timeTitleConstraints = [
            
            timeTitle.topAnchor.constraint(equalTo: mainTitle.bottomAnchor, constant: 20),
            timeTitle.leftAnchor.constraint(equalTo: dateTextField.rightAnchor, constant: 10)
        ]
        
        view.addSubview(timeTitle)
        NSLayoutConstraint.activate(timeTitleConstraints)
    }
    
    private func setUpTimeTextField() {
        
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor(named: "primaryGray")!,
            NSAttributedString.Key.font: UIFont(name: "SFProRounded-Regular", size: 12)!
        ]
        
        timeTextField.attributedPlaceholder = NSAttributedString(string: "20:00",attributes: attributes)
        timeTextField.layer.borderColor = UIColor(named: "Base10")!.cgColor
        timeTextField.font = UIFont(name: "SFProRounded-Regular", size: 12)
        
        let peopleTextFieldConstraints = [
            
            timeTextField.topAnchor.constraint(equalTo: timeTitle.bottomAnchor, constant: 8),
            timeTextField.leftAnchor.constraint(equalTo: dateTextField.rightAnchor, constant: 10),
            timeTextField.widthAnchor.constraint(equalToConstant: (view.frame.width - 42) / 2 )
        ]
        
        view.addSubview(timeTextField)
        NSLayoutConstraint.activate(peopleTextFieldConstraints)
    }
    
    private func setUpPriceTitle() {
        
        priceTitle.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let priceTitleConstraints = [
            
            priceTitle.topAnchor.constraint(equalTo: dateTextField.bottomAnchor, constant: 20),
            priceTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(priceTitle)
        NSLayoutConstraint.activate(priceTitleConstraints)
    }
    
    private func setUpPriceTextField() {
        
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor(named: "primaryGray")!,
            NSAttributedString.Key.font: UIFont(name: "SFProRounded-Regular", size: 12)!
        ]
        
        priceTextField.attributedPlaceholder = NSAttributedString(string: "750",attributes: attributes)
        priceTextField.layer.borderColor = UIColor(named: "Base10")!.cgColor
        priceTextField.font = UIFont(name: "SFProRounded-Regular", size: 12)
        
        let priceTextFieldConstraints = [
            
            priceTextField.topAnchor.constraint(equalTo: priceTitle.bottomAnchor, constant: 8),
            priceTextField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            priceTextField.widthAnchor.constraint(equalToConstant: (view.frame.width - 42) / 2 )
        ]
        
        view.addSubview(priceTextField)
        NSLayoutConstraint.activate(priceTextFieldConstraints)
    }
    
    private func setUpPeopleTitle() {
        
        peopleTitle.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let timeTitleConstraints = [
            
            peopleTitle.topAnchor.constraint(equalTo: timeTextField.bottomAnchor, constant: 20),
            peopleTitle.leftAnchor.constraint(equalTo: priceTextField.rightAnchor, constant: 10)
        ]
        
        view.addSubview(peopleTitle)
        NSLayoutConstraint.activate(timeTitleConstraints)
    }
    
    private func setUpPeopleTextField() {
        
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor(named: "primaryGray")!,
            NSAttributedString.Key.font: UIFont(name: "SFProRounded-Regular", size: 12)!
        ]
        
        peopleTextField.attributedPlaceholder = NSAttributedString(string: "4 взрослых",attributes: attributes)
        peopleTextField.layer.borderColor = UIColor(named: "Base10")!.cgColor
        peopleTextField.font = UIFont(name: "SFProRounded-Regular", size: 12)
        
        let peopleTextFieldConstraints = [
            
            peopleTextField.topAnchor.constraint(equalTo: peopleTitle.bottomAnchor, constant: 8),
            peopleTextField.leftAnchor.constraint(equalTo: priceTextField.rightAnchor, constant: 10),
            peopleTextField.widthAnchor.constraint(equalToConstant: (view.frame.width - 42) / 2 )
        ]
        
        view.addSubview(peopleTextField)
        NSLayoutConstraint.activate(peopleTextFieldConstraints)
    }
    
    private func setUpGradePrice() {
        
        gradePrice.image = UIImage(named: "goodPrice")
        gradePrice.translatesAutoresizingMaskIntoConstraints = false
        
        let gradePriceConstraints = [
        
            gradePrice.heightAnchor.constraint(equalToConstant: 22),
            gradePrice.widthAnchor.constraint(equalToConstant: 111),
            gradePrice.topAnchor.constraint(equalTo: priceTextField.bottomAnchor, constant: 8),
            gradePrice.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(gradePrice)
        NSLayoutConstraint.activate(gradePriceConstraints)
    }
    
    private func setUpCommentTitle() {
        
        commentTitle.font = UIFont(name: "SFProRounded-Medium", size: 14)
        
        let commentTitleConstraints = [
            
            commentTitle.topAnchor.constraint(equalTo: gradePrice.bottomAnchor, constant: 20),
            commentTitle.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16)
        ]
        
        view.addSubview(commentTitle)
        NSLayoutConstraint.activate(commentTitleConstraints)
    }
    
    private func setUpCommentTextField() {
        

        commentTextField.textColor = UIColor(named: "primaryGray")
        commentTextField.font = UIFont(name: "SFProRounded-Regular", size: 12)
        commentTextField.layer.borderWidth = 1
        commentTextField.layer.borderColor = UIColor(named: "Base10")!.cgColor
        commentTextField.layer.cornerRadius = 12
        commentTextField.backgroundColor = .white
        commentTextField.text = "Ваш комментарий"
        commentTextField.textContainer.lineFragmentPadding = 16
        commentTextField.textContainerInset = UIEdgeInsets(top: 16, left: 0, bottom: 0, right: 0)
        commentTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let commentTextFieldConstraints = [
            
            commentTextField.topAnchor.constraint(equalTo: commentTitle.bottomAnchor, constant: 8),
            commentTextField.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            commentTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            commentTextField.heightAnchor.constraint(equalToConstant: 80)
        ]
        
        view.addSubview(commentTextField)
        NSLayoutConstraint.activate(commentTextFieldConstraints)
    }
    
    private func setUpNextButton() {
        
        let nextButtonConstraints = [
        
            nextButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            nextButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ]
        
        view.addSubview(nextButton)
        NSLayoutConstraint.activate(nextButtonConstraints)
    }
}

