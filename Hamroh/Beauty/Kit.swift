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
        self.textColor = .black
        self.numberOfLines = numberLines
        self.font = UIFont(name: "Inter-Bold", size: 32)
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
        self.titleLabel?.font = UIFont(name: "Inter-SemiBold", size: 16)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = type ? .black : .white
        self.setTitleColor(type ? .white : .black, for: .normal)
        
        if !type {
            self.layer.borderWidth = 1
            self.layer.borderColor = UIColor(named: "buttonBorderColor")!.cgColor
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
            NSAttributedString.Key.foregroundColor: UIColor.gray,
            NSAttributedString.Key.font: UIFont(name: "Inter-Regular", size: 16)!
        ]
        
        self.attributedPlaceholder = NSAttributedString(string: title, attributes: attributes)
        self.textColor = .black
        self.font = UIFont(name: "Inter-Regular", size: 16)
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(named: "textFieldBorderColor")!.cgColor
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
