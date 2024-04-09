//
//  Kit.swift
//  Hamroh
//
//  Created by Евгений Парфененков on 04.12.2023.
//

import Foundation
import UIKit

final class PrimaryButtonK: UIButton {
    
    var height: Int
    var title: String
    var type: Bool
    
    required init?(height: Int, title: String, type: Bool) {
        
        self.height = height
        self.title = title
        self.type = type
        
        super.init(frame: CGRect(x: 0, y: 0, width: 100, height: height))
        
        setUp()
    }
    
    
    private func setUp() {
        self.setTitle(self.title, for: .normal)
    }

    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
}
