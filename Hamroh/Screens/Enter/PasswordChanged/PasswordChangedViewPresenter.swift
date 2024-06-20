//
//  PasswordChangedViewPresenter.swift
//  Hamroh
//
//  Created by Peter on 24.04.2024.
//

import Foundation
import UIKit

protocol PasswordChangedViewProtocol {
    func load() -> Void
    func goNext(vc: UIViewController)
}

class PasswordChangedViewPresenter: PasswordChangedViewProtocol {
    
    func load() {
        // code
    }
    
    func goNext(vc: UIViewController) {
        let nav = Navigation()
        nav.navigateTo(VC: vc, style: .fullScreen)
    }
}
