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
        self.layer.borderColor = UIColor(named: "primaryLightGray")!.cgColor
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
