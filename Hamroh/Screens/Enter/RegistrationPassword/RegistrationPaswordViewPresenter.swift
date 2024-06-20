//
//  RegistrationPaswordViewPresenter.swift
//  Hamroh
//
//  Created by Peter on 09.04.2024.
//

import Foundation
import UIKit

protocol RegisterPasswordViewProtocol {
    func load() -> Void
    func goNext(vc: UIViewController)
}

class RegisterPasswordViewPresenter: RegisterPasswordViewProtocol {
    
    func load() {
        // your code
    }
    
    func goNext(vc: UIViewController) {
        let nav = Navigation()
        nav.navigateTo(VC: vc, style: .push)
    }
}
